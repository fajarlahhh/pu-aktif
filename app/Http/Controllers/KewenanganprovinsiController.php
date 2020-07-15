<?php

namespace App\Http\Controllers;

use App\Jalan;
use App\Embung;
use App\Jembatan;
use App\SumberDana;
use App\DaerahIrigasi;
use App\Infrastruktur;
use App\KelurahanDesa;
use App\KewenanganProvinsi;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class KewenanganprovinsiController extends Controller
{
    //
    public function index(Request $req)
	{
        $tahun = $req->tahun? $req->tahun: date('Y');
        $infrastruktur = $req->infrastruktur? $req->infrastruktur: 'semua';
        $dana = $req->dana? $req->dana: 'semua';
        $data = KewenanganProvinsi::where('kewenangan_provinsi_tahun', $tahun)->where(function($q) use($req){
            $q->orWhere('kewenangan_provinsi_penanggung_jawab', 'like', '%'.$req->cari.'%')->orWhere('kewenangan_provinsi_deskripsi_kegiatan', 'like', '%'.$req->cari.'%');
        });

        if ($infrastruktur != 'semua') {
            $data = $data->where('kewenangan_provinsi_jenis_infrastruktur', $infrastruktur);
        }
        if ($dana != 'semua') {
            $data = $data->where('sumber_dana_nama', $dana);
        }

        $data = $data->paginate(10);

        $data->appends(['cari' => $req->cari]);
        return view('pages.infrastruktur.kewenanganprovinsi.index', [
            'tahun' => $tahun,
            'infrastruktur' => $infrastruktur,
            'dana' => $dana,
            'data_sumber_dana' => SumberDana::orderBy('sumber_dana_nama')->get(),
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10,
            'cari' => $req->cari
        ]);
    }

    public function infrastruktur()
    {
        $jalan = Jalan::get([
            'jalan_id as id',
            'jalan_nama as nama',
            DB::raw('jalan_nama as alias'),
            DB::raw('"Jalan" as jenis')
        ]);
        $jembatan = Jembatan::get([
            'jembatan_id as id',
            'jembatan_nama as nama',
            DB::raw('concat("Jembatan ", jembatan_nama) as alias'),
            DB::raw('"Jembatan" as jenis')
        ]);
        $di = DaerahIrigasi::get([
            'daerah_irigasi_id as id',
            'daerah_irigasi_nama as nama',
            DB::raw('concat("Daerah Irigasi ", daerah_irigasi_nama) as alias'),
            DB::raw('"Daerah Irigasi" as jenis')
        ]);
        $embung = Embung::get([
            'embung_id as id',
            'embung_nama as nama',
            DB::raw('embung_nama as alias'),
            DB::raw('"Embung" as jenis')
        ]);
        return collect($jalan)->merge($jembatan)->merge($embung)->merge($di)->sortBy('alias');
    }

	public function tambah(Request $req)
	{
        return view('pages.infrastruktur.kewenanganprovinsi.form', [
            'aksi' => 'tambah',
            'map' => [],
            'infrastruktur' => $this->infrastruktur(),
            'desa' => KelurahanDesa::with('kecamatan.kabupaten_kota')->orderBy('kelurahan_desa_nama')->get(),
            'data_sumber_dana' => SumberDana::orderBy('sumber_dana_nama')->get(),
            'back' => Str::contains(url()->previous(), ['kewenanganprovinsi/tambah', 'kewenanganprovinsi/edit'])? url('/kewenanganprovinsi'): url()->previous(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'kewenangan_provinsi_deskripsi_kegiatan' => 'required',
                'kewenangan_provinsi_tahun' => 'required',
                'kewenangan_provinsi_nilai' => 'required',
                'kewenangan_provinsi_penanggung_jawab' => 'required',
                'kewenangan_provinsi_jenis_infrastruktur' => 'required',
                'infrastruktur_id' => 'required',
                'sumber_dana_nama' => 'required'
            ],[
                'kewenangan_provinsi_deskripsi_kegiatan.required'  => 'Deskripsi Kegiatan tidak boleh kosong',
                'kewenangan_provinsi_tahun.required'  => 'Tahun tidak boleh kosong',
                'kewenangan_provinsi_nilai.required'  => 'Nilai tidak boleh kosong',
                'kewenangan_provinsi_penanggung_jawab.required'  => 'Penanggung Jawab tidak boleh kosong',
                'kewenangan_provinsi_jenis_infrastruktur.required'  => 'Jenis Infrastruktur tidak boleh kosong',
                'infrastruktur_id.required'  => 'Infrastruktur tidak boleh kosong',
                'sumber_dana_nama.required'  => 'Sumber Dana tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
            $data = new KewenanganProvinsi();
            $data->kewenangan_provinsi_deskripsi_kegiatan = $req->get('kewenangan_provinsi_deskripsi_kegiatan');
            $data->kewenangan_provinsi_jenis_infrastruktur = $req->get('kewenangan_provinsi_jenis_infrastruktur');
            $data->kewenangan_provinsi_tahun = $req->get('kewenangan_provinsi_tahun');
            $data->kewenangan_provinsi_nilai = str_replace(',', '', $req->get('kewenangan_provinsi_nilai'));
            $data->kewenangan_provinsi_penanggung_jawab = $req->get('kewenangan_provinsi_penanggung_jawab');
            $data->kewenangan_provinsi_spesifikasi = $req->get('kewenangan_provinsi_spesifikasi');
            $data->kewenangan_provinsi_keterangan = $req->get('kewenangan_provinsi_keterangan');
            $data->infrastruktur_id = $req->get('infrastruktur_id');
            $data->sumber_dana_nama = $req->get('sumber_dana_nama');
            $data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil menambah infrastruktur kewenangan provinsi', 'success')->autoClose(2000);
            return redirect($req->get('redirect')? $req->get('redirect'): route('kewenanganprovinsi'));
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
            return redirect()->back()->withInput();
		}
	}

	public function edit(Request $req)
	{
        try{
            return view('pages.infrastruktur.kewenanganprovinsi.form', [
                'aksi' => 'edit',
                'data' => KewenanganProvinsi::findOrFail($req->id),
                'infrastruktur' => $this->infrastruktur(),
                'desa' => KelurahanDesa::with('kecamatan.kabupaten_kota')->orderBy('kelurahan_desa_nama')->get(),
                'data_sumber_dana' => SumberDana::orderBy('sumber_dana_nama')->get(),
                'back' => Str::contains(url()->previous(), ['kewenanganprovinsi/tambah', 'kewenanganprovinsi/edit'])? url('/kewenanganprovinsi'): url()->previous(),
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'kewenanganprovinsi');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'kewenangan_provinsi_deskripsi_kegiatan' => 'required',
                'kewenangan_provinsi_tahun' => 'required',
                'kewenangan_provinsi_nilai' => 'required',
                'kewenangan_provinsi_penanggung_jawab' => 'required',
                'kewenangan_provinsi_jenis_infrastruktur' => 'required',
                'infrastruktur_id' => 'required',
                'sumber_dana_nama' => 'required'
            ],[
                'kewenangan_provinsi_deskripsi_kegiatan.required'  => 'Deskripsi Kegiatan tidak boleh kosong',
                'kewenangan_provinsi_tahun.required'  => 'Tahun tidak boleh kosong',
                'kewenangan_provinsi_nilai.required'  => 'Nilai tidak boleh kosong',
                'kewenangan_provinsi_penanggung_jawab.required'  => 'Penanggung Jawab tidak boleh kosong',
                'kewenangan_provinsi_jenis_infrastruktur.required'  => 'Jenis Infrastruktur tidak boleh kosong',
                'infrastruktur_id.required'  => 'Infrastruktur tidak boleh kosong',
                'sumber_dana_nama.required'  => 'Sumber Dana tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

        try{
			$data = KewenanganProvinsi::findOrFail($req->get('id'));
            $data->kewenangan_provinsi_deskripsi_kegiatan = $req->get('kewenangan_provinsi_deskripsi_kegiatan');
            $data->kewenangan_provinsi_jenis_infrastruktur = $req->get('kewenangan_provinsi_jenis_infrastruktur');
            $data->kewenangan_provinsi_tahun = $req->get('kewenangan_provinsi_tahun');
            $data->kewenangan_provinsi_nilai = str_replace(',', '', $req->get('kewenangan_provinsi_nilai'));
            $data->kewenangan_provinsi_penanggung_jawab = $req->get('kewenangan_provinsi_penanggung_jawab');
            $data->kewenangan_provinsi_spesifikasi = $req->get('kewenangan_provinsi_spesifikasi');
            $data->kewenangan_provinsi_keterangan = $req->get('kewenangan_provinsi_keterangan');
            $data->infrastruktur_id = $req->get('infrastruktur_id');
            $data->sumber_dana_nama = $req->get('sumber_dana_nama');
            $data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil mengedit infrastruktur kewenangan provinsi', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('kewenanganprovinsi'));
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
    }

	public function hapus($id)
	{
		try{
            $data = KewenanganProvinsi::findOrFail($id);
            $data->delete();
            toast('Berhasil menghapus infrastruktur kewenangan provinsi '.$data->kewenangan_provinsi_deskripsi_kegiatan, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
