<?php

namespace App\Http\Controllers;

use App\Periode;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redis;
use Illuminate\Support\Facades\Validator;

class PeriodeController extends Controller
{
    //
    public function index(Request $req)
	{
        try{
            $periode = Periode::withTrashed()->with('pegawai')->where('periode_tahun', 'like', '%'.$req->cari.'%')->paginate(10);

            $periode->appends(['cari' => $req->cari]);
            return view('pages.administrator.periode.index', [
                'data' => $periode,
                'i' => ($req->input('page', 1) - 1) * 10,
                'cari' => $req->cari,
            ]);
        }catch(\Exception $e){
            alert()->error('Data', $e->getMessage());
            return redirect(url()->previous()? url()->previous(): 'periode');
        }
    }

    private function caching()
    {
        Redis::del('periode_aktif');
        $periode = [];
        foreach (Periode::all() as $key => $row) {
            $periode[] = $row->periode_tahun;
        }
        Redis::set('periode_aktif', collect($periode));
    }

	public function tambah()
	{
        try{
            return view('pages.administrator.periode.form', [
                'back' => Str::contains(url()->previous(), ['periode/tambah', 'periode/edit'])? '/periode': url()->previous()
            ]);
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'periode');
		}
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'periode_tahun' => 'required'
            ],[
                'periode_tahun.required' => 'Tahun tidak boleh kosong',
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

		try{
			$periode = new Periode();
			$periode->periode_tahun = $req->get('periode_tahun');
			$periode->operator = Auth::id();
            $periode->save();

            $this->caching();
            toast('Berhasil menambah periode anggaran '.$req->get('periode_tahun'), 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): 'periode');
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
    }

	public function aktif($id)
	{
		try{
            $periode = Periode::withTrashed()->findOrFail($id)->restore();
            $this->caching();
			return 1;
		}catch(\Exception $e){
			return $e->getMessage();
		}
	}

	public function nonaktif($id)
	{
		try{
            $periode = Periode::withTrashed()->findOrFail($id)->delete();
            $this->caching();
			return 0;
		}catch(\Exception $e){
			return $e->getMessage();
		}
	}

	public function hapus($id)
	{
		try{
            $periode = Periode::withTrashed()->findOrFail($id)->forceDelete();
            $this->caching();
            toast('Berhasil menghapus periode anggaran '.$id, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
