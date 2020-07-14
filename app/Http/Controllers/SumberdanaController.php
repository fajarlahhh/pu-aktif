<?php

namespace App\Http\Controllers;

use App\SumberDana;
use App\KelurahanDesa;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Grimzy\LaravelMysqlSpatial\Types\Point;
use Grimzy\LaravelMysqlSpatial\Types\Polygon;
use Grimzy\LaravelMysqlSpatial\Types\LineString;

class SumberdanaController extends Controller
{
    //
    public function index(Request $req)
	{
        $data = SumberDana::where('sumber_dana_nama', 'like', '%'.$req->cari.'%')->orderBy('sumber_dana_nama')->paginate(10);
        $data->appends(['cari' => $req->cari]);
        return view('pages.setup.sumberdana.index', [
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'cari' => $req->cari
        ]);
    }

	public function tambah(Request $req)
	{
        return view('pages.setup.sumberdana.form', [
            'aksi' => 'tambah',
            'back' => Str::contains(url()->previous(), ['sumberdana/tambah', 'sumberdana/edit'])? url('/sumberdana'): url()->previous(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'sumber_dana_nama' => 'required'
            ],[
                'sumber_dana_nama.required'  => 'Sumber Dana tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
            $data = new SumberDana();
            $data->sumber_dana_nama = $req->get('sumber_dana_nama');
            $data->save();
            toast('Berhasil menambah sumber dana', 'success')->autoClose(2000);
            return redirect($req->get('redirect')? $req->get('redirect'): route('sumberdana'));
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'embung');
		}
	}

	public function edit($id)
	{
        try{
            $data = SumberDana::findOrFail($id);
            return view('pages.setup.sumberdana.form', [
                'aksi' => 'edit',
                'data' => $data,
                'back' => Str::contains(url()->previous(), ['sumberdana/tambah', 'sumberdana/edit'])? url('/sumberdana'): url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'sumberdana');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'sumber_dana_nama' => 'required'
            ],[
                'sumber_dana_nama.required'  => 'Nama SumberDana tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = SumberDana::findOrFail($req->get('id'));
            $data->sumber_dana_nama = $req->get('sumber_dana_nama');
            $data->save();
            toast('Berhasil mengedit sumber dana', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('sumberdana'));
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
    }

	public function hapus($id)
	{
		try{
            $data = SumberDana::findOrFail($id);
            $data->delete();
            toast('Berhasil menghapus sumber dana '.$data->sumber_dana_nama, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
