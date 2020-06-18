<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BendunganController extends Controller
{
    //
    public function index(Request $req)
	{
        $barang_dan_pekerjaan = BarangDanPekerjaan::with('pegawai')->where(function($q) use ($req){
            $q->where('barang_dan_pekerjaan_nama', 'like', '%'.$req->cari.'%');
        })->orderBy('barang_dan_pekerjaan_nama')->paginate(10);

        try{
            $barang_dan_pekerjaan->appends(['cari' => $req->cari]);
            return view('pages.datamaster.barangdanpekerjaan.index', [
                'data' => $barang_dan_pekerjaan,
                'i' => ($req->input('page', 1) - 1) * 10,
                'cari' => $req->cari
            ]);
        }catch(\Exception $e){
            alert()->error('Data', $e->getMessage());
            return redirect(url()->previous()? url()->previous(): 'barangdanpekerjaan');
        }
    }

	public function cari(Request $req)
	{
        $barang_dan_pekerjaan = BarangDanPekerjaan::where('barang_dan_pekerjaan_nama', 'like', '%'.$req->cari.'%')->orderBy('barang_dan_pekerjaan_nama')->get();
		return $barang_dan_pekerjaan;
    }

	public function tambah(Request $req)
	{
        try{
            return view('pages.datamaster.barangdanpekerjaan.form', [
                'aksi' => 'tambah',
                'back' => Str::contains(url()->previous(), ['barangdanpekerjaan/tambah', 'barangdanpekerjaan/edit'])? '/barangdanpekerjaan': url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'barangdanpekerjaan');
		}
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'barang_dan_pekerjaan_nama' => 'required',
                'barang_dan_pekerjaan_harga' => 'required',
                'barang_dan_pekerjaan_satuan' => 'required',
                'barang_dan_pekerjaan_jenis' => 'required'
            ],[
                'barang_dan_pekerjaan_nama.required'  => 'Nama Barang/Pekerjaan tidak boleh kosong',
                'barang_dan_pekerjaan_harga.required'  => 'Harga Satuan (Rp.) tidak boleh kosong',
                'barang_dan_pekerjaan_satuan.required'  => 'Satuan tidak boleh kosong',
                'barang_dan_pekerjaan_jenis.required'  => 'Satuan tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            return implode('<br>', $validator->messages()->all());
        }

        try{
			$barang_dan_pekerjaan = new BarangDanPekerjaan();
			$barang_dan_pekerjaan->barang_dan_pekerjaan_nama = $req->get('barang_dan_pekerjaan_nama');
			$barang_dan_pekerjaan->barang_dan_pekerjaan_harga = str_replace(',', '', $req->get('barang_dan_pekerjaan_harga'));
			$barang_dan_pekerjaan->barang_dan_pekerjaan_satuan = $req->get('barang_dan_pekerjaan_satuan');
			$barang_dan_pekerjaan->barang_dan_pekerjaan_jenis = $req->get('barang_dan_pekerjaan_jenis');
			$barang_dan_pekerjaan->operator = Auth::id();
            $barang_dan_pekerjaan->save();
            toast('Berhasil menambah barang dan kegiatan '.$req->get('barang_dan_pekerjaan_nama'), 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('barangdanpekerjaan'));
        }catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
	}

	public function edit(Request $req)
	{
        try{
            return view('pages.datamaster.barangdanpekerjaan.form', [
                'aksi' => 'edit',
                'data' => BarangDanPekerjaan::findOrFail($req->get('id')),
                'back' => Str::contains(url()->previous(), ['barangdanpekerjaan/tambah', 'barangdanpekerjaan/edit'])? '/barangdanpekerjaan': url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'barangdanpekerjaan');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'barang_dan_pekerjaan_nama' => 'required',
                'barang_dan_pekerjaan_harga' => 'required',
                'barang_dan_pekerjaan_satuan' => 'required',
                'barang_dan_pekerjaan_jenis' => 'required'
            ],[
                'barang_dan_pekerjaan_nama.required'  => 'Nama Barang/Pekerjaan tidak boleh kosong',
                'barang_dan_pekerjaan_harga.required'  => 'Harga Satuan (Rp.) tidak boleh kosong',
                'barang_dan_pekerjaan_satuan.required'  => 'Satuan tidak boleh kosong',
                'barang_dan_pekerjaan_jenis.required'  => 'Satuan tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            return implode('<br>', $validator->messages()->all());
        }

        try{
			$barang_dan_pekerjaan = BarangDanPekerjaan::findOrFail($req->get('id'));
			$barang_dan_pekerjaan->barang_dan_pekerjaan_nama = $req->get('barang_dan_pekerjaan_nama');
			$barang_dan_pekerjaan->barang_dan_pekerjaan_harga = str_replace(',', '', $req->get('barang_dan_pekerjaan_harga'));
			$barang_dan_pekerjaan->barang_dan_pekerjaan_satuan = $req->get('barang_dan_pekerjaan_satuan');
			$barang_dan_pekerjaan->barang_dan_pekerjaan_jenis = $req->get('barang_dan_pekerjaan_jenis');
			$barang_dan_pekerjaan->operator = Auth::id();
            $barang_dan_pekerjaan->save();
            toast('Berhasil menambah barang dan kegiatan '.$req->get('barang_dan_pekerjaan_nama'), 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('barangdanpekerjaan'));
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
	}

	public function hapus($id)
	{
		try{
            $barang_dan_pekerjaan = BarangDanPekerjaan::findOrFail($id);
            $barang_dan_pekerjaan->delete();
            toast('Berhasil menghapus barang dan pekerjaan '.$barang_dan_pekerjaan->barang_dan_pekerjaan_nama, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
