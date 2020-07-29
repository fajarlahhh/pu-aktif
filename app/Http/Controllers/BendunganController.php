<?php

namespace App\Http\Controllers;

use App\Bendungan;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Grimzy\LaravelMysqlSpatial\Types\Point;
use Grimzy\LaravelMysqlSpatial\Types\Polygon;
use Grimzy\LaravelMysqlSpatial\Types\LineString;

class BendunganController extends Controller
{
    //
    public function index(Request $req)
	{
        $jenis = isset($req->jenis)? $req->jenis: 'semua';
        $data = Bendungan::where(function($q) use ($req){
            $q->whereHas('kabupaten_kota', function($q1) use ($req){
                $q1->where('kabupaten_kota_nama', 'like', '%'.$req->cari.'%');
            })->orWhereHas('kecamatan', function($q1) use ($req){
                $q1->where('kecamatan_nama', 'like', '%'.$req->cari.'%');
            })->orWhereHas('kelurahan_desa', function($q1) use ($req){
                $q1->where('kelurahan_desa_nama', 'like', '%'.$req->cari.'%');
            })->orWhere('bendungan_nama', 'like', '%'.$req->cari.'%')->orWhere('bendungan_tahun_pembuatan', 'like', '%'.$req->cari.'%');
        });

        if($jenis != 'semua'){
            $data = $data->where('kewenangan_provinsi', $jenis);
        }
        $data = $data->paginate(10);
        return view('pages.datainduk.sda.bendungan.index', [
            'jenis' => $jenis,
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'cari' => $req->cari
        ]);
    }

	public function tambah(Request $req)
	{
        return view('pages.datainduk.sda.bendungan.form', [
            'aksi' => 'tambah',
            'map' => [],
            'lokasi' => [],
            'back' => Str::contains(url()->previous(), ['bendungan/tambah', 'bendungan/edit'])? '/bendungan': url()->previous(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'bendungan_nama' => 'required'
            ],[
                'bendungan_nama.required'  => 'Nama Bendungan tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
            $data = new Bendungan();
            $data->bendungan_nama = $req->get('bendungan_nama');
            $data->bendungan_tahun_pembuatan = $req->get('bendungan_tahun_pembuatan');
            $data->bendungan_data_teknik_tinggi = $req->get('bendungan_data_teknik_tinggi')? str_replace(',', '', $req->get('bendungan_data_teknik_tinggi')): 0;
            $data->bendungan_data_teknik_volume = $req->get('bendungan_data_teknik_volume')? str_replace(',', '', $req->get('bendungan_data_teknik_volume')): 0;
            $data->bendungan_data_teknik_bathimetri = $req->get('bendungan_data_teknik_bathimetri')? str_replace(',', '', $req->get('bendungan_data_teknik_bathimetri')): 0;
            $data->bendungan_manfaat_air_baku = $req->get('bendungan_manfaat_air_baku')? str_replace(',', '', $req->get('bendungan_manfaat_air_baku')): 0;
            $data->bendungan_manfaat_irigasi = $req->get('bendungan_manfaat_irigasi')? str_replace(',', '', $req->get('bendungan_manfaat_irigasi')): 0;
            $data->bendungan_manfaat_plta = $req->get('bendungan_manfaat_plta')? str_replace(',', '', $req->get('bendungan_manfaat_plta')): 0;
            $data->bendungan_manfaat_lainnya = $req->get('bendungan_manfaat_lainnya');
            $data->bendungan_kelembagaan_upb = $req->get('bendungan_kelembagaan_upb');
            $data->bendungan_kelembagaan_petugas = $req->get('bendungan_kelembagaan_petugas');
            $data->bendungan_keterangan = $req->get('bendungan_keterangan');
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
            toast('Berhasil menambah bendungan', 'success')->autoClose(2000);
            return redirect($req->get('redirect')? $req->get('redirect'): route('bendungan'));
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'embung')->withInput();
		}
	}

	public function edit(Request $req)
	{
        try{
            $data = Bendungan::findOrFail($req->get('id'));

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
            return view('pages.datainduk.sda.bendungan.form', [
                'aksi' => 'edit',
                'data' => $data,
                'lokasi' => [
                    'kabupaten_kota_id' => $data->kabupaten_kota_id,
                    'kecamatan_id' => $data->kecamatan_id,
                    'kelurahan_desa_id' => $data->kelurahan_desa_id,
                    'kabupaten_kota_nama' => $data->kabupaten_kota_id? $data->kabupaten_kota->kabupaten_kota_nama: '',
                    'kecamatan_nama' => $data->kecamatan_id? $data->kecamatan->kecamatan_nama: '',
                    'kelurahan_desa_nama' => $data->kelurahan_desa_id? $data->kelurahan_desa->kelurahan_desa_nama: ''
                ],
                'map' => [
                    'marker' => $data->marker? [
                        'long' => $data->marker->getLng(),
                        'lat' => $data->marker->getLat()
                    ]: [],
                    'polygon' => $polygon,
                    'polyline' => $polyline
                ],

                'back' => Str::contains(url()->previous(), ['bendungan/tambah', 'bendungan/edit'])? '/bendungan': url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous()->withInput(): 'bendungan');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'bendungan_nama' => 'required'
            ],[
                'bendungan_nama.required'  => 'Nama Bendungan tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = Bendungan::findOrFail($req->get('id'));
            $data->bendungan_nama = $req->get('bendungan_nama');
            $data->bendungan_tahun_pembuatan = $req->get('bendungan_tahun_pembuatan');
            $data->bendungan_data_teknik_tinggi = $req->get('bendungan_data_teknik_tinggi')? str_replace(',', '', $req->get('bendungan_data_teknik_tinggi')): 0;
            $data->bendungan_data_teknik_volume = $req->get('bendungan_data_teknik_volume')? str_replace(',', '', $req->get('bendungan_data_teknik_volume')): 0;
            $data->bendungan_data_teknik_bathimetri = $req->get('bendungan_data_teknik_bathimetri')? str_replace(',', '', $req->get('bendungan_data_teknik_bathimetri')): 0;
            $data->bendungan_manfaat_air_baku = $req->get('bendungan_manfaat_air_baku')? str_replace(',', '', $req->get('bendungan_manfaat_air_baku')): 0;
            $data->bendungan_manfaat_irigasi = $req->get('bendungan_manfaat_irigasi')? str_replace(',', '', $req->get('bendungan_manfaat_irigasi')): 0;
            $data->bendungan_manfaat_plta = $req->get('bendungan_manfaat_plta')? str_replace(',', '', $req->get('bendungan_manfaat_plta')): 0;
            $data->bendungan_manfaat_lainnya = $req->get('bendungan_manfaat_lainnya');
            $data->bendungan_kelembagaan_upb = $req->get('bendungan_kelembagaan_upb');
            $data->bendungan_kelembagaan_petugas = $req->get('bendungan_kelembagaan_petugas');
            $data->bendungan_keterangan = $req->get('bendungan_keterangan');
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
            toast('Berhasil mengedit bendungan', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('bendungan'));
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
    }

    public function peta(Request $req)
    {
		try{
            $data = Bendungan::findOrFail($req->get('id'));

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
            $data = Bendungan::findOrFail($id);
            $data->delete();
            toast('Berhasil menghapus bendungan '.$data->bendungan_nama, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
