<?php

namespace App\Http\Controllers;

use App\Jalan;
use App\Jembatan;
use App\KabupatenKota;

class DashboardController extends Controller
{
    public function index()
    {
        $kab_kota_di = KabupatenKota::withCount('daerah_irigasi')->get();
        $daerahirigasi = [];
        foreach ($kab_kota_di as $kab_kota) {
            array_push($daerahirigasi,[
                "name" => $kab_kota->kabupaten_kota_nama,
                "y" => $kab_kota->daerah_irigasi_count
            ]);
        }

        $kab_kota_embung = KabupatenKota::with(['kecamatan.kelurahan_desa' => function($q){
            $q->withCount('embung');
        }])->get();
        $embung = [];
        foreach ($kab_kota_embung as $kab_kota) {
            $jumlah = 0;
            foreach ($kab_kota->kecamatan as $kecamatan) {
                foreach ($kecamatan->kelurahan_desa as $kelurahan) {
                    $jumlah += $kelurahan->embung_count;
                }
            }
            array_push($embung,[
                "name" => $kab_kota->kabupaten_kota_nama,
                "y" => $jumlah
            ]);
        }

        $jalan = Jalan::count();
        $jembatan = Jembatan::count();
		return view('pages.dashboard.index', [
            'jalan' => $jalan,
            'jembatan' => $jembatan,
            'daerahirigasi' => $daerahirigasi,
            'embung' => $embung,
        ]);
    }
}
