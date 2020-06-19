<?php

namespace App\Http\Controllers;

use App\TipeKonstruksi;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class TipekonstruksiController extends Controller
{
    //
    public function index(Request $req)
	{
        $data = TipeKonstruksi::with('pengguna')->where('tipe_konstruksi_nama', 'like', '%'.$req->cari.'%')->paginate(10);
        $data->appends(['cari' => $req->cari]);
        return view('pages.datamaster.tipekonstruksi.index', [
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'cari' => $req->cari
        ]);
    }

	public function tambah(Request $req)
	{
        return view('pages.datamaster.tipekonstruksi.form', [
            'aksi' => 'tambah',
            'back' => Str::contains(url()->previous(), ['tipekonstruksi/tambah', 'tipekonstruksi/edit'])? '/tipekonstruksi': url()->previous(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'tipe_konstruksi_nama' => 'required'
            ],[
                'tipe_konstruksi_nama.required'  => 'Tipe Konstruksi tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = new TipeKonstruksi();
			$data->tipe_konstruksi_nama = $req->get('tipe_konstruksi_nama');
			$data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil menyimpan data tipe konstruksi', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('tipekonstruksi'));
        }catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
	}

	public function edit($id)
	{
        try{
            return view('pages.datamaster.tipekonstruksi.form', [
                'aksi' => 'edit',
                'data' => TipeKonstruksi::findOrFail($id),
                'back' => Str::contains(url()->previous(), ['tipekonstruksi/tambah', 'tipekonstruksi/edit'])? '/tipekonstruksi': url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'tipekonstruksi');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'tipe_konstruksi_nama' => 'required'
            ],[
                'tipe_konstruksi_nama.required'  => 'Tipe Konstruksi tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = TipeKonstruksi::findOrFail($req->get('id'));
			$data->tipe_konstruksi_nama = $req->get('tipe_konstruksi_nama');
			$data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil menyimpan data tipe konstruksi', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('tipekonstruksi'));
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
	}

	public function hapus($id)
	{
		try{
            $data = TipeKonstruksi::findOrFail($id);
            $data->delete();
            toast('Berhasil menghapus data tipe konstruksi '.$data->tipe_konstruksi_nama, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
