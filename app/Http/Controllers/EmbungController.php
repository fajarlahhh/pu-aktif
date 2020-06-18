<?php

namespace App\Http\Controllers;

use App\TipeKonstruks;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class EmbungController extends Controller
{
    //
    public function index(Request $req)
	{
        $data = null;

        //$data->appends(['cari' => $req->cari]);
        return view('pages.isda.embung.index', [
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'cari' => $req->cari
        ]);
    }

	public function cari(Request $req)
	{
        $tipe_konstruksi = TipeKonstruks::where('tipe_konstruksi_nama', 'like', '%'.$req->cari.'%')->orderBy('tipe_konstruksi_nama')->get();
		return $tipe_konstruksi;
    }

	public function tambah(Request $req)
	{
        try{
            return view('pages.isda.embung.form', [
                'aksi' => 'tambah',
                'back' => Str::contains(url()->previous(), ['embung/tambah', 'embung/edit'])? '/embung': url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'embung');
		}
    }

	public function do_tambah(Request $req)
	{
        return redirect($req->get('redirect')? $req->get('redirect'): route('embung'));
        $validator = Validator::make($req->all(),
            [
                'tipe_konstruksi_nama' => 'required',
                'tipe_konstruksi_harga' => 'required',
                'tipe_konstruksi_satuan' => 'required',
                'tipe_konstruksi_jenis' => 'required'
            ],[
                'tipe_konstruksi_nama.required'  => 'Nama Barang/Pekerjaan tidak boleh kosong',
                'tipe_konstruksi_harga.required'  => 'Harga Satuan (Rp.) tidak boleh kosong',
                'tipe_konstruksi_satuan.required'  => 'Satuan tidak boleh kosong',
                'tipe_konstruksi_jenis.required'  => 'Satuan tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            return implode('<br>', $validator->messages()->all());
        }

        try{
			$tipe_konstruksi = new TipeKonstruks();
			$tipe_konstruksi->tipe_konstruksi_nama = $req->get('tipe_konstruksi_nama');
			$tipe_konstruksi->tipe_konstruksi_harga = str_replace(',', '', $req->get('tipe_konstruksi_harga'));
			$tipe_konstruksi->tipe_konstruksi_satuan = $req->get('tipe_konstruksi_satuan');
			$tipe_konstruksi->tipe_konstruksi_jenis = $req->get('tipe_konstruksi_jenis');
			$tipe_konstruksi->operator = Auth::id();
            $tipe_konstruksi->save();
            toast('Berhasil menambah barang dan kegiatan '.$req->get('tipe_konstruksi_nama'), 'success')->autoClose(2000);
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
                'data' => TipeKonstruks::findOrFail($req->get('id')),
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
                'tipe_konstruksi_nama' => 'required',
                'tipe_konstruksi_harga' => 'required',
                'tipe_konstruksi_satuan' => 'required',
                'tipe_konstruksi_jenis' => 'required'
            ],[
                'tipe_konstruksi_nama.required'  => 'Nama Barang/Pekerjaan tidak boleh kosong',
                'tipe_konstruksi_harga.required'  => 'Harga Satuan (Rp.) tidak boleh kosong',
                'tipe_konstruksi_satuan.required'  => 'Satuan tidak boleh kosong',
                'tipe_konstruksi_jenis.required'  => 'Satuan tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            return implode('<br>', $validator->messages()->all());
        }

        try{
			$tipe_konstruksi = TipeKonstruks::findOrFail($req->get('id'));
			$tipe_konstruksi->tipe_konstruksi_nama = $req->get('tipe_konstruksi_nama');
			$tipe_konstruksi->tipe_konstruksi_harga = str_replace(',', '', $req->get('tipe_konstruksi_harga'));
			$tipe_konstruksi->tipe_konstruksi_satuan = $req->get('tipe_konstruksi_satuan');
			$tipe_konstruksi->tipe_konstruksi_jenis = $req->get('tipe_konstruksi_jenis');
			$tipe_konstruksi->operator = Auth::id();
            $tipe_konstruksi->save();
            toast('Berhasil menambah barang dan kegiatan '.$req->get('tipe_konstruksi_nama'), 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('embung'));
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
	}

	public function hapus($id)
	{
		try{
            $tipe_konstruksi = TipeKonstruks::findOrFail($id);
            $tipe_konstruksi->delete();
            toast('Berhasil menghapus barang dan pekerjaan '.$tipe_konstruksi->tipe_konstruksi_nama, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
