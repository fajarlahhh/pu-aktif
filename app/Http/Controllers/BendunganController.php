<?php

namespace App\Http\Controllers;

use App\Bendungan;
use App\KelurahanDesa;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;
use Grimzy\LaravelMysqlSpatial\Types\Point;
use Grimzy\LaravelMysqlSpatial\Types\Polygon;
use Grimzy\LaravelMysqlSpatial\Types\LineString;

class BendunganController extends Controller
{
    //
    public function index(Request $req)
	{
        $data = Bendungan::where('bendungan_nama', 'like', '%'.$req->cari.'%')->where('bendungan_tahun_pembuatan', 'like', '%'.$req->cari.'%')->where('bendungan_keterangan', 'like', '%'.$req->cari.'%')->where('bendungan_kelas', 'like', '%'.$req->cari.'%')->paginate(10);

        $data->appends(['cari' => $req->cari]);
        return view('pages.isda.bendungan.index', [
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'cari' => $req->cari
        ]);
    }

	public function tambah(Request $req)
	{
        return view('pages.isda.bendungan.form', [
            'aksi' => 'tambah',
            'map' => [],
            'desa' => KelurahanDesa::with('kecamatan.kabupaten_kota')->orderBy('kelurahan_desa_nama')->get(),
            'back' => Str::contains(url()->previous(), ['bendungan/tambah', 'bendungan/edit'])? '/bendungan': url()->previous(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'bendungan_nama' => 'required',
                'bendungan_tahun_pembuatan' => 'required'
            ],[
                'bendungan_nama.required'  => 'Nama Barang/Pekerjaan tidak boleh kosong',
                'bendungan_tahun_pembuatan.required'  => 'Harga Satuan (Rp.) tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

            $data = new Bendungan();
            $data->bendungan_nama = $req->get('bendungan_nama');
            $data->bendungan_tahun_pembuatan = $req->get('bendungan_tahun_pembuatan');
            $data->bendungan_biaya_pembuatan = str_replace(',', '', $req->get('bendungan_biaya_pembuatan'));
            $data->bendungan_keterangan = $req->get('bendungan_keterangan');
            $data->bendungan_kelas = $req->get('bendungan_kelas');
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
            toast('Berhasil menambah bendungan', 'success')->autoClose(2000);
            return redirect($req->get('redirect')? $req->get('redirect'): route('bendungan'));

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
            return view('pages.isda.bendungan.form', [
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
                'back' => Str::contains(url()->previous(), ['bendungan/tambah', 'bendungan/edit'])? '/bendungan': url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'bendungan');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'bendungan_nama' => 'required',
                'bendungan_tahun_pembuatan' => 'required'
            ],[
                'bendungan_nama.required'  => 'Nama Barang/Pekerjaan tidak boleh kosong',
                'bendungan_tahun_pembuatan.required'  => 'Harga Satuan (Rp.) tidak boleh kosong'
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
            $data->bendungan_biaya_pembuatan = str_replace(',', '', $req->get('bendungan_biaya_pembuatan'));
            $data->bendungan_keterangan = $req->get('bendungan_keterangan');
            $data->bendungan_kelas = $req->get('bendungan_kelas');
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
