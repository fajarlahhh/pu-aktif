<?php

namespace App\Http\Controllers;

use App\KelurahanDesa;
use App\Sumur;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Grimzy\LaravelMysqlSpatial\Types\Point;

class SumurController extends Controller
{
    //
    public function index(Request $req)
	{
        $data = Sumur::where('sumur_kode', 'like', '%'.$req->cari.'%')->where('sumur_tahun_pembuatan', 'like', '%'.$req->cari.'%')->where('sumur_keterangan', 'like', '%'.$req->cari.'%')->paginate(10);

        $data->appends(['cari' => $req->cari]);
        return view('pages.isda.sumur.index', [
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'cari' => $req->cari
        ]);
    }

	public function tambah(Request $req)
	{
        return view('pages.isda.sumur.form', [
            'aksi' => 'tambah',
            'desa' => KelurahanDesa::with('kecamatan.kabupaten_kota')->orderBy('kelurahan_desa_nama')->get(),
            'back' => Str::contains(url()->previous(), ['sumur/tambah', 'sumur/edit'])? '/sumur': url()->previous(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'sumur_kode' => 'required',
                'sumur_tahun_pembuatan' => 'required'
            ],[
                'sumur_kode.required'  => 'Nama Barang/Pekerjaan tidak boleh kosong',
                'sumur_tahun_pembuatan.required'  => 'Harga Satuan (Rp.) tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            return implode('<br>', $validator->messages()->all());
        }
        try{
            $data = new Sumur();
            $data->sumur_kode = $req->get('sumur_kode');
            $data->sumur_tahun_pembuatan = str_replace(',', '', $req->get('sumur_tahun_pembuatan'));
            $data->sumur_keterangan = $req->get('sumur_keterangan');
            $data->koordinat = new Point($req->get('latitude'), $req->get('longitude'));
            $data->kelurahan_desa_id = $req->get('kelurahan_desa_id');
            $data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil menambah sumur', 'success')->autoClose(2000);
            return redirect($req->get('redirect')? $req->get('redirect'): route('sumur'));
        }catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
	}

	public function edit(Request $req)
	{
        try{
            return view('pages.isda.sumur.form', [
                'aksi' => 'edit',
                'data' => Sumur::findOrFail($req->get('id')),
                'desa' => KelurahanDesa::with('kecamatan.kabupaten_kota')->orderBy('kelurahan_desa_nama')->get(),
                'back' => Str::contains(url()->previous(), ['sumur/tambah', 'sumur/edit'])? '/sumur': url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'sumur');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'sumur_kode' => 'required',
                'sumur_tahun_pembuatan' => 'required'
            ],[
                'sumur_kode.required'  => 'Nama Barang/Pekerjaan tidak boleh kosong',
                'sumur_tahun_pembuatan.required'  => 'Harga Satuan (Rp.) tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = Sumur::findOrFail($req->get('id'));
            $data->sumur_kode = $req->get('sumur_kode');
            $data->sumur_tahun_pembuatan = str_replace(',', '', $req->get('sumur_tahun_pembuatan'));
            $data->sumur_keterangan = $req->get('sumur_keterangan');
            $data->koordinat = new Point($req->get('latitude'), $req->get('longitude'));
            $data->kelurahan_desa_id = $req->get('kelurahan_desa_id');
            $data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil mengedit sumur', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('sumur'));
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
	}

	public function hapus($id)
	{
		try{
            $data = Sumur::findOrFail($id);
            $data->delete();
            toast('Berhasil menghapus sumur '.$data->sumur_kode, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
