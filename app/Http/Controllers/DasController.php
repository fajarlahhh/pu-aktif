<?php

namespace App\Http\Controllers;

use App\Das;
use App\KelurahanDesa;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;
use Grimzy\LaravelMysqlSpatial\Types\Point;
use Grimzy\LaravelMysqlSpatial\Types\Polygon;
use Grimzy\LaravelMysqlSpatial\Types\LineString;

class DasController extends Controller
{
    //
    public function index(Request $req)
	{
        $data = Das::where('das_nama', 'like', '%'.$req->cari.'%')->where('das_tahun_pembuatan', 'like', '%'.$req->cari.'%')->where('das_keterangan', 'like', '%'.$req->cari.'%')->where('das_kode', 'like', '%'.$req->cari.'%')->paginate(10);

        $data->appends(['cari' => $req->cari]);
        return view('pages.isda.das.index', [
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'cari' => $req->cari
        ]);
    }

	public function tambah(Request $req)
	{
        return view('pages.isda.das.form', [
            'aksi' => 'tambah',
            'map' => [],
            'desa' => KelurahanDesa::with('kecamatan.kabupaten_kota')->orderBy('kelurahan_desa_nama')->get(),
            'back' => Str::contains(url()->previous(), ['das/tambah', 'das/edit'])? '/das': url()->previous(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'das_nama' => 'required',
                'das_tahun_pembuatan' => 'required'
            ],[
                'das_nama.required'  => 'Nama Barang/Pekerjaan tidak boleh kosong',
                'das_tahun_pembuatan.required'  => 'Harga Satuan (Rp.) tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

            $data = new Das();
            $data->das_nama = $req->get('das_nama');
            $data->das_tahun_pembuatan = $req->get('das_tahun_pembuatan');
            $data->das_biaya_pembuatan = str_replace(',', '', $req->get('das_biaya_pembuatan'));
            $data->das_keterangan = $req->get('das_keterangan');
            $data->das_kode = $req->get('das_kode');
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
            toast('Berhasil menambah das', 'success')->autoClose(2000);
            return redirect($req->get('redirect')? $req->get('redirect'): route('das'));

	}

	public function edit(Request $req)
	{
        try{
            $data = Das::findOrFail($req->get('id'));
            
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
            return view('pages.isda.das.form', [
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
                'back' => Str::contains(url()->previous(), ['das/tambah', 'das/edit'])? '/das': url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'das');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'das_nama' => 'required',
                'das_tahun_pembuatan' => 'required'
            ],[
                'das_nama.required'  => 'Nama Barang/Pekerjaan tidak boleh kosong',
                'das_tahun_pembuatan.required'  => 'Harga Satuan (Rp.) tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = Das::findOrFail($req->get('id'));
            $data->das_nama = $req->get('das_nama');
            $data->das_tahun_pembuatan = $req->get('das_tahun_pembuatan');
            $data->das_biaya_pembuatan = str_replace(',', '', $req->get('das_biaya_pembuatan'));
            $data->das_keterangan = $req->get('das_keterangan');
            $data->das_kode = $req->get('das_kode');
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
            toast('Berhasil mengedit das', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('das'));
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
	}
    
    public function peta(Request $req)
    {
		try{
            $data = Das::findOrFail($req->get('id'));
            
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
            $data = Das::findOrFail($id);
            $data->delete();
            toast('Berhasil menghapus das '.$data->das_nama, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
