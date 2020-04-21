<?php

namespace App\Http\Controllers;

use App\Golongan;
use App\Rekening;
use App\Pelanggan;
use Carbon\Carbon;
use Illuminate\Http\Request;

class PelangganController extends Controller
{
    //
    public function get_total_golongan(Request $req)
    {
        $golongan = Golongan::with('tarif')->where('golongan_ID', $req->get('golongan'))->first();

        $data = [];
        $detail = [];
        $periode_sebelumnya = Carbon::parse($req->get('tahun'))->addMonths(-1)->format("m/Y");
        $perkiraan_sisa = 0;
        if(substr($periode_sebelumnya, 0, 2) < 12){
            $pelanggan_akhir_bulan_taun_lalu = Pelanggan::where('pelanggan_tgl_pasang', '<=', Carbon::parse($req->get('tahun'))->addYear(-1)->format("Y-12-t"))->where('golongan_ID', $req->get('golongan'))->count();
            $pelanggan_bulan_ini_taun_lalu = Pelanggan::where('pelanggan_tgl_pasang', '<=', Carbon::parse($req->get('tahun'))->addYear(-1)->format("Y-m-t"))->where('golongan_ID', $req->get('golongan'))->count();
            $perkiraan_sisa = $pelanggan_akhir_bulan_taun_lalu - $pelanggan_bulan_ini_taun_lalu;
        }
        $rekening = Rekening::where('cBlth', $periode_sebelumnya)->where('cKdGol', $req->get('golongan'))->get()->groupBy('nPakai')->map(function ($q) {
            return [
                'pakai' => $q->first()->nPakai,
                'jumlah' => $q->count()
            ];
        });
        $jumlah_pelanggan = $rekening->sum('jumlah');
        foreach ($rekening as $key => $row) {
            $harga = 0;
            $sisa = $row['pakai'];
            $m3 = $row['pakai'];

            if($m3 <= $golongan->tarif[0]->nPakai2){
                $harga += $tarif->nMin*$tarif->nHarga;
            }else{
                $i=0;
                foreach ($golongan->tarif as $tarif) {
                    $min = $tarif->nPakai1;
                    $max = $tarif->nPakai2;
                    $hrg = $tarif->nHarga;

                    if($i==0)
                        $dif = $max-($min==0?0:($min));
                    else
                        $dif = $max-($min==0?0:($min-1));

                    $harga += ($m3<$max?$sisa*$hrg:$dif*$hrg);
                    $sisa = (($m3-$max)>=0?$m3-$max:0);

                    $i++;
                }
            }

            array_push($detail, [
                'pakai' => $row['pakai'],
                'harga' => $harga,
                'pelanggan' => $row['jumlah'],
                'air' => $row['pakai'] * $row['jumlah'],
                'penjualan' => $harga * $row['jumlah'],
                'persentase' => $row['jumlah'] / $jumlah_pelanggan
            ]);
        }
        $detail = collect($detail);
        $jumlah_terjual = $detail->sum('air');
        $rencana_penjualan = $detail->sum('penjualan');
        array_push($data,[
            'perkiraan_sisa' => $perkiraan_sisa,
            'jumlah_pelanggan' => $jumlah_pelanggan,
            'rata_konsumsi' => number_format($jumlah_terjual / $detail->sum('pelanggan'), 2),
            'jumlah_terjual' => number_format($jumlah_terjual, 2),
            'rencana_penjualan' => number_format($rencana_penjualan, 2),
            'rata_harga_air' => number_format($rencana_penjualan / $jumlah_terjual, 2),
            'detail' => $detail
        ]);
        return $data;
    }
}
