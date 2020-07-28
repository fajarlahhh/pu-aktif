<?php

namespace App\Http\Controllers;

use App\KelurahanDesa;
use App\Kecamatan;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class KelurahandesaController extends Controller
{
    //
    public function index(Request $req)
	{
        $data = KelurahanDesa::with('pengguna')->where(function($q) use ($req){
            $q->whereHas('kecamatan', function ($r) use ($req){
                $r->whereHas('kabupaten_kota', function ($s) use ($req){
                    $s->where('kabupaten_kota_nama', 'like', '%'.$req->cari.'%');
                })->orWhere('kecamatan_nama', 'like', '%'.$req->cari.'%');
            })->orWhere('kelurahan_desa_nama', 'like', '%'.$req->cari.'%');
        })->paginate(10);
        $data->appends(['cari' => $req->cari]);
        return view('pages.wilayah.kelurahandesa.index', [
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'cari' => $req->cari
        ]);
    }


    public function cari($id, Request $req)
    {
        $data = KelurahanDesa::where('kelurahan_desa_nama', 'like', '%'.$req->cari.'%')->where('kecamatan_id', $id)->get();
        return $data;
    }

	public function tambah(Request $req)
	{
        return view('pages.wilayah.kelurahandesa.form', [
            'aksi' => 'tambah',
            'kecamatan' => Kecamatan::all(),
            'back' => Str::contains(url()->previous(), ['kelurahandesa/tambah', 'kelurahandesa/edit'])? '/kelurahan_desa': url()->previous(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'kecamatan_id' => 'required',
                'kelurahan_desa_nama' => 'required'
            ],[
                'kecamatan_id.required'  => 'Nama Kecamatan tidak boleh kosong',
                'kelurahan_desa_nama.required'  => 'Nama Kelurahan/Desa tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = new KelurahanDesa();
			$data->kelurahan_desa_nama = $req->get('kelurahan_desa_nama');
			$data->kecamatan_id = $req->get('kecamatan_id');
			$data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil menyimpan data kelurahan desa', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('kelurahan_desa'));
        }catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
	}

	public function edit($id)
	{
        try{
            return view('pages.wilayah.kelurahandesa.form', [
                'aksi' => 'edit',
                'data' => KelurahanDesa::findOrFail($id),
                'kecamatan' => Kecamatan::all(),
                'back' => Str::contains(url()->previous(), ['kelurahandesa/tambah', 'kelurahandesa/edit'])? '/kelurahan_desa': url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'kelurahan_desa');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'kecamatan_id' => 'required',
                'kelurahan_desa_nama' => 'required'
            ],[
                'kecamatan_id.required'  => 'Nama Kecamatan tidak boleh kosong',
                'kelurahan_desa_nama.required'  => 'Nama Kelurahan/Desa tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = KelurahanDesa::findOrFail($req->get('id'));
			$data->kelurahan_desa_nama = $req->get('kelurahan_desa_nama');
			$data->kecamatan_id = $req->get('kecamatan_id');
			$data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil menyimpan data kelurahan desa', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('kelurahan_desa'));
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
	}

	public function hapus($id)
	{
		try{
            $data = KelurahanDesa::findOrFail($id);
            $data->delete();
            toast('Berhasil menghapus data kelurahan desa '.$data->kelurahan_desa_nama, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
