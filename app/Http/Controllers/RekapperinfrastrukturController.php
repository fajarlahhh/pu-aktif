<?php

namespace App\Http\Controllers;

use App\SumberDana;
use App\Pembangunan;
use App\Pemeliharaan;
use App\KabupatenKota;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RekapperinfrastrukturController extends Controller
{
    //
    public function index(Request $req)
	{
        $tahun = $req->tahun? $req->tahun: date('Y');
        $dana = $req->dana? $req->dana: 'semua';
        $wilayah = $req->wilayah? $req->wilayah: 'semua';

        $pembangunan = Pembangunan::where('pembangunan_tahun', $tahun);
        $pemeliharaan = Pemeliharaan::where('pemeliharaan_tahun', $tahun);

        if ($wilayah != 'semua') {
            $pembangunan = $pembangunan->where('kabupaten_kota_id', $wilayah);
            $pemeliharaan = $pemeliharaan->where('kabupaten_kota_id', $wilayah);
        }
        if ($dana != 'semua') {
            $pembangunan = $pembangunan->where('sumber_dana_id', $dana);
            $pemeliharaan = $pemeliharaan->where('sumber_dana_id', $dana);
        }

        $pembangunan = $pembangunan->groupBy('infrastruktur_jenis')->get([
            DB::raw('"pembangunan" jenis'),
            'infrastruktur_jenis as infrastruktur',
            DB::raw('count(pembangunan_id) jumlah'),
            DB::raw('sum(pembangunan_nilai) nilai')
        ]);
        $pemeliharaan = $pemeliharaan->groupBy('infrastruktur')->get([
            DB::raw('"pemeliharaan" jenis'),
            'infrastruktur_jenis as infrastruktur',
            DB::raw('count(pemeliharaan_id) jumlah'),
            DB::raw('sum(pemeliharaan_nilai) nilai')
        ]);
        $infrastruktur = ['Jalan', 'Jembatan', 'DAS', 'Drainase', 'SPAM', 'Sumur', 'Bendungan', 'Daerah Irigasi', 'Embung', 'Mata Air'];
        $laporan_pembangunan = [];
        foreach ($infrastruktur as $row) {
            array_push($laporan_pembangunan, [
                'infrastruktur' => $row,
                'jumlah' => $pembangunan->filter(function ($q) use ($row){
                    return $q->infrastruktur == $row;
                })->first()['jumlah']?: 0,
                'nilai' => $pembangunan->filter(function ($q) use ($row){
                    return $q->infrastruktur == $row;
                })->first()['nilai']?: 0,
            ]);
        }

        $laporan_pemeliharaan = [];
        foreach ($infrastruktur as $row) {
            array_push($laporan_pemeliharaan, [
                'infrastruktur' => $row,
                'jumlah' => $pemeliharaan->filter(function ($q) use ($row){
                    return $q->infrastruktur == $row;
                })->first()['jumlah']?: 0,
                'nilai' => $pemeliharaan->filter(function ($q) use ($row){
                    return $q->infrastruktur == $row;
                })->first()['nilai']?: 0,
            ]);
        }
        $kabupaten_kota = KabupatenKota::all();
        $sumber_dana = SumberDana::orderBy('sumber_dana_nama')->get();
        return view('pages.laporan.rekapperinfrastruktur.index', [
            'tahun' => $tahun,
            'dana' => $dana,
            'wilayah' => $wilayah,
            'kabupaten_kota' => $kabupaten_kota,
            'sumber_dana' => $sumber_dana,
            'laporan_pembangunan' => collect($laporan_pembangunan),
            'laporan_pemeliharaan' => collect($laporan_pemeliharaan),
            'infrastruktur' => $infrastruktur
        ]);
    }

    public function cetak(Request $req)
	{
        $tahun = $req->tahun? $req->tahun: date('Y');
        $dana = $req->dana? $req->dana: 'semua';
        $wilayah = $req->wilayah? $req->wilayah: 'semua';

        $pembangunan = Pembangunan::where('pembangunan_tahun', $tahun);
        $pemeliharaan = Pemeliharaan::where('pemeliharaan_tahun', $tahun);

        if ($wilayah != 'semua') {
            $pembangunan = $pembangunan->where('kabupaten_kota_id', $wilayah);
            $pemeliharaan = $pemeliharaan->where('kabupaten_kota_id', $wilayah);
        }
        if ($dana != 'semua') {
            $pembangunan = $pembangunan->where('sumber_dana_id', $dana);
            $pemeliharaan = $pemeliharaan->where('sumber_dana_id', $dana);
        }

        $pembangunan = $pembangunan->groupBy('infrastruktur_jenis')->get([
            DB::raw('"pembangunan" jenis'),
            'infrastruktur_jenis as infrastruktur',
            DB::raw('count(pembangunan_id) jumlah'),
            DB::raw('sum(pembangunan_nilai) nilai')
        ]);
        $pemeliharaan = $pemeliharaan->groupBy('infrastruktur')->get([
            DB::raw('"pemeliharaan" jenis'),
            'infrastruktur_jenis as infrastruktur',
            DB::raw('count(pemeliharaan_id) jumlah'),
            DB::raw('sum(pemeliharaan_nilai) nilai')
        ]);
        $infrastruktur = ['Jalan', 'Jembatan', 'DAS', 'Drainase', 'SPAM', 'Sumur', 'Bendungan', 'Daerah Irigasi', 'Embung', 'Mata Air'];
        $laporan_pembangunan = [];
        foreach ($infrastruktur as $row) {
            array_push($laporan_pembangunan, [
                'infrastruktur' => $row,
                'jumlah' => $pembangunan->filter(function ($q) use ($row){
                    return $q->infrastruktur == $row;
                })->first()['jumlah']?: 0,
                'nilai' => $pembangunan->filter(function ($q) use ($row){
                    return $q->infrastruktur == $row;
                })->first()['nilai']?: 0,
            ]);
        }

        $laporan_pemeliharaan = [];
        foreach ($infrastruktur as $row) {
            array_push($laporan_pemeliharaan, [
                'infrastruktur' => $row,
                'jumlah' => $pemeliharaan->filter(function ($q) use ($row){
                    return $q->infrastruktur == $row;
                })->first()['jumlah']?: 0,
                'nilai' => $pemeliharaan->filter(function ($q) use ($row){
                    return $q->infrastruktur == $row;
                })->first()['nilai']?: 0,
            ]);
        }
        $kabupaten_kota = KabupatenKota::all();
        $sumber_dana = SumberDana::orderBy('sumber_dana_nama')->get();
        return view('layouts.print', [
            'halaman' => 'pages.laporan.rekapperinfrastruktur.cetak',
            'tahun' => $tahun,
            'dana' => $dana,
            'wilayah' => $wilayah,
            'kabupaten_kota' => $kabupaten_kota,
            'sumber_dana' => $sumber_dana,
            'laporan_pembangunan' => collect($laporan_pembangunan),
            'laporan_pemeliharaan' => collect($laporan_pemeliharaan),
            'infrastruktur' => $infrastruktur,
            'judul' => '<h4>Rekap Per Infrastruktur<br><small>Tahun '.$tahun.' '.($wilayah  == 'semua'? 'Semua Kabupaten/Kota': $kabupaten_kota->filter(function($q) use ($wilayah){
                return $q->kabupaten_kota_id == $wilayah;
            })->first()->kabupaten_kota_nama).', Sumber Dana : '.($dana  == 'semua'? 'Semua Sumber Dana': $sumber_dana->filter(function($q) use ($dana){
                return $q->sumber_dana_id == $dana;
            })->first()->sumber_dana_nama).'</small></h4>'
        ]);
    }
}
