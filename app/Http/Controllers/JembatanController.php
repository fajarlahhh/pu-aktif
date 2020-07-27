<?php

namespace App\Http\Controllers;

use App\Jalan;
use App\Jembatan;
use App\KabupatenKota;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Grimzy\LaravelMysqlSpatial\Types\Point;
use Grimzy\LaravelMysqlSpatial\Types\Polygon;
use Grimzy\LaravelMysqlSpatial\Types\LineString;

class JembatanController extends Controller
{
    //
    public function index(Request $req)
	{
        $data = Jembatan::whereHas('jalan', function($q) use ($req){
            $q->orWhere('jalan_nama', 'like', '%'.$req->cari.'%');
        })->orWhereHas('kabupaten_kota', function($q) use ($req){
            $q->orWhere('kabupaten_kota_nama', 'like', '%'.$req->cari.'%');
        })->orWhere('jembatan_nama', 'like', '%'.$req->cari.'%')->orWhere('jembatan_nomor', 'like', '%'.$req->cari.'%')->orWhere('jembatan_keterangan', 'like', '%'.$req->cari.'%')->paginate(10);

        $data->appends(['cari' => $req->cari]);
        return view('pages.datainduk.binamarga.jembatan.index', [
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'cari' => $req->cari
        ]);
    }

	public function tambah(Request $req)
	{
        return view('pages.datainduk.binamarga.jembatan.form', [
            'aksi' => 'tambah',
            'map' => [],
            'jalan' => Jalan::orderBy('jalan_nama')->get(),
            'kabupaten_kota' => KabupatenKota::all(),
            'back' => Str::contains(url()->previous(), ['jembatan/tambah', 'jembatan/edit'])? '/jembatan': url()->previous(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'jembatan_nama' => 'required',
                'jembatan_nomor' => 'required'
            ],[
                'jembatan_nama.required'  => 'Nama Jembatan tidak boleh kosong',
                'jembatan_nomor.required'  => 'Nomor Jembatan tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
            $data = new Jembatan();
            $data->jembatan_nomor = $req->get('jembatan_nomor');
            $data->jembatan_nama = $req->get('jembatan_nama');
            $data->jembatan_dimensi_panjang = str_replace(',', '', $req->get('jembatan_dimensi_panjang'));
            $data->jembatan_dimensi_lebar = str_replace(',', '', $req->get('jembatan_dimensi_lebar'));
            $data->jembatan_dimensi_bentang = str_replace(',', '', $req->get('jembatan_dimensi_bentang'));
            $data->jembatan_bangunan_atas_tipe = str_replace(',', '', $req->get('jembatan_bangunan_atas_tipe'));
            $data->jembatan_bangunan_atas_kondisi = str_replace(',', '', $req->get('jembatan_bangunan_atas_kondisi'));
            $data->jembatan_bangunan_bawah_tipe = str_replace(',', '', $req->get('jembatan_bangunan_bawah_tipe'));
            $data->jembatan_bangunan_bawah_kondisi = str_replace(',', '', $req->get('jembatan_bangunan_bawah_kondisi'));
            $data->jembatan_bangunan_pondasi_tipe = str_replace(',', '', $req->get('jembatan_bangunan_pondasi_tipe'));
            $data->jembatan_bangunan_pondasi_kondisi = str_replace(',', '', $req->get('jembatan_bangunan_pondasi_kondisi'));
            $data->jembatan_bangunan_lantai_tipe = str_replace(',', '', $req->get('jembatan_bangunan_lantai_tipe'));
            $data->jembatan_bangunan_lantai_kondisi = str_replace(',', '', $req->get('jembatan_bangunan_lantai_kondisi'));
            $data->jembatan_keterangan = $req->get('jembatan_keterangan');
            $data->jalan_id = $req->get('jalan_id');
            $data->kabupaten_kota_id = $req->get('kabupaten_kota_id');
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
            $data->kewenangan_provinsi = $req->get('kewenangan_provinsi')? $req->get('kewenangan_provinsi'): 0;
            $data->save();
            toast('Berhasil menambah jembatan', 'success')->autoClose(2000);
            return redirect($req->get('redirect')? $req->get('redirect'): route('jembatan'));
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous()->withInput(): 'embung');
		}
	}

	public function edit(Request $req)
	{
        try{
            $data = Jembatan::findOrFail($req->get('id'));

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
            return view('pages.datainduk.binamarga.jembatan.form', [
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
                'jalan' => Jalan::orderBy('jalan_nama')->get(),
                'kabupaten_kota' => KabupatenKota::all(),
                'back' => Str::contains(url()->previous(), ['jembatan/tambah', 'jembatan/edit'])? '/jembatan': url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous()->withInput(): 'jembatan');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'jembatan_nama' => 'required',
                'jembatan_nomor' => 'required'
            ],[
                'jembatan_nama.required'  => 'Nama Jembatan tidak boleh kosong',
                'jembatan_nomor.required'  => 'Nomor Jembatan tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = Jembatan::findOrFail($req->get('id'));
            $data->jembatan_nomor = $req->get('jembatan_nomor');
            $data->jembatan_nama = $req->get('jembatan_nama');
            $data->jembatan_dimensi_panjang = $req->get('jembatan_dimensi_panjang')? str_replace(',', '', $req->get('jembatan_dimensi_panjang')): 0;
            $data->jembatan_dimensi_lebar = $req->get('jembatan_dimensi_lebar')? str_replace(',', '', $req->get('jembatan_dimensi_lebar')): 0;
            $data->jembatan_dimensi_bentang = $req->get('jembatan_dimensi_bentang')? str_replace(',', '', $req->get('jembatan_dimensi_bentang')): 0;
            $data->jembatan_bangunan_atas_tipe = $req->get('jembatan_bangunan_atas_tipe')? str_replace(',', '', $req->get('jembatan_bangunan_atas_tipe')): 0;
            $data->jembatan_bangunan_atas_kondisi = $req->get('jembatan_bangunan_atas_kondisi')? str_replace(',', '', $req->get('jembatan_bangunan_atas_kondisi')): 0;
            $data->jembatan_bangunan_bawah_tipe = $req->get('jembatan_bangunan_bawah_tipe')? str_replace(',', '', $req->get('jembatan_bangunan_bawah_tipe')): 0;
            $data->jembatan_bangunan_bawah_kondisi = $req->get('jembatan_bangunan_bawah_kondisi')? str_replace(',', '', $req->get('jembatan_bangunan_bawah_kondisi')): 0;
            $data->jembatan_bangunan_pondasi_tipe = $req->get('jembatan_bangunan_pondasi_tipe')? str_replace(',', '', $req->get('jembatan_bangunan_pondasi_tipe')): 0;
            $data->jembatan_bangunan_pondasi_kondisi = $req->get('jembatan_bangunan_pondasi_kondisi')? str_replace(',', '', $req->get('jembatan_bangunan_pondasi_kondisi')): 0;
            $data->jembatan_bangunan_lantai_tipe = $req->get('jembatan_bangunan_lantai_tipe')? str_replace(',', '', $req->get('jembatan_bangunan_lantai_tipe')): 0;
            $data->jembatan_bangunan_lantai_kondisi = $req->get('jembatan_bangunan_lantai_kondisi')? str_replace(',', '', $req->get('jembatan_bangunan_lantai_kondisi')): 0;
            $data->jembatan_keterangan = $req->get('jembatan_keterangan');
            $data->jalan_id = $req->get('jalan_id');
            $data->kabupaten_kota_id = $req->get('kabupaten_kota_id');
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
                $data->polyline = null;
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
                $data->polygon = null;
            }
            $data->pengguna_id = Auth::id();
            $data->kewenangan_provinsi = $req->get('kewenangan_provinsi')? $req->get('kewenangan_provinsi'): 0;
            $data->save();
            toast('Berhasil mengedit jembatan', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('jembatan'));
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
    }

    public function peta(Request $req)
    {
		try{
            $data = Jembatan::findOrFail($req->get('id'));

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
            return view('includes.component.leaflet-preview', [
                'data' => $data,
                'map' => [
                    'marker' => $data->marker? [
                        'long' => $data->marker->getLng(),
                        'lat' => $data->marker->getLat()
                    ]: [],
                    'polygon' => $polygon,
                    'polyline' => $polyline
                ]
            ]);
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return back();
        }
    }

	public function hapus($id)
	{
		try{
            $data = Jembatan::findOrFail($id);
            $data->delete();
            toast('Berhasil menghapus jembatan '.$data->jembatan_nama, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
