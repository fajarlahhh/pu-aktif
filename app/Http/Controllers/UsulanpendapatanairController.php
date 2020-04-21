<?php

namespace App\Http\Controllers;

use PDF;
use App\Akun;
use App\Bagian;
use App\Periode;
use App\Wilayah;
use App\Golongan;
use App\Rekening;
use App\Pelanggan;
use Carbon\Carbon;
use App\UsulanSambungBaru;
use Illuminate\Support\Str;
use App\UsulanPendapatanAir;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\UsulanPendapatanAirPeriode;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Redis;
use Illuminate\Support\Facades\Validator;

class UsulanpendapatanairController extends Controller
{
    //
    private $bulan = array('Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember');

    public function index(Request $req)
	{
        $verifikasi = $req->verifikasi? $req->verifikasi: 0;
        $tahun = $req->tahun? $req->tahun: date('Y');
        $tipe = $req->tipe? $req->tipe: 0;
        $usulan = UsulanPendapatanAir::with('pegawai')->with('periode');
        switch ($tipe) {
            case '1':
                $usulan = $usulan->onlyTrashed();
                break;
            case '2':
                $usulan = $usulan->withTrashed();
                break;
        }
        $usulan = $usulan->where(function($q) use ($req){
            $q->whereHas('akun', function ($q) use ($req){
                $q->where('akun_keterangan', 'like', '%'.$req->cari.'%');
            })->orWhereHas('golongan', function ($q) use ($req){
                $q->orWhere('golongan_ID', 'like', '%'.$req->cari.'%')->orWhere('golongan_nama', 'like', '%'.$req->cari.'%');
            })->orWhere('wilayah_nama', 'like', '%'.$req->cari.'%')->orWhere('usulan_pendapatan_air_keterangan', 'like', '%'.$req->cari.'%');
        })->where('periode_tahun', $tahun);

        if($verifikasi != 2)
            $usulan = $usulan->where('verifikasi', $verifikasi);

        $usulan = $usulan->paginate(10);

        $usulan->appends(['verifikasi' => $verifikasi, 'tahun' => $tahun, 'tipe' => $tipe, 'cari' => $req->cari]);
        return view('pages.usulan.usulanpendapatanair.index', [
            'data' => $usulan,
            'i' => ($req->input('page', 1) - 1) * 10,
            'verifikasi' => $verifikasi,
            'tahun' => $tahun,
            'tipe' => $tipe,
            'cari' => $req->cari,
            'periode' => Periode::withTrashed()->get(),
            'periode_aktif' => Periode::find($tahun)
        ]);
    }

	public function tambah($step = 0, Request $req)
	{
        switch ($step) {
            case 0:
                return view('pages.usulan.usulanpendapatanair.form', [
                    'step' => $step,
                    'aksi' => 'Tambah',
                    'wilayah' => Wilayah::all(),
                    'periode' => collect(json_decode(Redis::get('periode_aktif'))),
                    'pendapatan' => Akun::where('akun_tipe', 'p')->whereRaw('length(akun_kode) = 5')->get(),
                    'golongan' => Golongan::all()
                ]);
            break;
            case 1:
                $validator = Validator::make($req->all(),
                    [
                        'periode_tahun' => 'required',
                        'wilayah_nama' => 'required',
                        'akun_kode' => 'required',
                        'golongan_id' => 'required'
                    ],[
                        'periode_tahun.required'  => 'Tahun tidak boleh kosong',
                        'wilayah_nama.required'  => 'Wilayah tidak boleh kosong',
                        'akun_kode.required'  => 'Akun tidak boleh kosong',
                        'golongan_id.required'  => 'Golongan tidak boleh kosong'
                    ]
                );
                if ($validator->fails()) {
                    alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
                    return redirect()->back()->withInput()->with('error', $validator->messages()->all());
                }
                try {
                    $tahun = Periode::find($req->get('periode_tahun'));
                    if($tahun == null){
                        alert()->error('Tambah Data', 'Periode '.$req->get('periode_tahun').' belum dibuka');
                        return redirect()->back()->withInput();
                    }

                    $tahun_lalu = $req->get('periode_tahun') - 1;
                    $periode_rekening_akhir = Rekening::whereYear('dTglCatat', '=', $tahun_lalu)->latest("dTglCatat")->first()->cBlth;
                    $rekening_terakhir_tahun_lalu = Rekening::where("cBlth", $periode_rekening_akhir)->where('cKdGol', $req->get('golongan_id'))->where('cWilayah', $req->get('wilayah_nama'))->get();

                    $periode = explode("/", $periode_rekening_akhir);
                    $bulan = $periode[0];
                    $tahun = $periode[1];

                    return view('pages.usulan.usulanpendapatanair.form', [
                        'jumlah_pelanggan' => $rekening_terakhir_tahun_lalu->count(),
                        'akhir_periode' => $periode_rekening_akhir,
                        'step' => $step,
                        'aksi' => 'Tambah',
                        'next_periode' => Carbon::parse($tahun."-".$bulan."-01")->addMonth(1)->format("m/Y"),
                        'data' => $req,
                        'akun' => Akun::findOrFail($req->get('akun_kode')),
                        'golongan' => Golongan::with('tarif')->where('golongan_ID', $req->get('golongan_id'))->first(),
                        'i' => 0
                    ]);
                }catch(\Exception $e){
                    alert()->error('Tambah Data', $e->getMessage());
                    return redirect('usulanpendapatanair/tambah');
                }
            break;

            case 2:
                $validator = Validator::make($req->all(),
                    [
                        'periode_tahun' => 'required',
                        'wilayah_nama' => 'required',
                        'akun_kode' => 'required',
                        'golongan_id' => 'required',
                        'jumlah_pelanggan' => 'required'
                    ],[
                        'periode_tahun.required'  => 'Tahun tidak boleh kosong',
                        'wilayah_nama.required'  => 'Wilayah tidak boleh kosong',
                        'akun_kode.required'  => 'Akun tidak boleh kosong',
                        'golongan_id.required'  => 'Golongan tidak boleh kosong',
                        'golongan_id.required'  => 'Jumlah Pelanggan tidak boleh kosong'
                    ]
                );
                if ($validator->fails()) {
                    alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
                    return redirect('/usulanpendapatanair/tambah')->withInput()->with('error', $validator->messages()->all());
                }
                try {
                    $jumlah_pelanggan = str_replace(',', '', $req->get('jumlah_pelanggan')) + ($req->get('jumlah_pelanggan_perkiraan')? str_replace(',', '', $req->get('jumlah_pelanggan_perkiraan')): 0);

                    $golongan = Golongan::with('tarif')->where('golongan_ID', $req->get('golongan_id'))->first();

                    $rekening_terakhir_tahun_lalu = Rekening::where("cBlth", $req->akhir_periode)->where('cKdGol', $req->get('golongan_id'))->where('cWilayah', $req->get('wilayah_nama'))->get();

                    $rekening_group_pakai = $rekening_terakhir_tahun_lalu->groupBy('nPakai')->map(function ($q) {
                        return [
                            'pakai' => $q->first()->nPakai,
                            'jumlah' => $q->count()
                        ];
                    });
                    $jumlah_rekening_group_pakai = $rekening_group_pakai->sum('jumlah');

                    $detail = [];
                    foreach ($rekening_group_pakai as $key => $row) {
                        $harga = 0;
                        $sisa = $row['pakai'];
                        $m3 = $row['pakai'];

                        if($m3 <= $golongan->tarif[0]->nPakai2){
                            $harga += $golongan->tarif[0]->nMin * $golongan->tarif[0]->nHarga;
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
                            'penjualan' => $harga * $row['jumlah']
                        ]);
                    }
                    $detail = collect($detail);
                    $jumlah_terjual = $detail->sum('air');
                    $harga_air = $detail->sum('penjualan');

                    return view('pages.usulan.usulanpendapatanair.form', [
                        'rata_konsumsi' => $jumlah_terjual / $detail->sum('pelanggan'),
                        'jumlah_terjual' => $jumlah_terjual,
                        'harga_air' => $harga_air,
                        'rata_harga_air' => $harga_air / $jumlah_terjual,
                        'step' => $step,
                        'aksi' => 'Tambah',
                        'golongan' => $golongan,
                        'data' => $req,
                        'i' => 0
                    ]);
                }catch(\Exception $e){
                    alert()->error('Tambah Data', $e->getMessage());
                    return redirect('usulanpendapatanair/tambah');
                }
            break;
            case 3:
                $validator = Validator::make($req->all(),
                    [
                        'periode_tahun' => 'required',
                        'wilayah_nama' => 'required',
                        'akun_kode' => 'required',
                        'golongan_id' => 'required',
                        'jumlah_pelanggan' => 'required'
                    ],[
                        'periode_tahun.required'  => 'Tahun tidak boleh kosong',
                        'wilayah_nama.required'  => 'Wilayah tidak boleh kosong',
                        'akun_kode.required'  => 'Akun tidak boleh kosong',
                        'golongan_id.required'  => 'Golongan tidak boleh kosong',
                        'golongan_id.required'  => 'Jumlah Pelanggan tidak boleh kosong'
                    ]
                );
                if ($validator->fails()) {
                    alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
                    return redirect('/usulanpendapatanair/tambah')->withInput()->with('error', $validator->messages()->all());
                }
                try{
                    $sambung_baru = UsulanSambungBaru::where('golongan_id', $req->golongan_id)->where('wilayah_nama', $req->wilayah_nama)->with('periode')->with('paket')->get();
                    return view('pages.usulan.usulanpendapatanair.form', [
                        'bulan' => $this->bulan,
                        'usulan_sambung_baru' => $sambung_baru,
                        'step' => $step,
                        'data' => $req,
                        'aksi' => 'Tambah',
                        'jumlah_pelanggan' => $req->jumlah_pelanggan,
                        'sambung_baru' => 0,
                        'sambung_pasif' => 0,
                        'sambung_kembali' => 0,
                        'jumlah_terjual' => 0,
                        'rencana_penjualan' => 0,
                    ]);
                }catch(\Exception $e){
                    alert()->error('Tambah Data', $e->getMessage());
                    return redirect('usulanpendapatanair/tambah');
                }
            break;
            default:
                return view('pages.usulan.usulanpendapatanair.form', [
                    'step' => $step,
                    'aksi' => 'Tambah',
                    'wilayah' => Wilayah::all(),
                    'periode' => collect(json_decode(Redis::get('periode_aktif'))),
                    'pendapatan' => Akun::where('akun_tipe', 'p')->whereRaw('length(akun_kode) = 5')->get(),
                    'golongan' => Golongan::with('tarif')->get()
                ]);
                break;
        }
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'periode_tahun' => 'required',
                'akun_kode' => 'required',
                'golongan_id' => 'required',
                'wilayah_nama' => 'required'
            ],[
                'periode_tahun.required'  => 'Tahun tidak boleh kosong',
                'akun_kode.required'  => 'Akun tidak boleh kosong',
                'golongan_id.required'  => 'Golongan tidak boleh kosong',
                'wilayah_nama.required'  => 'Wilayah tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect('/usulanpendapatanair/tambah')->withInput()->with('error', $validator->messages()->all());
        }

        try{

            $tahun = Periode::find($req->get('periode_tahun'));
            if($tahun == null){
                alert()->error('Tambah Data', 'Periode '.$req->get('periode_tahun').' belum dibuka');
                return redirect()->back()->withInput();
            }
            DB::transaction(function () use($req) {
                $usulan = new UsulanPendapatanAir();
                $usulan->akun_kode = $req->get('akun_kode');
                $usulan->golongan_id = $req->get('golongan_id');
                $usulan->wilayah_nama = str_replace(',', '', $req->get('wilayah_nama'));
                $usulan->usulan_pendapatan_air_keterangan = str_replace(',', '', $req->get('usulan_pendapatan_air_keterangan'));
                $usulan->periode_tahun = $req->get('periode_tahun');
                $usulan->verifikasi = 0;
                $usulan->operator = Auth::id();
                $usulan->save();

                $periode = [];
                for ($i=0; $i < 12; $i++) {
                    $periode[] = [
                        'usulan_pendapatan_air_id' => $usulan->usulan_pendapatan_air_id,
                        'usulan_pendapatan_air_periode_bulan' => $i + 1,
                        'usulan_pendapatan_air_periode_jumlah_pelanggan' => str_replace(",", "", $req->get('usulan_pendapatan_air_periode_jumlah_pelanggan')[$i]),
                        'usulan_pendapatan_air_periode_sambung_baru' => str_replace(",", "", $req->get('usulan_pendapatan_air_periode_sambung_baru')[$i]),
                        'usulan_pendapatan_air_periode_sambung_pasif' => str_replace(",", "", $req->get('usulan_pendapatan_air_periode_sambung_pasif')[$i]),
                        'usulan_pendapatan_air_periode_sambung_kembali' => str_replace(",", "", $req->get('usulan_pendapatan_air_periode_sambung_kembali')[$i]),
                        'usulan_pendapatan_air_periode_sambung_aktif_akhir_bulan' => str_replace(",", "", $req->get('usulan_pendapatan_air_periode_sambung_aktif_akhir_bulan')[$i]),
                        'usulan_pendapatan_air_periode_rata_konsumsi' => str_replace(",", "", $req->get('usulan_pendapatan_air_periode_rata_konsumsi')[$i]),
                        'usulan_pendapatan_air_periode_jumlah_terjual' => str_replace(",", "", $req->get('usulan_pendapatan_air_periode_jumlah_terjual')[$i]),
                        'usulan_pendapatan_air_periode_rencana_penjualan' => str_replace(",", "", $req->get('usulan_pendapatan_air_periode_rencana_penjualan')[$i]),
                        'usulan_pendapatan_air_periode_rata_harga_air' => str_replace(",", "", $req->get('usulan_pendapatan_air_periode_rata_harga_air')[$i]),
                    ];
                }
                UsulanPendapatanAirPeriode::insert($periode);
            });

            toast('Berhasil menambah usulan pendapatan '.$req->get('periode_tahun'), 'success')->autoClose(2000);
            return redirect($req->get('redirect')? $req->get('redirect'): 'usulanpendapatanair');
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
            return redirect()->back()->withInput();
        }

    }

	public function edit(Request $req)
	{
        try{
            $id = Crypt::decryptString($req->get('id'));
            $data = UsulanPendapatanAir::with('periode')->where('usulan_pendapatan_air_id', $id)->first();
            return view('pages.usulan.usulanpendapatanair.form', [
                'data' => $data,
                'back' => Str::contains(url()->previous(), ['usulanpendapatanair/tambah', 'usulanpendapatanair/edit'])? '/usulanpendapatanair': url()->previous(),
                'usulan_sambung_baru' => UsulanSambungBaru::where('golongan_id', $data->golongan_id)->where('wilayah_nama', $data->wilayah_nama)->with('periode')->with('paket')->get(),
                'periode' => Periode::all(),
                'aksi' => 'Edit',
                'periode' => collect(json_decode(Redis::get('periode_aktif'))),
                'pendapatan' => Akun::where('akun_tipe', 'p')->whereRaw('length(akun_kode) = 8')->get(),
                'sambung_baru' => 0,
                'sambung_pasif' => 0,
                'sambung_kembali' => 0,
                'jumlah_terjual' => 0,
                'rencana_penjualan' => 0,
                'bulan' => $this->bulan
            ]);
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'usulanpendapatanair');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'periode_tahun' => 'required',
                'akun_kode' => 'required'
            ],[
                'periode_tahun.required'  => 'Tahun tidak boleh kosong',
                'akun_kode.required'  => 'Akun tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

		try{
            $tahun = Periode::find($req->get('periode_tahun'));
            if($tahun == null){
                alert()->error('Edit Data', 'Periode '.$req->get('periode_tahun').' belum dibuka');
                return redirect()->back()->withInput();
            }

			$usulan = UsulanPendapatanAir::findOrFail($req->get('ID'));
            $usulan->akun_kode = $req->get('akun_kode');
            $usulan->usulan_pendapatan_air_keterangan = str_replace(',', '', $req->get('usulan_pendapatan_air_keterangan'));
            $usulan->periode_tahun = $req->get('periode_tahun');
            $usulan->operator = Auth::id();
            $usulan->save();

            UsulanPendapatanAirPeriode::where('usulan_pendapatan_air_id', $req->get('ID'))->delete();
            $periode = [];
            for ($i=0; $i < 12; $i++) {
                $periode[] = [
                    'usulan_pendapatan_air_id' => $usulan->usulan_pendapatan_air_id,
                    'usulan_pendapatan_air_periode_bulan' => $i + 1,
                    'usulan_pendapatan_air_periode_jumlah_pelanggan' => str_replace(",", "", $req->get('usulan_pendapatan_air_periode_jumlah_pelanggan')[$i]),
                    'usulan_pendapatan_air_periode_sambung_baru' => str_replace(",", "", $req->get('usulan_pendapatan_air_periode_sambung_baru')[$i]),
                    'usulan_pendapatan_air_periode_sambung_pasif' => str_replace(",", "", $req->get('usulan_pendapatan_air_periode_sambung_pasif')[$i]),
                    'usulan_pendapatan_air_periode_sambung_kembali' => str_replace(",", "", $req->get('usulan_pendapatan_air_periode_sambung_kembali')[$i]),
                    'usulan_pendapatan_air_periode_sambung_aktif_akhir_bulan' => str_replace(",", "", $req->get('usulan_pendapatan_air_periode_sambung_aktif_akhir_bulan')[$i]),
                    'usulan_pendapatan_air_periode_rata_konsumsi' => str_replace(",", "", $req->get('usulan_pendapatan_air_periode_rata_konsumsi')[$i]),
                    'usulan_pendapatan_air_periode_jumlah_terjual' => str_replace(",", "", $req->get('usulan_pendapatan_air_periode_jumlah_terjual')[$i]),
                    'usulan_pendapatan_air_periode_rencana_penjualan' => str_replace(",", "", $req->get('usulan_pendapatan_air_periode_rencana_penjualan')[$i]),
                    'usulan_pendapatan_air_periode_rata_harga_air' => str_replace(",", "", $req->get('usulan_pendapatan_air_periode_rata_harga_air')[$i]),
                ];
            }
            UsulanPendapatanAirPeriode::insert($periode);

            toast('Berhasil mengedit usulan program '.$req->get('periode_tahun'), 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): 'usulanpendapatanair');
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
    }

	public function detail(Request $req)
	{
        $id = Crypt::decryptString($req->get('id'));
        $jenis = $req->get('jenis');
        $error = null;
        $data = null;
        try{
            $data = UsulanPendapatanAir::withTrashed()->with('periode')->findOrFail($id);
        }catch(\Exception $e){
            $error = $e->getMessage();
        }
        if($jenis == 'cetak'){
            $pdf = PDF::loadView('layouts.print', [
                'data' => $data,
                'error' => $error,
                'jenis' => $jenis,
                'halaman' => 'pages.usulan.usulanpendapatanair.detail',
                'bulan' => $this->bulan,
                'sambung_baru' => 0,
                'sambung_pasif' => 0,
                'sambung_kembali' => 0,
                'jumlah_terjual' => 0,
                'rencana_penjualan' => 0,
                'judul' => 'CETAK USULAN PENDAPATAN AIR'
            ], [], [
                'format' => 'A4-L'
            ]);
            return $pdf->stream('CETAK USULAN PENDAPATAN AIR '.$data->usulan_pendapatan_air_id);
        }else{
            return view('pages.usulan.usulanpendapatanair.detail',[
                'data' => $data,
                'error' => $error,
                'jenis' => $jenis,
                'sambung_baru' => 0,
                'sambung_pasif' => 0,
                'sambung_kembali' => 0,
                'jumlah_terjual' => 0,
                'rencana_penjualan' => 0,
                'bulan' => $this->bulan
            ]);
        }
    }

	public function hapus(Request $req)
	{
		try{
            $id = Crypt::decryptString($req->get('id'));
            UsulanPendapatanAir::findOrFail($id)->delete();
            toast('Berhasil menghapus usulan sambung baru', 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}

	public function restore(Request $req)
	{
		try{
            $id = Crypt::decryptString($req->get('id'));
            UsulanPendapatanAir::withTrashed()->findOrFail($id)->restore();
            toast('Berhasil mengembalikan usulan sambung baru', 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Restore Data', $e->getMessage());
		}
	}
}
