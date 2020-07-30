<?php

namespace App\Http\Controllers;

use App\Jalan;
use App\Jembatan;
use App\Pembangunan;
use App\Pemeliharaan;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function index()
    {
        $pembangunan = Pembangunan::select('infrastruktur_jenis', DB::raw('count(pembangunan_id) as infrastruktur_jumlah'), DB::raw('sum(pembangunan_nilai) as pembangunan_nilai'))->where('pembangunan_tahun', date('Y'))->groupBy('infrastruktur_jenis')->get();
        $pemeliharaan = Pemeliharaan::select('infrastruktur_jenis', DB::raw('count(pemeliharaan_id) as infrastruktur_jumlah'), DB::raw('sum(pemeliharaan_nilai) as pemeliharaan_nilai'))->where('pemeliharaan_tahun', date('Y'))->groupBy('infrastruktur_jenis')->get();

        $rekap_pembangunan = [];
        foreach ($pembangunan as $row) {
            array_push($rekap_pembangunan,[
                "name" => $row->infrastruktur_jenis,
                "y" => $row->pembangunan_nilai,
                "nilai" => number_format($row->pembangunan_nilai, 2)
            ]);
        }
        $rekap_pemeliharaan = [];
        foreach ($pemeliharaan as $row) {
            array_push($rekap_pemeliharaan,[
                "name" => $row->infrastruktur_jenis,
                "y" => $row->pemeliharaan_nilai,
                "nilai" => number_format($row->pemeliharaan_nilai, 2)
            ]);
        }

        $jalan = Jalan::count();
        $jembatan = Jembatan::count();
		return view('pages.dashboard.index', [
            'pembangunan' => $pembangunan,
            'map' => [],
            'pemeliharaan' => $pemeliharaan,
            'rekap_pembangunan' => $rekap_pembangunan,
            'rekap_pemeliharaan' => $rekap_pemeliharaan,
        ]);
    }
}
