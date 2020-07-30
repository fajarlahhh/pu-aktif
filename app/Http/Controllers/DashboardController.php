<?php

namespace App\Http\Controllers;

use App\Das;
use App\Spam;
use App\Jalan;
use App\Sumur;
use App\Embung;
use App\MataAir;
use App\Drainase;
use App\Jembatan;
use App\Bendungan;
use App\Pembangunan;
use App\Pemeliharaan;
use App\DaerahIrigasi;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function index()
    {
        $jalan = Jalan::get([
            DB::raw('jalan_nama as nama'),
            DB::raw('"blue" as warna'),
            DB::raw('"Jalan" as jenis'),
            DB::raw('ST_Y(marker) as longitude'),
            DB::raw('ST_X(marker) as latitude')
        ]);
        $jembatan = Jembatan::get([
            DB::raw('jembatan_nama as nama'),
            DB::raw('"indigo" as warna'),
            DB::raw('"Jembatan" as jenis'),
            DB::raw('ST_Y(marker) as longitude'),
            DB::raw('ST_X(marker) as latitude')
        ]);
        $das = Das::get([
            DB::raw('das_nama as nama'),
            DB::raw('"lime" as warna'),
            DB::raw('"Daerah aliran sungai" as jenis'),
            DB::raw('ST_Y(marker) as longitude'),
            DB::raw('ST_X(marker) as latitude')
        ]);
        $drainase = Drainase::get([
            DB::raw('drainase_nama as nama'),
            DB::raw('"green" as warna'),
            DB::raw('"Drainase" as jenis'),
            DB::raw('ST_Y(marker) as longitude'),
            DB::raw('ST_X(marker) as latitude')
        ]);
        $spam = Spam::get([
            DB::raw('spam_nama_unit as nama'),
            DB::raw('"orange" as warna'),
            DB::raw('"SPAM" as jenis'),
            DB::raw('ST_Y(marker) as longitude'),
            DB::raw('ST_X(marker) as latitude')
        ]);
        $sumur = Sumur::get([
            DB::raw('sumur_kode as nama'),
            DB::raw('"yellow" as warna'),
            DB::raw('"Sumur" as jenis'),
            DB::raw('ST_Y(marker) as longitude'),
            DB::raw('ST_X(marker) as latitude')
        ]);
        $bendungan = Bendungan::get([
            DB::raw('bendungan_nama as nama'),
            DB::raw('"red" as warna'),
            DB::raw('"Bendungan" as jenis'),
            DB::raw('ST_Y(marker) as longitude'),
            DB::raw('ST_X(marker) as latitude')
        ]);
        $di = DaerahIrigasi::get([
            DB::raw('daerah_irigasi_nama as nama'),
            DB::raw('"pink" as warna'),
            DB::raw('"Daerah Irigasi" as jenis'),
            DB::raw('ST_Y(marker) as longitude'),
            DB::raw('ST_X(marker) as latitude')
        ]);
        $embung = Embung::get([
            DB::raw('embung_nama as nama'),
            DB::raw('"black" as warna'),
            DB::raw('"Embung" as jenis'),
            DB::raw('ST_Y(marker) as longitude'),
            DB::raw('ST_X(marker) as latitude')
        ]);
        $mataair = MataAir::get([
            'mata_air_nama',
            DB::raw('"grey" as warna'),
            DB::raw('"Mata Air" as jenis'),
            DB::raw('ST_Y(marker) as longitude'),
            DB::raw('ST_X(marker) as latitude')
        ]);

        $point = collect($jalan)->merge(collect($jembatan))->merge(collect($das))->merge(collect($drainase))->merge(collect($spam))->merge(collect($sumur))->merge(collect($bendungan))->merge(collect($di))->merge(collect($embung))->merge(collect($mataair));

        $pembangunan = Pembangunan::with('kabupaten_kota')->where('pembangunan_tahun', date('Y'))->get();
        $pembangunan_group_by_infrastruktur = $pembangunan->groupBy('infrastruktur_jenis')->map(function ($q) {
            return [
                'infrastruktur_jenis'  => $q->first()->infrastruktur_jenis,
                'pembangunan_nilai'  => $q->sum('pembangunan_nilai'),
            ];
        });
        $pemeliharaan = Pemeliharaan::with('kabupaten_kota')->where('pemeliharaan_tahun', date('Y'))->get();
        $pemeliharaan_group_by_infrastruktur = $pemeliharaan->groupBy('infrastruktur_jenis')->map(function ($q) {
            return [
                'infrastruktur_jenis'  => $q->first()->infrastruktur_jenis,
                'pemeliharaan_nilai'  => $q->sum('pemeliharaan_nilai'),
            ];
        });
        $rekap_pembangunan = [];
        foreach ($pembangunan_group_by_infrastruktur as $row) {
            array_push($rekap_pembangunan,[
                "name" => $row['infrastruktur_jenis'],
                "y" => $row['pembangunan_nilai'],
                "nilai" => number_format($row['pembangunan_nilai'], 2)
            ]);
        }
        $rekap_pemeliharaan = [];
        foreach ($pemeliharaan_group_by_infrastruktur as $row) {
            array_push($rekap_pemeliharaan,[
                "name" => $row->infrastruktur_jenis,
                "y" => $row->pemeliharaan_nilai,
                "nilai" => number_format($row->pemeliharaan_nilai, 2)
            ]);
        }

        $pembangunan_group_by_kabupaten = $pembangunan->groupBy('kabupaten_kota_id')->map(function ($q) {
            return [
                'kabupaten_kota'  => $q->first()->kabupaten_kota['kabupaten_kota_nama'],
                'biaya'  => $q->sum('pembangunan_nilai'),
            ];
        });
        $pemeliharaan_group_by_kabupaten = $pemeliharaan->groupBy('kabupaten_kota_id')->map(function ($q) {
            return [
                'kabupaten_kota'  => $q->first()->kabupaten_kota['kabupaten_kota_nama'],
                'biaya'  => $q->sum('pemeliharaan_nilai'),
            ];
        });
        $rekap_biaya_perkabupaten = [];
        foreach (collect($pembangunan_group_by_kabupaten)->merge(collect($pemeliharaan_group_by_kabupaten))->groupBy('kabupaten_kota')->map(function ($q) {
            return [
                'kabupaten_kota'  => $q->first()['kabupaten_kota'],
                'jumlah_biaya'  => $q->sum('biaya'),
            ];
        }) as $row) {
            array_push($rekap_biaya_perkabupaten,[
                'name' => $row['kabupaten_kota'],
                'y' => $row['jumlah_biaya'],
                'nilai' => number_format($row['jumlah_biaya'],2)
            ]);
        }

		return view('pages.dashboard.index', [
            'point' => $point,
            'jalan' => $jalan,
            'jembatan' => $jembatan,
            'das' => $das,
            'drainase' => $drainase,
            'spam' => $spam,
            'sumur' => $sumur,
            'bendungan' => $bendungan,
            'di' => $di,
            'embung' => $embung,
            'mataair' => $mataair,
            'pembangunan' => $pembangunan,
            'pemeliharaan' => $pemeliharaan,
            'rekap_pembangunan' => $rekap_pembangunan,
            'rekap_pemeliharaan' => $rekap_pemeliharaan,
            'rekap_biaya_perkabupaten' => $rekap_biaya_perkabupaten
        ]);
    }
}
