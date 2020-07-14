<?php

namespace App\Http\Controllers;

use App\Infrastruktur;
use App\KelurahanDesa;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Grimzy\LaravelMysqlSpatial\Types\Point;
use Grimzy\LaravelMysqlSpatial\Types\Polygon;
use Grimzy\LaravelMysqlSpatial\Types\LineString;

class JenisinfrastrukturController extends Controller
{
    //
    public function index(Request $req)
	{
        $data = Infrastruktur::where('infrastruktur_nama', 'like', '%'.$req->cari.'%')->orderBy('infrastruktur_nama')->paginate(10);
        $data->appends(['cari' => $req->cari]);
        return view('pages.setup.infrastruktur.index', [
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'cari' => $req->cari
        ]);
    }

	public function tambah(Request $req)
	{
        return view('pages.setup.infrastruktur.form', [
            'aksi' => 'tambah',
            'back' => Str::contains(url()->previous(), ['jenisinfrastruktur/tambah', 'jenisinfrastruktur/edit'])? url('/jenisinfrastruktur'): url()->previous(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'infrastruktur_nama' => 'required'
            ],[
                'infrastruktur_nama.required'  => 'Nama Infrastruktur tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
            $data = new Infrastruktur();
            $data->infrastruktur_nama = $req->get('infrastruktur_nama');
            $data->save();
            toast('Berhasil menambah jenis infrastruktur', 'success')->autoClose(2000);
            return redirect($req->get('redirect')? $req->get('redirect'): route('jenisinfrastruktur'));
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'embung');
		}
	}

	public function edit($id)
	{
        try{
            $data = Infrastruktur::findOrFail($id);
            return view('pages.setup.infrastruktur.form', [
                'aksi' => 'edit',
                'data' => $data,
                'back' => Str::contains(url()->previous(), ['jenisinfrastruktur/tambah', 'jenisinfrastruktur/edit'])? url('/jenisinfrastruktur'): url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'jenisinfrastruktur');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'infrastruktur_nama' => 'required'
            ],[
                'infrastruktur_nama.required'  => 'Nama Infrastruktur tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = Infrastruktur::findOrFail($req->get('id'));
            $data->infrastruktur_nama = $req->get('infrastruktur_nama');
            $data->save();
            toast('Berhasil mengedit jenis infrastruktur', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('jenisinfrastruktur'));
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
    }

	public function hapus($id)
	{
		try{
            $data = Infrastruktur::findOrFail($id);
            $data->delete();
            toast('Berhasil menghapus jenis infrastruktur '.$data->infrastruktur_nama, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
