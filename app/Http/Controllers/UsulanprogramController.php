<?php

namespace App\Http\Controllers;

use App\Akun;
use App\Bagian;
use App\Periode;
use App\UsulanProgram;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Exports\UsulanprogramExport;
use Illuminate\Support\Facades\Auth;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Redis;
use Illuminate\Support\Facades\Validator;

class UsulanprogramController extends Controller
{
    private $bulan = array('Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember');

    private $periode_aktif;

    public function __construct()
    {
        $this->periode_aktif = collect(json_decode(Redis::get('periode_aktif')));
    }

    public function index(Request $req)
	{
            $bidang = $req->bidang? $req->bidang: 'semua';
            $tahun = $req->tahun? $req->tahun: date('Y');
            $tipe = $req->tipe? $req->tipe: 0;
            $usulan = UsulanProgram::with('pegawai')->with('kegiatan.detail');
            switch ($tipe) {
                case '1':
                    $usulan = $usulan->onlyTrashed();
                    break;
                case '2':
                    $usulan = $usulan->withTrashed();
                    break;
            }
            $usulan = $usulan->where(function($q) use ($req){
                $q->whereHas('akun', function ($q) use ($req){
                    $q->where('akun_kode', 'like', '%'.$req->cari.'%')->orWhere('akun_keterangan', 'like', '%'.$req->cari.'%');
                })->orWhere('usulan_program_bidang', 'like', '%'.$req->cari.'%')->orWhere('usulan_program_tujuan', 'like', '%'.$req->cari.'%');
            })->where('periode_tahun', $tahun);
            if ($bidang != 'semua')
                $usulan = $usulan->where('usulan_program_bidang', $bidang);

            $usulan = $usulan->paginate(10);
            $usulan->appends(['bidang' => $bidang, 'tahun' => $tahun, 'tipe' => $tipe, 'cari' => $req->cari]);
            return view('pages.usulan.usulanprogram.index', [
                'data' => $usulan,
                'i' => ($req->input('page', 1) - 1) * 10,
                'bidang' => $bidang,
                'tahun' => $tahun,
                'tipe' => $tipe,
                'cari' => $req->cari,
                'data_bidang' => Bagian::all(),
                'periode' => Periode::withTrashed()->get(),
                'periode_aktif' => Periode::find($tahun)
            ]);
    }

	public function tambah(Request $req)
	{
        try{
            return view('pages.usulan.usulanprogram.form', [
                'aksi' => 'tambah',
                'back' => Str::contains(url()->previous(), ['usulanprogram/tambah', 'usulanprogram/edit'])? '/usulanprogram': url()->previous(),
                'periode' => Periode::all(),
                'bidang' => Bagian::all(),
                'program' => Akun::where(function($q){
                    $q->where('akun_kode', 'like', '3%')->orWhere('akun_tipe', 'b');
                })->whereRaw('length(akun_kode) = 5')->get()
            ]);
		}catch(\Exception $e){
            alert()->error('Tambah Program', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'usulanprogram');
		}
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'usulan_program_bidang' => 'required',
                'akun_kode' => 'required',
                'usulan_program_deskripsi' => 'required',
                'periode_tahun' => 'required',
                'usulan_program_tujuan' => 'required',
            ],[
                'usulan_program_bidang.required'  => 'Bidang tidak boleh kosong',
                'akun_kode.required'  => 'Program tidak boleh kosong',
                'usulan_program_deskripsi.required'  => 'Deskripsi tidak boleh kosong',
                'periode_tahun.required'  => 'Tahun tidak boleh kosong',
                'usulan_program_tujuan.required'  => 'Tujuan/Sasaran tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

		try{
            if (!$this->periode_aktif->contains($req->get('periode_tahun'))){
                alert()->error('Tambah Data', 'Periode '.$req->get('periode_tahun').' belum dibuka');
                return redirect()->back()->withInput();
            }

			$usulan = new UsulanProgram();
			$usulan->usulan_program_bidang = $req->get('usulan_program_bidang');
			$usulan->akun_kode = $req->get('akun_kode');
			$usulan->usulan_program_deskripsi = $req->get('usulan_program_deskripsi');
			$usulan->usulan_program_rincian = $req->get('usulan_program_rincian');
			$usulan->usulan_program_tujuan = $req->get('usulan_program_tujuan');
			$usulan->periode_tahun = $req->get('periode_tahun');
			$usulan->operator = Auth::id();
            $usulan->save();

            toast('Berhasil menambah usulan program '.$req->get('usulan_program_bidang').', tahun '.$req->get('periode_tahun'), 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): 'usulanprogram');
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
    }

	public function edit(Request $req)
	{
        try{
            $id = Crypt::decryptString($req->get('id'));
            return view('pages.usulan.usulanprogram.form', [
                'aksi' => 'edit',
                'data' => UsulanProgram::findOrFail($id),
                'back' => Str::contains(url()->previous(), ['usulanprogram/tambah', 'usulanprogram/edit'])? '/usulanprogram': url()->previous(),
                'periode' => Periode::all(),
                'bidang' => Bagian::all(),
                'program' => Akun::where(function($q){
                    $q->where('akun_kode', 'like', '3%')->orWhere('akun_tipe', 'b');
                })->whereRaw('length(akun_kode) = 5')->get()
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'usulanprogram');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'id' => 'required',
                'usulan_program_bidang' => 'required',
                'akun_kode' => 'required',
                'usulan_program_deskripsi' => 'required',
                'periode_tahun' => 'required',
                'usulan_program_tujuan' => 'required',
            ],[
                'id' => 'ID Program tidak boleh kosong',
                'usulan_program_bidang.required'  => 'Bidang tidak boleh kosong',
                'akun_kode.required'  => 'Program tidak boleh kosong',
                'usulan_program_deskripsi.required'  => 'Deskripsi tidak boleh kosong',
                'periode_tahun.required'  => 'Tahun tidak boleh kosong',
                'usulan_program_tujuan.required'  => 'Tujuan/Sasaran tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

		try{
            $tahun = Periode::find($req->get('periode_tahun'));
            if($tahun == null){
                alert()->error('Tambah Data', 'Periode '.$req->get('periode_tahun').' belum dibuka');
                return redirect()->back()->withInput();
            }

            $id = Crypt::decryptString($req->get('id'));
			$usulan = UsulanProgram::findOrFail($id);
			$usulan->usulan_program_bidang = $req->get('usulan_program_bidang');
			$usulan->akun_kode = $req->get('akun_kode');
			$usulan->usulan_program_deskripsi = $req->get('usulan_program_deskripsi');
			$usulan->usulan_program_rincian = $req->get('usulan_program_rincian');
			$usulan->usulan_program_tujuan = $req->get('usulan_program_tujuan');
			$usulan->periode_tahun = $req->get('periode_tahun');
			$usulan->operator = Auth::id();
            $usulan->save();

            toast('Berhasil mengedit usulan program '.$req->get('usulan_program_bidang').', tahun '.$req->get('periode_tahun'), 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): 'usulanprogram');
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
    }

	public function detail(Request $req)
	{
        $id = Crypt::decryptString($req->get('id'));
        $jenis = $req->get('jenis');
        $error = null;
        $data = null;
        try{
            $data = UsulanProgram::withTrashed()->with('akun')->with('kegiatan.akun')->with('kegiatan.detail')->where('usulan_program_id', $id)->first();
        }catch(\Exception $e){
            $error = $e->getMessage();
        }
        if($jenis == 'cetak'){
            return Excel::download(new UsulanprogramExport($id, $jenis, $error), 'CETAK USULAN PROGRAM BIDANG '.$data->usulan_program_bidang.' program '.$data->akun->akun_keterangan.' tahun '.$data->periode_tahun.'.xls');
        }else{
            return view('pages.usulan.usulanprogram.detail',[
                'data' => $data,
                'error' => $error,
                'jenis' => $jenis
            ]);
        }
    }

	public function hapus(Request $req)
	{
		try{
            $id = Crypt::decryptString($req->get('id'));
            UsulanProgram::with('kegiatan')->findOrFail($id)->delete();
            toast('Berhasil menghapus usulan program', 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}

	public function restore(Request $req)
	{
		try{
            $id = Crypt::decryptString($req->get('id'));
            UsulanProgram::withTrashed()->with('kegiatan')->findOrFail($id)->restore();
            toast('Berhasil mengembalikan usulan program', 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Restore Data', $e->getMessage());
		}
	}
}
