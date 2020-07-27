<?php

namespace App\Http\Controllers;

use App\DesaMiskin;
use App\KelurahanDesa;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class DesamiskinController extends Controller
{
    //
    public function index(Request $req)
	{
        $tahun = $req->tahun? $req->tahun: date('Y');
        $data = DesaMiskin::whereHas('kelurahan_desa', function($q) use ($req){
            $q->where('kelurahan_desa_nama', 'like', '%'.$req->cari.'%');
        })->where('desa_miskin_tahun', $tahun)->orderBy('desa_miskin_id')->paginate(10);
        $data->appends(['cari' => $req->cari]);
        return view('pages.setup.desamiskin.index', [
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'tahun' => $tahun,
            'cari' => $req->cari
        ]);
    }

    public function cetak(Request $req)
	{
        $tahun = $req->tahun? $req->tahun: date('Y');
        $data = DesaMiskin::whereHas('kelurahan_desa', function($q) use ($req){
            $q->where('kelurahan_desa_nama', 'like', '%'.$req->cari.'%');
        })->where('desa_miskin_tahun', $tahun)->orderBy('desa_miskin_id')->paginate(10);
        $data->appends(['cari' => $req->cari]);
        return view('pages.setup.desamiskin.index', [
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'tahun' => $tahun,
            'cari' => $req->cari
        ]);
    }

	public function tambah(Request $req)
	{
        return view('pages.setup.desamiskin.form', [
            'aksi' => 'tambah',
            'tahun' => $req->tahun,
            'desa' => KelurahanDesa::with('kecamatan.kabupaten_kota')->orderBy('kelurahan_desa_nama')->get(),
            'back' => Str::contains(url()->previous(), ['desamiskin/tambah', 'desamiskin/edit'])? url('/desamiskin'): url()->previous(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'desa_miskin_tahun' => 'required',
                'kelurahan_desa_id' => 'required'
            ],[
                'desa_miskin_tahun.required'  => 'Tahun tidak boleh kosong',
                'kelurahan_desa_id.required'  => 'Kelurahan/Desa tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
            $data = new DesaMiskin();
            $data->desa_miskin_tahun = $req->get('desa_miskin_tahun');
            $data->kelurahan_desa_id = $req->get('kelurahan_desa_id');
            $data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil menambah desa miskin', 'success')->autoClose(2000);
            return redirect($req->get('redirect')? $req->get('redirect'): route('desamiskin'));
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'embung');
		}
	}

	public function edit($id)
	{
        try{
            $data = DesaMiskin::findOrFail($id);
            return view('pages.setup.desamiskin.form', [
                'aksi' => 'edit',
                'data' => $data,
                'desa' => KelurahanDesa::with('kecamatan.kabupaten_kota')->orderBy('kelurahan_desa_nama')->get(),
                'back' => Str::contains(url()->previous(), ['desamiskin/tambah', 'desamiskin/edit'])? url('/desamiskin'): url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'desamiskin');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'desa_miskin_tahun' => 'required',
                'kelurahan_desa_id' => 'required'
            ],[
                'desa_miskin_tahun.required'  => 'Tahun tidak boleh kosong',
                'kelurahan_desa_id.required'  => 'Kelurahan/Desa tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = DesaMiskin::findOrFail($req->get('id'));
            $data->desa_miskin_tahun = $req->get('desa_miskin_tahun');
            $data->kelurahan_desa_id = $req->get('kelurahan_desa_id');
            $data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil mengedit desa miskin', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('desamiskin'));
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
    }

	public function hapus($id)
	{
		try{
            $data = DesaMiskin::findOrFail($id);
            $data->delete();
            toast('Berhasil menghapus desa miskin tahun '.$data->desa_miskin_tahun, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
