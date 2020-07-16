<?php

namespace App\Http\Controllers;

use App\Kecamatan;
use App\SumberDana;
use App\Infrastruktur;
use App\KabupatenKota;
use App\KelurahanDesa;
use App\AspirasiMasyarakat;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class AspirasimasyarakatController extends Controller
{
    //
    public function index(Request $req)
	{
        $tahun = $req->tahun? $req->tahun: date('Y');
        $infrastruktur = $req->infrastruktur? $req->infrastruktur: 'semua';
        $dana = $req->dana? $req->dana: 'semua';
        $data = AspirasiMasyarakat::where('aspirasi_masyarakat_tahun', $tahun)->where(function($q) use($req){
            $q->orWhereHas('kelurahan_desa', function($q) use ($req){
                $q->orWhere('kelurahan_desa_nama', 'like', '%'.$req->cari.'%')->orWhereHas('kecamatan', function($q) use ($req){
                    $q->orWhere('kecamatan_nama', 'like', '%'.$req->cari.'%')->orWhereHas('kabupaten_kota', function($q) use ($req){
                        $q->orWhere('kabupaten_kota_nama', 'like', '%'.$req->cari.'%');
                    });
                });
            })->orWhere('aspirasi_masyarakat_penanggung_jawab', 'like', '%'.$req->cari.'%')->orWhere('aspirasi_masyarakat_deskripsi_kegiatan', 'like', '%'.$req->cari.'%');
        });

        if ($infrastruktur != 'semua') {
            $data = $data->where('infrastruktur_nama', $infrastruktur);
        }
        if ($dana != 'semua') {
            $data = $data->where('sumber_dana_nama', $dana);
        }

        $data = $data->paginate(10);

        $data->appends(['cari' => $req->cari]);
        return view('pages.infrastruktur.aspirasimasyarakat.index', [
            'tahun' => $tahun,
            'infrastruktur' => $infrastruktur,
            'dana' => $dana,
            'data_infrastruktur' => Infrastruktur::orderBy('infrastruktur_nama')->get(),
            'data_sumber_dana' => SumberDana::orderBy('sumber_dana_nama')->get(),
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'cari' => $req->cari
        ]);
    }

	public function tambah(Request $req)
	{
        return view('pages.infrastruktur.aspirasimasyarakat.form', [
            'aksi' => 'tambah',
            'map' => [],
            'desa' => KelurahanDesa::with('kecamatan.kabupaten_kota')->orderBy('kelurahan_desa_nama')->get(),
            'data_infrastruktur' => Infrastruktur::orderBy('infrastruktur_nama')->get(),
            'data_sumber_dana' => SumberDana::orderBy('sumber_dana_nama')->get(),
            'back' => Str::contains(url()->previous(), ['aspirasimasyarakat/tambah', 'aspirasimasyarakat/edit'])? url('/aspirasimasyarakat'): url()->previous(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'aspirasi_masyarakat_deskripsi_kegiatan' => 'required',
                'aspirasi_masyarakat_tahun' => 'required',
                'aspirasi_masyarakat_nilai' => 'required',
                'aspirasi_masyarakat_penanggung_jawab' => 'required',
                'infrastruktur_nama' => 'required',
                'sumber_dana_nama' => 'required'
            ],[
                'aspirasi_masyarakat_deskripsi_kegiatan.required'  => 'Deskripsi Kegiatan tidak boleh kosong',
                'aspirasi_masyarakat_tahun.required'  => 'Tahun tidak boleh kosong',
                'aspirasi_masyarakat_nilai.required'  => 'Nilai tidak boleh kosong',
                'aspirasi_masyarakat_penanggung_jawab.required'  => 'Penanggung Jawab tidak boleh kosong',
                'infrastruktur_nama.required'  => 'Jenis Infrastruktur tidak boleh kosong',
                'sumber_dana_nama.required'  => 'Sumber Dana tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
            $data = new AspirasiMasyarakat();
            $data->aspirasi_masyarakat_deskripsi_kegiatan = $req->get('aspirasi_masyarakat_deskripsi_kegiatan');
            $data->aspirasi_masyarakat_tahun = $req->get('aspirasi_masyarakat_tahun');
            $data->aspirasi_masyarakat_nilai = str_replace(',', '', $req->get('aspirasi_masyarakat_nilai'));
            $data->aspirasi_masyarakat_penanggung_jawab = $req->get('aspirasi_masyarakat_penanggung_jawab');
            $data->aspirasi_masyarakat_spesifikasi = $req->get('aspirasi_masyarakat_spesifikasi');
            $data->aspirasi_masyarakat_keterangan = $req->get('aspirasi_masyarakat_keterangan');
            $data->infrastruktur_nama = $req->get('infrastruktur_nama');
            $data->sumber_dana_nama = $req->get('sumber_dana_nama');
            $data->kelurahan_desa_id = $req->get('kelurahan_desa_id');
            if($req->get('marker')){
                $point = explode(',', $req->get('marker'));
                $data->marker = new Point($point[1], $point[0]);
            }
            if($req->get('polygon')){
                $coordinate = [];
                if($req->get('polygon')){
                    foreach (explode(';', $req->get('polygon')) as $longlat) {
                        if($longlat){
                            array_push($coordinate, [
                                (float) explode(',', $longlat)[1],
                                (float) explode(',', $longlat)[0]
                            ]);
                        }
                    }
                    array_push($coordinate, [
                        (float) explode(',', $req->get('polygon'))[1],
                        (float) explode(',', $req->get('polygon'))[0]
                    ]);
                }
                $data->polygon = new Polygon([
                    new LineString(collect($coordinate)->map(function($point){
                        return new Point($point[0], $point[1]);
                    })->toArray())
                ]);
            }
            if($req->get('polyline')){
                $coordinate = [];
                if($req->get('polyline')){
                    foreach (explode(';', $req->get('polyline')) as $longlat) {
                        if($longlat){
                            array_push($coordinate, [
                                (float) explode(',', $longlat)[1],
                                (float) explode(',', $longlat)[0]
                            ]);
                        }
                    }
                }
                $data->polyline = new LineString(collect($coordinate)->map(function($point){
                     return new Point($point[0], $point[1]);
                })->toArray());
            }
            $data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil menambah aspirasi masyarakat', 'success')->autoClose(2000);
            return redirect($req->get('redirect')? $req->get('redirect'): route('aspirasimasyarakat'));
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
            return redirect()->back()->withInput();
		}
	}

	public function edit(Request $req)
	{
        try{
            $data = AspirasiMasyarakat::findOrFail($req->id);
            $polygon = [];
            if($data->polygon){
                foreach ($data->polygon[0] as $lineString) {
                    array_push($polygon, [
                        $lineString->getLng(), $lineString->getLat()
                    ]);
                }
            }
            $polyline = [];
            if($data->polyline){
                foreach ($data->polyline as $point) {
                    array_push($polyline, [
                        $point->getLng(), $point->getLat()
                    ]);
                }
            }
            return view('pages.infrastruktur.aspirasimasyarakat.form', [
                'aksi' => 'edit',
                'data' => $data,
                'map' => [
                    'marker' => $data->marker? [
                        'long' => $data->marker->getLng(),
                        'lat' => $data->marker->getLat()
                    ]: [],
                    'polygon' => $polygon,
                    'polyline' => $polyline
                ],
                'desa' => KelurahanDesa::with('kecamatan.kabupaten_kota')->orderBy('kelurahan_desa_nama')->get(),
                'data_infrastruktur' => Infrastruktur::orderBy('infrastruktur_nama')->get(),
                'data_sumber_dana' => SumberDana::orderBy('sumber_dana_nama')->get(),
                'back' => Str::contains(url()->previous(), ['aspirasimasyarakat/tambah', 'aspirasimasyarakat/edit'])? url('/aspirasimasyarakat'): url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'aspirasimasyarakat');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'aspirasi_masyarakat_deskripsi_kegiatan' => 'required',
                'aspirasi_masyarakat_tahun' => 'required',
                'aspirasi_masyarakat_nilai' => 'required',
                'aspirasi_masyarakat_penanggung_jawab' => 'required',
                'infrastruktur_nama' => 'required',
                'sumber_dana_nama' => 'required'
            ],[
                'aspirasi_masyarakat_deskripsi_kegiatan.required'  => 'Deskripsi Kegiatan tidak boleh kosong',
                'aspirasi_masyarakat_tahun.required'  => 'Tahun tidak boleh kosong',
                'aspirasi_masyarakat_nilai.required'  => 'Nilai tidak boleh kosong',
                'aspirasi_masyarakat_penanggung_jawab.required'  => 'Penanggung Jawab tidak boleh kosong',
                'infrastruktur_nama.required'  => 'Jenis Infrastruktur tidak boleh kosong',
                'sumber_dana_nama.required'  => 'Sumber Dana tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = AspirasiMasyarakat::findOrFail($req->get('id'));
            $data->aspirasi_masyarakat_deskripsi_kegiatan = $req->get('aspirasi_masyarakat_deskripsi_kegiatan');
            $data->aspirasi_masyarakat_tahun = $req->get('aspirasi_masyarakat_tahun');
            $data->aspirasi_masyarakat_nilai = str_replace(',', '', $req->get('aspirasi_masyarakat_nilai'));
            $data->aspirasi_masyarakat_penanggung_jawab = $req->get('aspirasi_masyarakat_penanggung_jawab');
            $data->aspirasi_masyarakat_spesifikasi = $req->get('aspirasi_masyarakat_spesifikasi');
            $data->aspirasi_masyarakat_keterangan = $req->get('aspirasi_masyarakat_keterangan');
            $data->infrastruktur_nama = $req->get('infrastruktur_nama');
            $data->sumber_dana_nama = $req->get('sumber_dana_nama');
            $data->kelurahan_desa_id = $req->get('kelurahan_desa_id');
            if($req->get('marker')){
                $point = explode(',', $req->get('marker'));
                $data->marker = new Point($point[1], $point[0]);
            }
            if($req->get('polygon')){
                $coordinate = [];
                if($req->get('polygon')){
                    foreach (explode(';', $req->get('polygon')) as $longlat) {
                        if($longlat){
                            array_push($coordinate, [
                                (float) explode(',', $longlat)[1],
                                (float) explode(',', $longlat)[0]
                            ]);
                        }
                    }
                    array_push($coordinate, [
                        (float) explode(',', $req->get('polygon'))[1],
                        (float) explode(',', $req->get('polygon'))[0]
                    ]);
                }
                $data->polygon = new Polygon([
                    new LineString(collect($coordinate)->map(function($point){
                        return new Point($point[0], $point[1]);
                    })->toArray())
                ]);
            }
            if($req->get('polyline')){
                $coordinate = [];
                if($req->get('polyline')){
                    foreach (explode(';', $req->get('polyline')) as $longlat) {
                        if($longlat){
                            array_push($coordinate, [
                                (float) explode(',', $longlat)[1],
                                (float) explode(',', $longlat)[0]
                            ]);
                        }
                    }
                }
                $data->polyline = new LineString(collect($coordinate)->map(function($point){
                     return new Point($point[0], $point[1]);
                })->toArray());
            }
            $data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil mengedit aspirasi masyarakat', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('aspirasimasyarakat'));
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
    }

    public function index_laporan(Request $req)
	{
        $tahun = $req->tahun? $req->tahun: date('Y');
        $dana = $req->dana? $req->dana: 'semua';
        $wilayah = $req->wilayah? $req->wilayah: 'semua';

        $data = Kecamatan::with(['kelurahan_desa.aspirasi_masyarakat' => function($q){
            $q->select('kelurahan_desa_id', 'infrastruktur_nama', DB::raw('count(kelurahan_desa_id) infrastruktur_jumlah'), DB::raw('sum(aspirasi_masyarakat_nilai) aspirasi_masyarakat_nilai'))->groupBy('kelurahan_desa_id', 'infrastruktur_nama');
        }])->whereHas('kelurahan_desa', function($q) use ($tahun){
            $q->with('aspirasi_masyarakat')->whereHas('aspirasi_masyarakat', function($q1) use ($tahun){
                return $q1->where('aspirasi_masyarakat_tahun', $tahun)->groupBy('infrastruktur_nama');
            });
        });

        if ($wilayah != 'semua') {
            $data = $data->where('kabupaten_kota_id', $wilayah);
        }
        if ($dana != 'semua') {
            $data = $data->where('sumber_dana_nama', $dana);
        }

        $data = $data->get();

        $laporan = [];
        foreach ($data as $kecamatan) {
            foreach ($kecamatan->kelurahan_desa as $kelurahan) {
                foreach ($kelurahan->aspirasi_masyarakat as $am) {
                    array_push($laporan, [
                        'kecamatan' => $kecamatan->kecamatan_nama,
                        'kelurahan' => $kelurahan->kelurahan_desa_nama,
                        'infrastruktur_nama' => $am->infrastruktur_nama,
                        'infrastruktur_jumlah' => $am->infrastruktur_jumlah,
                        'aspirasi_masyarakat_nilai' => $am->aspirasi_masyarakat_nilai
                    ]);
                }
            }
        }
        return view('pages.laporan.aspirasimasyarakat.index', [
            'tahun' => $tahun,
            'dana' => $dana,
            'wilayah' => $wilayah,
            'data_infrastruktur' => Infrastruktur::orderBy('infrastruktur_nama')->get(),
            'kabupaten_kota' => KabupatenKota::all(),
            'data_sumber_dana' => SumberDana::orderBy('sumber_dana_nama')->get(),
            'laporan' => $laporan,
            'i' => 0,
            'total_biaya' => 0,
            'total_infrastruktur' => 0,
        ]);
    }

    public function cetak(Request $req)
	{
        $tahun = $req->tahun? $req->tahun: date('Y');
        $dana = $req->dana? $req->dana: 'semua';
        $wilayah = $req->wilayah? $req->wilayah: 'semua';

        $data = Kecamatan::with(['kelurahan_desa.aspirasi_masyarakat' => function($q){
            $q->select('kelurahan_desa_id', 'infrastruktur_nama', DB::raw('count(kelurahan_desa_id) infrastruktur_jumlah'), DB::raw('sum(aspirasi_masyarakat_nilai) aspirasi_masyarakat_nilai'))->groupBy('kelurahan_desa_id', 'infrastruktur_nama');
        }])->whereHas('kelurahan_desa', function($q) use ($tahun){
            $q->with('aspirasi_masyarakat')->whereHas('aspirasi_masyarakat', function($q1) use ($tahun){
                return $q1->where('aspirasi_masyarakat_tahun', $tahun)->groupBy('infrastruktur_nama');
            });
        });

        if ($wilayah != 'semua') {
            $data = $data->where('kabupaten_kota_id', $wilayah);
        }
        if ($dana != 'semua') {
            $data = $data->where('sumber_dana_nama', $dana);
        }

        $data = $data->get();

        $laporan = [];
        foreach ($data as $kecamatan) {
            foreach ($kecamatan->kelurahan_desa as $kelurahan) {
                foreach ($kelurahan->aspirasi_masyarakat as $am) {
                    array_push($laporan, [
                        'kecamatan' => $kecamatan->kecamatan_nama,
                        'kelurahan' => $kelurahan->kelurahan_desa_nama,
                        'infrastruktur_nama' => $am->infrastruktur_nama,
                        'infrastruktur_jumlah' => $am->infrastruktur_jumlah,
                        'aspirasi_masyarakat_nilai' => $am->aspirasi_masyarakat_nilai
                    ]);
                }
            }
        }
        return view('layouts.print', [
            'halaman' => 'pages.laporan.aspirasimasyarakat.cetak',
            'judul' => '<strong>Laporan Aspirasi Masyarakat</strong><br>'.($dana == 'semua'? 'Semua Jenis Dana': $dana).' '.($wilayah == 'semua'? 'Seluruh Kabupaten/Kota': KabupatenKota::findOrFail($wilayah)->kabupaten_kota_nama).' tahun '.$tahun,
            'laporan' => $laporan,
            'i' => 0,
            'total_biaya' => 0,
            'total_infrastruktur' => 0,
        ]);
    }

	public function hapus($id)
	{
		try{
            $data = AspirasiMasyarakat::findOrFail($id);
            $data->delete();
            toast('Berhasil menghapus aspirasi masyarakat '.$data->aspirasi_masyarakat_deskripsi_kegiatan, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
