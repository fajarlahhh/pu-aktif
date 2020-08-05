<?php

namespace App\Http\Controllers;

use App\SumberDana;
use App\Pembangunan;
use App\Pemeliharaan;
use App\KabupatenKota;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RekapperkabupatenkotaController extends Controller
{
    //
    public function index(Request $req)
	{
        $kabupaten_kota = KabupatenKota::all();
        $sumber_dana = SumberDana::orderBy('sumber_dana_nama')->get();
        $tahun = $req->tahun? $req->tahun: date('Y');
        $dana = $req->dana? $req->dana: 'semua';
        $infrastruktur = $req->infrastruktur? $req->infrastruktur: 'semua';
        $jenis  = $req->jenis ? $req->jenis : 'semua';

        $pembangunan = Pembangunan::with('kabupaten_kota')->where('pembangunan_tahun', $tahun);
        $pemeliharaan = Pemeliharaan::where('pemeliharaan_tahun', $tahun);

        if ($jenis != 'semua') {
            $pembangunan = $pembangunan->where('pembangunan_jenis', $jenis);
            $pemeliharaan = $pemeliharaan->where('pemeliharaan_jenis', $jenis);
        }
        if ($infrastruktur != 'semua') {
            $pembangunan = $pembangunan->where('infrastruktur_jenis', $infrastruktur);
            $pemeliharaan = $pemeliharaan->where('infrastruktur_jenis', $infrastruktur);
        }
        if ($dana != 'semua') {
            $pembangunan = $pembangunan->where('sumber_dana_id', $dana);
            $pemeliharaan = $pemeliharaan->where('sumber_dana_id', $dana);
        }

        $pembangunan = $pembangunan->groupBy('kabupaten_kota_id')->get([
            'kabupaten_kota_id',
            DB::raw('count(pembangunan_id) jumlah'),
            DB::raw('sum(pembangunan_nilai) nilai')
        ]);
        $pemeliharaan = $pemeliharaan->groupBy('kabupaten_kota_id')->get([
            'kabupaten_kota_id',
            DB::raw('count(pemeliharaan_id) jumlah'),
            DB::raw('sum(pemeliharaan_nilai) nilai')
        ]);

        $laporan_pembangunan = [];
        foreach ($kabupaten_kota as $row) {
            array_push($laporan_pembangunan, [
                'kabupaten_kota' => $row->kabupaten_kota_nama,
                'jumlah' => $pembangunan->filter(function ($q) use ($row){
                    return $q->kabupaten_kota_id == $row->kabupaten_kota_id;
                })->first()['jumlah']?: 0,
                'nilai' => $pembangunan->filter(function ($q) use ($row){
                    return $q->kabupaten_kota_id == $row->kabupaten_kota_id;
                })->first()['nilai']?: 0,
            ]);
        }

        $laporan_pemeliharaan = [];
        foreach ($kabupaten_kota as $row) {
            array_push($laporan_pemeliharaan, [
                'kabupaten_kota' => $row->kabupaten_kota_nama,
                'jumlah' => $pemeliharaan->filter(function ($q) use ($row){
                    return $q->kabupaten_kota_id == $row->kabupaten_kota_id;
                })->first()['jumlah']?: 0,
                'nilai' => $pemeliharaan->filter(function ($q) use ($row){
                    return $q->kabupaten_kota_id == $row->kabupaten_kota_id;
                })->first()['nilai']?: 0,
            ]);
        }
        return view('pages.laporan.rekapperkabupatenkota.index', [
            'tahun' => $tahun,
            'dana' => $dana,
            'jenis' => $jenis,
            'kabupaten_kota' => $kabupaten_kota,
            'sumber_dana' => $sumber_dana,
            'laporan_pembangunan' => collect($laporan_pembangunan),
            'laporan_pemeliharaan' => collect($laporan_pemeliharaan),
            'infrastruktur' => $infrastruktur
        ]);
    }

    public function cetak(Request $req)
	{
        $kabupaten_kota = KabupatenKota::all();
        $sumber_dana = SumberDana::orderBy('sumber_dana_nama')->get();
        $tahun = $req->tahun? $req->tahun: date('Y');
        $dana = $req->dana? $req->dana: 'semua';
        $infrastruktur = $req->infrastruktur? $req->infrastruktur: 'semua';
        $jenis  = $req->jenis ? $req->jenis : 'semua';

        $pembangunan = Pembangunan::with('kabupaten_kota')->where('pembangunan_tahun', $tahun);
        $pemeliharaan = Pemeliharaan::where('pemeliharaan_tahun', $tahun);

        if ($jenis != 'semua') {
            $pembangunan = $pembangunan->where('pembangunan_jenis', $jenis);
            $pemeliharaan = $pemeliharaan->where('pemeliharaan_jenis', $jenis);
        }
        if ($infrastruktur != 'semua') {
            $pembangunan = $pembangunan->where('infrastruktur_jenis', $infrastruktur);
            $pemeliharaan = $pemeliharaan->where('infrastruktur_jenis', $infrastruktur);
        }
        if ($dana != 'semua') {
            $pembangunan = $pembangunan->where('sumber_dana_id', $dana);
            $pemeliharaan = $pemeliharaan->where('sumber_dana_id', $dana);
        }

        $pembangunan = $pembangunan->groupBy('kabupaten_kota_id')->get([
            'kabupaten_kota_id',
            DB::raw('count(pembangunan_id) jumlah'),
            DB::raw('sum(pembangunan_nilai) nilai')
        ]);
        $pemeliharaan = $pemeliharaan->groupBy('kabupaten_kota_id')->get([
            'kabupaten_kota_id',
            DB::raw('count(pemeliharaan_id) jumlah'),
            DB::raw('sum(pemeliharaan_nilai) nilai')
        ]);

        $laporan_pembangunan = [];
        foreach ($kabupaten_kota as $row) {
            array_push($laporan_pembangunan, [
                'kabupaten_kota' => $row->kabupaten_kota_nama,
                'jumlah' => $pembangunan->filter(function ($q) use ($row){
                    return $q->kabupaten_kota_id == $row->kabupaten_kota_id;
                })->first()['jumlah']?: 0,
                'nilai' => $pembangunan->filter(function ($q) use ($row){
                    return $q->kabupaten_kota_id == $row->kabupaten_kota_id;
                })->first()['nilai']?: 0,
            ]);
        }

        $laporan_pemeliharaan = [];
        foreach ($kabupaten_kota as $row) {
            array_push($laporan_pemeliharaan, [
                'kabupaten_kota' => $row->kabupaten_kota_nama,
                'jumlah' => $pemeliharaan->filter(function ($q) use ($row){
                    return $q->kabupaten_kota_id == $row->kabupaten_kota_id;
                })->first()['jumlah']?: 0,
                'nilai' => $pemeliharaan->filter(function ($q) use ($row){
                    return $q->kabupaten_kota_id == $row->kabupaten_kota_id;
                })->first()['nilai']?: 0,
            ]);
        }
        return view('layouts.print', [
            'halaman' => 'pages.laporan.rekapperkabupatenkota.cetak',
            'tahun' => $tahun,
            'dana' => $dana,
            'jenis' => $jenis,
            'kabupaten_kota' => $kabupaten_kota,
            'sumber_dana' => $sumber_dana,
            'laporan_pembangunan' => collect($laporan_pembangunan),
            'laporan_pemeliharaan' => collect($laporan_pemeliharaan),
            'infrastruktur' => $infrastruktur,
            'judul' => '<h4>Rekap Per Kabupaten/Kota'.($jenis != 'semua'? ' ('.$jenis.')': '' ).'<br><small>Tahun '.$tahun.' '.($infrastruktur  == 'semua'? 'Semua Infrastruktur': $infrastruktur).', Sumber Dana : '.($dana  == 'semua'? 'Semua Sumber Dana': $sumber_dana->filter(function($q) use ($dana){
                return $q->sumber_dana_id == $dana;
            })->first()->sumber_dana_nama).'</small></h4>'
        ]);
    }
}
