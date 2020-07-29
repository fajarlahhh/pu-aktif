<?php

namespace App\Http\Controllers;

use App\Jalan;
use App\KelurahanDesa;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Grimzy\LaravelMysqlSpatial\Types\Point;
use Grimzy\LaravelMysqlSpatial\Types\Polygon;
use Grimzy\LaravelMysqlSpatial\Types\LineString;

class JalanController extends Controller
{
    //
    public function index(Request $req)
	{
        $jenis = isset($req->jenis)? $req->jenis: 'semua';
        $data = Jalan::where(function($q) use ($req){
            $q->whereHas('kabupaten_kota', function($q1) use ($req){
                $q1->where('kabupaten_kota_nama', 'like', '%'.$req->cari.'%');
            })->orWhereHas('kecamatan', function($q1) use ($req){
                $q1->where('kecamatan_nama', 'like', '%'.$req->cari.'%');
            })->orWhereHas('kelurahan_desa', function($q1) use ($req){
                $q1->where('kelurahan_desa_nama', 'like', '%'.$req->cari.'%');
            })->orWhere('jalan_ruas', 'like', '%'.$req->cari.'%')->orWhere('jalan_subruas', 'like', '%'.$req->cari.'%')->orWhere('jalan_nama', 'like', '%'.$req->cari.'%')->orWhere('jalan_keterangan', 'like', '%'.$req->cari.'%');
        });
        if($jenis != 'semua'){
            $data = $data->where('kewenangan_provinsi', $jenis);
        }
        $data = $data->paginate(10);
        $data->appends(['cari' => $req->cari]);
        return view('pages.datainduk.binamarga.jalan.index', [
            'jenis' => $jenis,
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'cari' => $req->cari
        ]);
    }

    public function cari(Request $req)
    {
        $data = Jalan::where('jalan_ruas', 'like', '%'.$req->cari.'%')->orWhere('jalan_subruas', 'like', '%'.$req->cari.'%')->orWhere('jalan_nama', 'like', '%'.$req->cari.'%')->orWhere('jalan_keterangan', 'like', '%'.$req->cari.'%')->get();
        return $data;
    }

	public function tambah(Request $req)
	{
        return view('pages.datainduk.binamarga.jalan.form', [
            'aksi' => 'tambah',
            'map' => [],
            'lokasi' => [],
            'back' => Str::contains(url()->previous(), ['jalan/tambah', 'jalan/edit'])? '/jalan': url()->previous(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'jalan_nama' => 'required'
            ],[
                'jalan_nama.required'  => 'Nama Jalan tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
            $data = new Jalan();
            $data->jalan_ruas = $req->get('jalan_ruas');
            $data->jalan_subruas = $req->get('jalan_subruas');
            $data->jalan_nama = $req->get('jalan_nama');
            $data->jalan_tahun_pembuatan = $req->get('jalan_tahun_pembuatan');
            $data->jalan_biaya_pembuatan = str_replace(',', '', $req->get('jalan_biaya_pembuatan'))?: 0;
            $data->jalan_panjang = str_replace(',', '', $req->get('jalan_panjang'))?: 0;
            $data->jalan_lebar = $req->get('jalan_lebar');
            $data->jalan_keterangan = $req->get('jalan_keterangan');
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
            toast('Berhasil menambah jalan', 'success')->autoClose(2000);
            return redirect($req->get('redirect')? $req->get('redirect'): route('jalan'));
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous()->withInput(): 'embung');
		}
	}

	public function edit(Request $req)
	{
        try{
            $data = Jalan::findOrFail($req->get('id'));
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
            return view('pages.datainduk.binamarga.jalan.form', [
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
                'desa' => KelurahanDesa::with('kecamatan.kabupaten_kota')->orderBy('kelurahan_desa_nama')->get(),
                'back' => Str::contains(url()->previous(), ['jalan/tambah', 'jalan/edit'])? '/jalan': url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'jalan')->withInput();
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'jalan_nama' => 'required'
            ],[
                'jalan_nama.required'  => 'Nama Jalan tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = Jalan::findOrFail($req->get('id'));
            $data->jalan_ruas = $req->get('jalan_ruas');
            $data->jalan_subruas = $req->get('jalan_subruas');
            $data->jalan_nama = $req->get('jalan_nama');
            $data->jalan_tahun_pembuatan = $req->get('jalan_tahun_pembuatan');
            $data->jalan_biaya_pembuatan = str_replace(',', '', $req->get('jalan_biaya_pembuatan'))?: 0;
            $data->jalan_panjang = str_replace(',', '', $req->get('jalan_panjang'))?: 0;
            $data->jalan_lebar = $req->get('jalan_lebar');
            $data->jalan_keterangan = $req->get('jalan_keterangan');
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
            toast('Berhasil mengedit jalan', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('jalan'));
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
    }

    public function peta(Request $req)
    {
		try{
            $data = Jalan::findOrFail($req->get('id'));

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
            $data = Jalan::findOrFail($id);
            $data->delete();
            toast('Berhasil menghapus jalan '.$data->jalan_nama, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
