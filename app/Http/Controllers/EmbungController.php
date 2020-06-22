<?php

namespace App\Http\Controllers;

use App\KelurahanDesa;
use App\Embung;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Grimzy\LaravelMysqlSpatial\Types\Point;

class EmbungController extends Controller
{
    //
    public function index(Request $req)
	{
        $data = Embung::where('embung_nama', 'like', '%'.$req->cari.'%')->where('embung_tahun_pembuatan', 'like', '%'.$req->cari.'%')->where('embung_keterangan', 'like', '%'.$req->cari.'%')->where('embung_kelas', 'like', '%'.$req->cari.'%')->paginate(10);

        $data->appends(['cari' => $req->cari]);
        return view('pages.isda.embung.index', [
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'cari' => $req->cari
        ]);
    }

	public function tambah(Request $req)
	{
        return view('pages.isda.embung.form', [
            'aksi' => 'tambah',
            'desa' => KelurahanDesa::with('kecamatan.kabupaten_kota')->orderBy('kelurahan_desa_nama')->get(),
            'back' => Str::contains(url()->previous(), ['embung/tambah', 'embung/edit'])? '/embung': url()->previous(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'embung_nama' => 'required',
                'embung_tahun_pembuatan' => 'required'
            ],[
                'embung_nama.required'  => 'Nama Barang/Pekerjaan tidak boleh kosong',
                'embung_tahun_pembuatan.required'  => 'Harga Satuan (Rp.) tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            return implode('<br>', $validator->messages()->all());
        }
        try{
            $data = new Embung();
            $data->embung_nama = $req->get('embung_nama');
            $data->embung_tahun_pembuatan = str_replace(',', '', $req->get('embung_tahun_pembuatan'));
            $data->embung_keterangan = $req->get('embung_keterangan');
            $data->embung_kelas = $req->get('embung_kelas');
            $data->koordinat = new Point($req->get('latitude'), $req->get('longitude'));
            $data->kelurahan_desa_id = $req->get('kelurahan_desa_id');
            $data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil menambah embung', 'success')->autoClose(2000);
            return redirect($req->get('redirect')? $req->get('redirect'): route('embung'));
        }catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
	}

	public function edit(Request $req)
	{
        try{
            return view('pages.isda.embung.form', [
                'aksi' => 'edit',
                'data' => Embung::findOrFail($req->get('id')),
                'desa' => KelurahanDesa::with('kecamatan.kabupaten_kota')->orderBy('kelurahan_desa_nama')->get(),
                'back' => Str::contains(url()->previous(), ['embung/tambah', 'embung/edit'])? '/embung': url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'embung');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'embung_nama' => 'required',
                'embung_tahun_pembuatan' => 'required'
            ],[
                'embung_nama.required'  => 'Nama Barang/Pekerjaan tidak boleh kosong',
                'embung_tahun_pembuatan.required'  => 'Harga Satuan (Rp.) tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = Embung::findOrFail($req->get('id'));
            $data->embung_nama = $req->get('embung_nama');
            $data->embung_tahun_pembuatan = str_replace(',', '', $req->get('embung_tahun_pembuatan'));
            $data->embung_keterangan = $req->get('embung_keterangan');
            $data->embung_kelas = $req->get('embung_kelas');
            $data->koordinat = new Point($req->get('latitude'), $req->get('longitude'));
            $data->kelurahan_desa_id = $req->get('kelurahan_desa_id');
            $data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil mengedit embung', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('embung'));
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
	}

	public function hapus($id)
	{
		try{
            $data = Embung::findOrFail($id);
            $data->delete();
            toast('Berhasil menghapus embung '.$data->embung_nama, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
