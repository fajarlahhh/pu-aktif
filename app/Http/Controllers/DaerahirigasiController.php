<?php

namespace App\Http\Controllers;

use App\DaerahIrigasi;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Grimzy\LaravelMysqlSpatial\Types\Point;
use Grimzy\LaravelMysqlSpatial\Types\Polygon;
use Grimzy\LaravelMysqlSpatial\Types\LineString;

class DaerahirigasiController extends Controller
{
    //
    public function index(Request $req)
	{
        $jenis = isset($req->jenis)? $req->jenis: 'semua';
        $data = DaerahIrigasi::where(function($q) use ($req){
            $q->whereHas('kabupaten_kota', function($q1) use ($req){
                $q1->where('kabupaten_kota_nama', 'like', '%'.$req->cari.'%');
            })->orWhereHas('kecamatan', function($q1) use ($req){
                $q1->where('kecamatan_nama', 'like', '%'.$req->cari.'%');
            })->orWhereHas('kelurahan_desa', function($q1) use ($req){
                $q1->where('kelurahan_desa_nama', 'like', '%'.$req->cari.'%');
            })->orWhere('daerah_irigasi_nama', 'like', '%'.$req->cari.'%')->orWhere('daerah_irigasi_tahun_pembuatan', 'like', '%'.$req->cari.'%')->orWhere('daerah_irigasi_keterangan', 'like', '%'.$req->cari.'%');
        });

        if($jenis != 'semua'){
            $data = $data->where('kewenangan_provinsi', $jenis);
        }
        $data = $data->paginate(10);
        $data->appends(['cari' => $req->cari]);
        return view('pages.datainduk.sda.daerahirigasi.index', [
            'jenis' => $jenis,
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'cari' => $req->cari
        ]);
    }

	public function tambah(Request $req)
	{
        return view('pages.datainduk.sda.daerahirigasi.form', [
            'aksi' => 'tambah',
            'map' => [],
            'lokasi' => [],
            'back' => Str::contains(url()->previous(), ['daerahirigasi/tambah', 'daerahirigasi/edit'])? '/daerahirigasi': url()->previous(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'daerah_irigasi_nama' => 'required'
            ],[
                'daerah_irigasi_nama.required'  => 'Daerah Irigasi tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
            $data = new DaerahIrigasi();
            $data->daerah_irigasi_nama = $req->get('daerah_irigasi_nama');
            $data->daerah_irigasi_tahun_pembuatan = $req->get('daerah_irigasi_tahun_pembuatan');
            $data->daerah_irigasi_luas_area_potensial = $req->get('daerah_irigasi_luas_area_potensial')? str_replace(',', '', $req->get('daerah_irigasi_luas_area_potensial')): 0;
            $data->daerah_irigasi_sawah_irigasi = $req->get('daerah_irigasi_sawah_irigasi')? str_replace(',', '', $req->get('daerah_irigasi_sawah_irigasi')): 0;
            $data->daerah_irigasi_belum_irigasi = $req->get('daerah_irigasi_belum_irigasi')? str_replace(',', '', $req->get('daerah_irigasi_belum_irigasi')): 0;
            $data->daerah_irigasi_belum_sawah = $req->get('daerah_irigasi_belum_sawah')? str_replace(',', '', $req->get('daerah_irigasi_belum_sawah')): 0;
            $data->daerah_irigasi_alih_fungsi = $req->get('daerah_irigasi_alih_fungsi')? str_replace(',', '', $req->get('daerah_irigasi_alih_fungsi')): 0;
            $data->daerah_irigasi_keterangan = $req->get('daerah_irigasi_keterangan');
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
            $data->kabupaten_kota_id = $req->get('kabupaten_kota_id');
            $data->kecamatan_id = $req->get('kecamatan_id');
            $data->kelurahan_desa_id = $req->get('kelurahan_desa_id');
            $data->pengguna_id = Auth::id();
            $data->kewenangan_provinsi = $req->get('kewenangan_provinsi')? $req->get('kewenangan_provinsi'): 0;
            $data->save();
            toast('Berhasil menambah luasan daerah irigasi', 'success')->autoClose(2000);
            return redirect($req->get('redirect')? $req->get('redirect'): route('daerahirigasi'));
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous()->withInput(): 'embung');
		}
	}

	public function edit(Request $req)
	{
        try{
            $data = DaerahIrigasi::findOrFail($req->get('id'));

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
            return view('pages.datainduk.sda.daerahirigasi.form', [
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
                'lokasi' => [
                    'kabupaten_kota_id' => $data->kabupaten_kota_id,
                    'kecamatan_id' => $data->kecamatan_id,
                    'kelurahan_desa_id' => $data->kelurahan_desa_id,
                    'kabupaten_kota_nama' => $data->kabupaten_kota_id? $data->kabupaten_kota->kabupaten_kota_nama: '',
                    'kecamatan_nama' => $data->kecamatan_id? $data->kecamatan->kecamatan_nama: '',
                    'kelurahan_desa_nama' => $data->kelurahan_desa_id? $data->kelurahan_desa->kelurahan_desa_nama: ''
                ],
                'back' => Str::contains(url()->previous(), ['daerahirigasi/tambah', 'daerahirigasi/edit'])? '/daerahirigasi': url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous()->withInput(): 'daerahirigasi');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'daerah_irigasi_nama' => 'required'
            ],[
                'daerah_irigasi_nama.required'  => 'Daerah Irigasi tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = DaerahIrigasi::findOrFail($req->get('id'));
            $data->daerah_irigasi_nama = $req->get('daerah_irigasi_nama');
            $data->daerah_irigasi_tahun_pembuatan = $req->get('daerah_irigasi_tahun_pembuatan');
            $data->daerah_irigasi_luas_area_potensial = $req->get('daerah_irigasi_luas_area_potensial')? str_replace(',', '', $req->get('daerah_irigasi_luas_area_potensial')): 0;
            $data->daerah_irigasi_sawah_irigasi = $req->get('daerah_irigasi_sawah_irigasi')? str_replace(',', '', $req->get('daerah_irigasi_sawah_irigasi')): 0;
            $data->daerah_irigasi_belum_irigasi = $req->get('daerah_irigasi_belum_irigasi')? str_replace(',', '', $req->get('daerah_irigasi_belum_irigasi')): 0;
            $data->daerah_irigasi_belum_sawah = $req->get('daerah_irigasi_belum_sawah')? str_replace(',', '', $req->get('daerah_irigasi_belum_sawah')): 0;
            $data->daerah_irigasi_alih_fungsi = $req->get('daerah_irigasi_alih_fungsi')? str_replace(',', '', $req->get('daerah_irigasi_alih_fungsi')): 0;
            $data->daerah_irigasi_keterangan = $req->get('daerah_irigasi_keterangan');
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
            $data->kabupaten_kota_id = $req->get('kabupaten_kota_id');
            $data->kecamatan_id = $req->get('kecamatan_id');
            $data->kelurahan_desa_id = $req->get('kelurahan_desa_id');
            $data->pengguna_id = Auth::id();
            $data->kewenangan_provinsi = $req->get('kewenangan_provinsi')? $req->get('kewenangan_provinsi'): 0;
            $data->save();
            toast('Berhasil mengedit luasan daerah irigasi', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('daerahirigasi'));
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
	}

    public function peta(Request $req)
    {
		try{
            $data = DaerahIrigasi::findOrFail($req->get('id'));

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
            $data = DaerahIrigasi::findOrFail($id);
            $data->delete();
            toast('Berhasil menghapus luasan daerah irigasi '.$data->daerah_irigasi_nama, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
