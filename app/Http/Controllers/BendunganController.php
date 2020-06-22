<?php

namespace App\Http\Controllers;

use App\KelurahanDesa;
use App\Bendungan;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Grimzy\LaravelMysqlSpatial\Types\Point;

class BendunganController extends Controller
{
    //
    public function index(Request $req)
	{
        $data = Bendungan::where('bendungan_nama', 'like', '%'.$req->cari.'%')->where('bendungan_tahun_pembuatan', 'like', '%'.$req->cari.'%')->where('bendungan_keterangan', 'like', '%'.$req->cari.'%')->where('bendungan_kelas', 'like', '%'.$req->cari.'%')->paginate(10);

        $data->appends(['cari' => $req->cari]);
        return view('pages.isda.bendungan.index', [
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'cari' => $req->cari
        ]);
    }

	public function tambah(Request $req)
	{
        return view('pages.isda.bendungan.form', [
            'aksi' => 'tambah',
            'desa' => KelurahanDesa::with('kecamatan.kabupaten_kota')->orderBy('kelurahan_desa_nama')->get(),
            'back' => Str::contains(url()->previous(), ['bendungan/tambah', 'bendungan/edit'])? '/bendungan': url()->previous(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'bendungan_nama' => 'required',
                'bendungan_tahun_pembuatan' => 'required'
            ],[
                'bendungan_nama.required'  => 'Nama Barang/Pekerjaan tidak boleh kosong',
                'bendungan_tahun_pembuatan.required'  => 'Harga Satuan (Rp.) tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            return implode('<br>', $validator->messages()->all());
        }
        try{
            $data = new Bendungan();
            $data->bendungan_nama = $req->get('bendungan_nama');
            $data->bendungan_tahun_pembuatan = str_replace(',', '', $req->get('bendungan_tahun_pembuatan'));
            $data->bendungan_keterangan = $req->get('bendungan_keterangan');
            $data->bendungan_kelas = $req->get('bendungan_kelas');
            $data->koordinat = new Point($req->get('latitude'), $req->get('longitude'));
            $data->kelurahan_desa_id = $req->get('kelurahan_desa_id');
            $data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil menambah bendungan', 'success')->autoClose(2000);
            return redirect($req->get('redirect')? $req->get('redirect'): route('bendungan'));
        }catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
	}

	public function edit(Request $req)
	{
        try{
            return view('pages.isda.bendungan.form', [
                'aksi' => 'edit',
                'data' => Bendungan::findOrFail($req->get('id')),
                'desa' => KelurahanDesa::with('kecamatan.kabupaten_kota')->orderBy('kelurahan_desa_nama')->get(),
                'back' => Str::contains(url()->previous(), ['bendungan/tambah', 'bendungan/edit'])? '/bendungan': url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'bendungan');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'bendungan_nama' => 'required',
                'bendungan_tahun_pembuatan' => 'required'
            ],[
                'bendungan_nama.required'  => 'Nama Barang/Pekerjaan tidak boleh kosong',
                'bendungan_tahun_pembuatan.required'  => 'Harga Satuan (Rp.) tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = Bendungan::findOrFail($req->get('id'));
            $data->bendungan_nama = $req->get('bendungan_nama');
            $data->bendungan_tahun_pembuatan = str_replace(',', '', $req->get('bendungan_tahun_pembuatan'));
            $data->bendungan_keterangan = $req->get('bendungan_keterangan');
            $data->bendungan_kelas = $req->get('bendungan_kelas');
            $data->koordinat = new Point($req->get('latitude'), $req->get('longitude'));
            $data->kelurahan_desa_id = $req->get('kelurahan_desa_id');
            $data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil mengedit bendungan', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('bendungan'));
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
	}

	public function hapus($id)
	{
		try{
            $data = Bendungan::findOrFail($id);
            $data->delete();
            toast('Berhasil menghapus bendungan '.$data->bendungan_nama, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
