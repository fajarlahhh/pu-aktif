<?php

namespace App\Http\Controllers;

use App\Kecamatan;
use App\KabupatenKota;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class KecamatanController extends Controller
{
    //
    public function index(Request $req)
	{
        $data = Kecamatan::with('pengguna')->where(function($q) use ($req){
            $q->whereHas('kabupaten_kota', function ($r) use ($req){
                $r->where('kabupaten_kota_nama', 'like', '%'.$req->cari.'%');
            })->orWhere('kecamatan_nama', 'like', '%'.$req->cari.'%');
        })->paginate(10);
        $data->appends(['cari' => $req->cari]);
        return view('pages.wilayah.kecamatan.index', [
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'cari' => $req->cari
        ]);
    }


    public function cari($id, Request $req)
    {
        $data = Kecamatan::where('kecamatan_nama', 'like', '%'.$req->cari.'%')->where('kabupaten_kota_id', $id)->get();
        return $data;
    }

	public function tambah(Request $req)
	{
        return view('pages.wilayah.kecamatan.form', [
            'aksi' => 'tambah',
            'kabupaten_kota' => KabupatenKota::all(),
            'back' => Str::contains(url()->previous(), ['kecamatan/tambah', 'kecamatan/edit'])? '/kecamatan': url()->previous(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'kabupaten_kota_id' => 'required',
                'kecamatan_nama' => 'required'
            ],[
                'kabupaten_kota_id.required'  => 'Nama Kabupaten/Kota tidak boleh kosong',
                'kecamatan_nama.required'  => 'Nama Kecamatan tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = new Kecamatan();
			$data->kecamatan_nama = $req->get('kecamatan_nama');
			$data->kabupaten_kota_id = $req->get('kabupaten_kota_id');
			$data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil menyimpan data kecamatan', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('kecamatan'));
        }catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
	}

	public function edit($id)
	{
        try{
            return view('pages.wilayah.kecamatan.form', [
                'aksi' => 'edit',
                'data' => Kecamatan::findOrFail($id),
                'kabupaten_kota' => KabupatenKota::all(),
                'back' => Str::contains(url()->previous(), ['kecamatan/tambah', 'kecamatan/edit'])? '/kecamatan': url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'kecamatan');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'kabupaten_kota_id' => 'required',
                'kecamatan_nama' => 'required'
            ],[
                'kabupaten_kota_id.required'  => 'Nama Kabupaten/Kota tidak boleh kosong',
                'kecamatan_nama.required'  => 'Nama Kecamatan tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = Kecamatan::findOrFail($req->get('id'));
			$data->kecamatan_nama = $req->get('kecamatan_nama');
			$data->kabupaten_kota_id = $req->get('kabupaten_kota_id');
			$data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil menyimpan data kecamatan', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('kecamatan'));
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
	}

	public function hapus($id)
	{
		try{
            $data = Kecamatan::findOrFail($id);
            $data->delete();
            toast('Berhasil menghapus data kecamatan '.$data->kecamatan_nama, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
