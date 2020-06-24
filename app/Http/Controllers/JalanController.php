<?php

namespace App\Http\Controllers;

use App\KelurahanDesa;
use App\Jalan;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Grimzy\LaravelMysqlSpatial\Types\Point;

class JalanController extends Controller
{
    //
    public function index(Request $req)
	{
        $data = Jalan::where('jalan_nama', 'like', '%'.$req->cari.'%')->where('jalan_tahun_pembuatan', 'like', '%'.$req->cari.'%')->where('jalan_keterangan', 'like', '%'.$req->cari.'%')->where('jalan_kelas', 'like', '%'.$req->cari.'%')->paginate(10);

        $data->appends(['cari' => $req->cari]);
        return view('pages.isda.jalan.index', [
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'cari' => $req->cari
        ]);
    }

	public function tambah(Request $req)
	{
        return view('pages.isda.jalan.form', [
            'aksi' => 'tambah',
            'desa' => KelurahanDesa::with('kecamatan.kabupaten_kota')->orderBy('kelurahan_desa_nama')->get(),
            'back' => Str::contains(url()->previous(), ['jalan/tambah', 'jalan/edit'])? '/jalan': url()->previous(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'jalan_nama' => 'required',
                'jalan_tahun_pembuatan' => 'required'
            ],[
                'jalan_nama.required'  => 'Nama Barang/Pekerjaan tidak boleh kosong',
                'jalan_tahun_pembuatan.required'  => 'Harga Satuan (Rp.) tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            return implode('<br>', $validator->messages()->all());
        }
        try{
            $data = new Jalan();
            $data->jalan_nama = $req->get('jalan_nama');
            $data->jalan_tahun_pembuatan = str_replace(',', '', $req->get('jalan_tahun_pembuatan'));
            $data->jalan_keterangan = $req->get('jalan_keterangan');
            $data->jalan_kelas = $req->get('jalan_kelas');
            $data->koordinat = new Point($req->get('latitude'), $req->get('longitude'));
            $data->kelurahan_desa_id = $req->get('kelurahan_desa_id');
            $data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil menambah jalan', 'success')->autoClose(2000);
            return redirect($req->get('redirect')? $req->get('redirect'): route('jalan'));
        }catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
	}

	public function edit(Request $req)
	{
        try{
            return view('pages.isda.jalan.form', [
                'aksi' => 'edit',
                'data' => Jalan::findOrFail($req->get('id')),
                'desa' => KelurahanDesa::with('kecamatan.kabupaten_kota')->orderBy('kelurahan_desa_nama')->get(),
                'back' => Str::contains(url()->previous(), ['jalan/tambah', 'jalan/edit'])? '/jalan': url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'jalan');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'jalan_nama' => 'required',
                'jalan_tahun_pembuatan' => 'required'
            ],[
                'jalan_nama.required'  => 'Nama Barang/Pekerjaan tidak boleh kosong',
                'jalan_tahun_pembuatan.required'  => 'Harga Satuan (Rp.) tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = Jalan::findOrFail($req->get('id'));
            $data->jalan_nama = $req->get('jalan_nama');
            $data->jalan_tahun_pembuatan = str_replace(',', '', $req->get('jalan_tahun_pembuatan'));
            $data->jalan_keterangan = $req->get('jalan_keterangan');
            $data->jalan_kelas = $req->get('jalan_kelas');
            $data->koordinat = new Point($req->get('latitude'), $req->get('longitude'));
            $data->kelurahan_desa_id = $req->get('kelurahan_desa_id');
            $data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil mengedit jalan', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('jalan'));
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
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
