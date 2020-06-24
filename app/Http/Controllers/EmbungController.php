<?php

namespace App\Http\Controllers;

use App\Embung;
use App\KelurahanDesa;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;
use Grimzy\LaravelMysqlSpatial\Types\Point;
use Grimzy\LaravelMysqlSpatial\Types\Polygon;
use Grimzy\LaravelMysqlSpatial\Types\LineString;

class EmbungController extends Controller
{
    //
    public function index(Request $req)
	{
        $data = Embung::where('embung_nama', 'like', '%'.$req->cari.'%')->where('embung_tahun_pembuatan', 'like', '%'.$req->cari.'%')->where('embung_keterangan', 'like', '%'.$req->cari.'%')->where('embung_kelas', 'like', '%'.$req->cari.'%')->paginate(10);

        $data->appends(['cari' => $req->cari]);
        return view('pages.isda.embung.index', [
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'cari' => $req->cari
        ]);
    }

	public function tambah(Request $req)
	{
        return view('pages.isda.embung.form', [
            'aksi' => 'tambah',
            'map' => [],
            'desa' => KelurahanDesa::with('kecamatan.kabupaten_kota')->orderBy('kelurahan_desa_nama')->get(),
            'back' => Str::contains(url()->previous(), ['embung/tambah', 'embung/edit'])? '/embung': url()->previous(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'embung_nama' => 'required',
                'embung_tahun_pembuatan' => 'required'
            ],[
                'embung_nama.required'  => 'Nama Barang/Pekerjaan tidak boleh kosong',
                'embung_tahun_pembuatan.required'  => 'Harga Satuan (Rp.) tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

            $data = new Embung();
            $data->embung_nama = $req->get('embung_nama');
            $data->embung_tahun_pembuatan = $req->get('embung_tahun_pembuatan');
            $data->embung_biaya_pembuatan = str_replace(',', '', $req->get('embung_biaya_pembuatan'));
            $data->embung_keterangan = $req->get('embung_keterangan');
            $data->embung_kelas = $req->get('embung_kelas');
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
            toast('Berhasil menambah embung', 'success')->autoClose(2000);
            return redirect($req->get('redirect')? $req->get('redirect'): route('embung'));

	}

	public function edit(Request $req)
	{
        try{
            $data = Embung::findOrFail($req->get('id'));
            
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
            return view('pages.isda.embung.form', [
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
                'back' => Str::contains(url()->previous(), ['embung/tambah', 'embung/edit'])? '/embung': url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'embung');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'embung_nama' => 'required',
                'embung_tahun_pembuatan' => 'required'
            ],[
                'embung_nama.required'  => 'Nama Barang/Pekerjaan tidak boleh kosong',
                'embung_tahun_pembuatan.required'  => 'Harga Satuan (Rp.) tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = Embung::findOrFail($req->get('id'));
            $data->embung_nama = $req->get('embung_nama');
            $data->embung_tahun_pembuatan = $req->get('embung_tahun_pembuatan');
            $data->embung_biaya_pembuatan = str_replace(',', '', $req->get('embung_biaya_pembuatan'));
            $data->embung_keterangan = $req->get('embung_keterangan');
            $data->embung_kelas = $req->get('embung_kelas');
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
            toast('Berhasil mengedit embung', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('embung'));
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
	}
    
    public function peta(Request $req)
    {
		try{
            $data = Embung::findOrFail($req->get('id'));
            
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
            $data = Embung::findOrFail($id);
            $data->delete();
            toast('Berhasil menghapus embung '.$data->embung_nama, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
