<?php

namespace App\Http\Controllers;

use App\KabupatenKota;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class KabupatenkotaController extends Controller
{
    //
    public function index(Request $req)
	{
        $data = KabupatenKota::with('pengguna')->where('kabupaten_kota_nama', 'like', '%'.$req->cari.'%')->paginate(10);
        $data->appends(['cari' => $req->cari]);
        return view('pages.wilayah.kabupatenkota.index', [
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'cari' => $req->cari
        ]);
    }

    public function cari(Request $req)
    {
        $data = KabupatenKota::where('kabupaten_kota_nama', 'like', '%'.$req->cari.'%')->get();
        return $data;
    }

	public function tambah(Request $req)
	{
        return view('pages.wilayah.kabupatenkota.form', [
            'aksi' => 'tambah',
            'back' => Str::contains(url()->previous(), ['kabupatenkota/tambah', 'kabupatenkota/edit'])? '/kabupatenkota': url()->previous(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'kabupaten_kota_nama' => 'required'
            ],[
                'kabupaten_kota_nama.required'  => 'Nama Kabupaten/Kota tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = new KabupatenKota();
			$data->kabupaten_kota_nama = $req->get('kabupaten_kota_nama');
			$data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil menyimpan data kabupaten/kota', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('kabupatenkota'));
        }catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
	}

	public function edit($id)
	{
        try{
            return view('pages.wilayah.kabupatenkota.form', [
                'aksi' => 'edit',
                'data' => KabupatenKota::findOrFail($id),
                'back' => Str::contains(url()->previous(), ['kabupatenkota/tambah', 'kabupatenkota/edit'])? '/kabupatenkota': url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'kabupatenkota');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'kabupaten_kota_nama' => 'required'
            ],[
                'kabupaten_kota_nama.required'  => 'Nama Kabupaten/Kota tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = KabupatenKota::findOrFail($req->get('id'));
			$data->kabupaten_kota_nama = $req->get('kabupaten_kota_nama');
			$data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil menyimpan data kabupaten/kota', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('kabupatenkota'));
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
	}

	public function hapus($id)
	{
		try{
            $data = KabupatenKota::findOrFail($id);
            $data->delete();
            toast('Berhasil menghapus data kabupaten/kota '.$data->kabupaten_kota_nama, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
