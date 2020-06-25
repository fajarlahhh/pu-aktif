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
        $data = Jalan::where('jalan_ruas_lama', 'like', '%'.$req->cari.'%')->orWhere('jalan_subruas_lama', 'like', '%'.$req->cari.'%')->orWhere('jalan_ruas_baru', 'like', '%'.$req->cari.'%')->orWhere('jalan_subruas_baru', 'like', '%'.$req->cari.'%')->orWhere('jalan_nama', 'like', '%'.$req->cari.'%')->orWhere('jalan_tahun_pembuatan', 'like', '%'.$req->cari.'%')->orWhere('jalan_keterangan', 'like', '%'.$req->cari.'%')->paginate(10);
        $data->appends(['cari' => $req->cari]);
        return view('pages.infrastruktur.jalan.index', [
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'cari' => $req->cari
        ]);
    }

	public function tambah(Request $req)
	{
        return view('pages.infrastruktur.jalan.form', [
            'aksi' => 'tambah',
            'map' => [],
            'desa' => KelurahanDesa::with('kecamatan.kabupaten_kota')->orderBy('kelurahan_desa_nama')->get(),
            'back' => Str::contains(url()->previous(), ['jalan/tambah', 'jalan/edit'])? '/jalan': url()->previous(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'jalan_nama' => 'required',
                'jalan_tahun_pembuatan' => 'required'
            ],[
                'jalan_nama.required'  => 'Nama Jalan tidak boleh kosong',
                'jalan_tahun_pembuatan.required'  => 'Tahun Pembuatan tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
            $data = new Jalan();
            $data->jalan_ruas_lama = $req->get('jalan_ruas_lama');
            $data->jalan_subruas_lama = $req->get('jalan_subruas_lama');
            $data->jalan_ruas_baru = $req->get('jalan_ruas_baru');
            $data->jalan_subruas_baru = $req->get('jalan_subruas_baru');
            $data->jalan_nama = $req->get('jalan_nama');
            $data->jalan_tahun_pembuatan = $req->get('jalan_tahun_pembuatan');
            $data->jalan_biaya_pembuatan = str_replace(',', '', $req->get('jalan_biaya_pembuatan'));
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
            $data->kelurahan_desa_id = $req->get('kelurahan_desa_id');
            $data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil menambah jalan', 'success')->autoClose(2000);
            return redirect($req->get('redirect')? $req->get('redirect'): route('jalan'));
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'embung');
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
            return view('pages.infrastruktur.jalan.form', [
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
                'back' => Str::contains(url()->previous(), ['jalan/tambah', 'jalan/edit'])? '/jalan': url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'jalan');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'jalan_nama' => 'required',
                'jalan_tahun_pembuatan' => 'required'
            ],[
                'jalan_nama.required'  => 'Nama Jalan tidak boleh kosong',
                'jalan_tahun_pembuatan.required'  => 'Tahun Pembuatan tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = Jalan::findOrFail($req->get('id'));
            $data->jalan_ruas_lama = $req->get('jalan_ruas_lama');
            $data->jalan_subruas_lama = $req->get('jalan_subruas_lama');
            $data->jalan_ruas_baru = $req->get('jalan_ruas_baru');
            $data->jalan_subruas_baru = $req->get('jalan_subruas_baru');
            $data->jalan_nama = $req->get('jalan_nama');
            $data->jalan_tahun_pembuatan = $req->get('jalan_tahun_pembuatan');
            $data->jalan_biaya_pembuatan = str_replace(',', '', $req->get('jalan_biaya_pembuatan'));
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
            $data->kelurahan_desa_id = $req->get('kelurahan_desa_id');
            $data->pengguna_id = Auth::id();
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
