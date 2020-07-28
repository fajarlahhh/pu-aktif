<?php

namespace App\Http\Controllers;

use App\Jalan;
use App\KabupatenKota;
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
        $data = Jalan::where('jalan_ruas', 'like', '%'.$req->cari.'%')->orWhere('jalan_subruas', 'like', '%'.$req->cari.'%')->orWhere('jalan_nama', 'like', '%'.$req->cari.'%')->orWhere('jalan_keterangan', 'like', '%'.$req->cari.'%')->paginate(10);
        $data->appends(['cari' => $req->cari]);
        return view('pages.datainduk.binamarga.jalan.index', [
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
            'kabupaten_kota' => KabupatenKota::all(),
            'map' => [],
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
            $data->jalan_panjang = str_replace(',', '', $req->get('jalan_panjang'))?: 0;
            $data->jalan_fungsi_kp_2 = str_replace(',', '', $req->get('jalan_fungsi_kp_2'))?: 0;
            $data->jalan_fungsi_kp_3 = str_replace(',', '', $req->get('jalan_fungsi_kp_3'))?: 0;
            $data->jalan_lebar = $req->get('jalan_lebar');
            $data->jalan_aspal_penetrasi_makadam = str_replace(',', '', $req->get('jalan_aspal_penetrasi_makadam'))?: 0;
            $data->jalan_perkerasan_beton = str_replace(',', '', $req->get('jalan_perkerasan_beton'))?: 0;
            $data->jalan_telford_kerikil = str_replace(',', '', $req->get('jalan_telford_kerikil'))?: 0;
            $data->jalan_tanah_belum_tembus = str_replace(',', '', $req->get('jalan_tanah_belum_tembus'))?: 0;
            $data->jalan_baik_km = str_replace(',', '', $req->get('jalan_baik_km'))?: 0;
            $data->jalan_baik_persen = str_replace(',', '', $req->get('jalan_baik_persen'))?: 0;
            $data->jalan_sedang_km = str_replace(',', '', $req->get('jalan_sedang_km'))?: 0;
            $data->jalan_sedang_persen = str_replace(',', '', $req->get('jalan_sedang_persen'))?: 0;
            $data->jalan_rusak_ringan_km = str_replace(',', '', $req->get('jalan_rusak_ringan_km'))?: 0;
            $data->jalan_rusak_ringan_persen = str_replace(',', '', $req->get('jalan_rusak_ringan_persen'))?: 0;
            $data->jalan_rusak_berat_km = str_replace(',', '', $req->get('jalan_rusak_berat_km'))?: 0;
            $data->jalan_rusak_berat_persen = str_replace(',', '', $req->get('jalan_rusak_berat_persen'))?: 0;
            $data->jalan_lhr = $req->get('jalan_lhr');
            $data->jalan_akses_ke_npk = $req->get('jalan_akses_ke_npk');
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
                'kabupaten_kota' => KabupatenKota::all(),
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
			return redirect(url()->previous()? url()->previous()->withInput(): 'jalan');
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
            $data->jalan_panjang = str_replace(',', '', $req->get('jalan_panjang'))?: 0;
            $data->jalan_fungsi_kp_2 = str_replace(',', '', $req->get('jalan_fungsi_kp_2'))?: 0;
            $data->jalan_fungsi_kp_3 = str_replace(',', '', $req->get('jalan_fungsi_kp_3'))?: 0;
            $data->jalan_lebar = $req->get('jalan_lebar');
            $data->jalan_aspal_penetrasi_makadam = str_replace(',', '', $req->get('jalan_aspal_penetrasi_makadam'))?: 0;
            $data->jalan_perkerasan_beton = str_replace(',', '', $req->get('jalan_perkerasan_beton'))?: 0;
            $data->jalan_telford_kerikil = str_replace(',', '', $req->get('jalan_telford_kerikil'))?: 0;
            $data->jalan_tanah_belum_tembus = str_replace(',', '', $req->get('jalan_tanah_belum_tembus'))?: 0;
            $data->jalan_baik_km = str_replace(',', '', $req->get('jalan_baik_km'))?: 0;
            $data->jalan_baik_persen = str_replace(',', '', $req->get('jalan_baik_persen'))?: 0;
            $data->jalan_sedang_km = str_replace(',', '', $req->get('jalan_sedang_km'))?: 0;
            $data->jalan_sedang_persen = str_replace(',', '', $req->get('jalan_sedang_persen'))?: 0;
            $data->jalan_rusak_ringan_km = str_replace(',', '', $req->get('jalan_rusak_ringan_km'))?: 0;
            $data->jalan_rusak_ringan_persen = str_replace(',', '', $req->get('jalan_rusak_ringan_persen'))?: 0;
            $data->jalan_rusak_berat_km = str_replace(',', '', $req->get('jalan_rusak_berat_km'))?: 0;
            $data->jalan_rusak_berat_persen = str_replace(',', '', $req->get('jalan_rusak_berat_persen'))?: 0;
            $data->jalan_lhr = $req->get('jalan_lhr');
            $data->jalan_akses_ke_npk = $req->get('jalan_akses_ke_npk');
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
