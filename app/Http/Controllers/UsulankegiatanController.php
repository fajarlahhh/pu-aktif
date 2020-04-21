<?php

namespace App\Http\Controllers;

use PDF;
use App\Akun;
use App\Bagian;
use App\Periode;
use App\UsulanProgram;
use App\UsulanKegiatan;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\UsulanKegiatanDetail;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\UsulankegiatanExport;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Redis;
use Illuminate\Support\Facades\Validator;

class UsulankegiatanController extends Controller
{
    private $bulan = array('Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember');

    private $periode_aktif;

    public function __construct()
    {
        $this->periode_aktif = collect(json_decode(Redis::get('periode_aktif')));
    }

    public function index(Request $req)
	{
        try{
            $program = Crypt::decryptString($req->get('program'));
            $verifikasi = $req->verifikasi? $req->verifikasi: 0;
            $tipe = $req->tipe? $req->tipe: 0;
            $usulan = UsulanKegiatan::with('detail')->with('program')->with('pegawai')->where('usulan_program_id', $program);
            switch ($tipe) {
                case '1':
                    $usulan = $usulan->onlyTrashed();
                    break;
                case '2':
                    $usulan = $usulan->withTrashed();
                    break;
            }
            if($verifikasi < 2)
                $usulan = $usulan->where('verifikasi', $verifikasi);
            $usulan = $usulan->where(function($q) use ($req){
                $q->whereHas('akun', function ($q) use ($req){
                    $q->where('akun_keterangan', 'like', '%'.$req->cari.'%');
                })->orWhere('usulan_kegiatan_deskripsi', 'like', '%'.$req->cari.'%')->orWhere('usulan_kegiatan_rincian', 'like', '%'.$req->cari.'%')->orWhere('usulan_kegiatan_penanggung_jawab', 'like', '%'.$req->cari.'%');
            })->paginate(10);

            $usulan->appends(['verifikasi' => $verifikasi,'tipe' => $tipe, 'cari' => $req->cari]);
            return view('pages.usulan.usulanprogram.kegiatan.index', [
                'data' => $usulan,
                'i' => ($req->input('page', 1) - 1) * 10,
                'verifikasi' => $verifikasi,
                'program' => UsulanProgram::findOrFail($program),
                'tipe' => $tipe,
                'cari' => $req->cari
            ]);
        }catch(\Exception $e){
            alert()->error('Data', $e->getMessage());
            return redirect(url()->previous()? url()->previous(): 'usulanprogram');
        }
    }

	public function sub_kegiatan()
	{
        return view('pages.usulan.usulanprogram.kegiatan.subkegiatan',[
            'bulan' => $this->bulan,
            'sumber' => 'manual',
            'i' => 0,
            'waktu' => date('YmdHisu')
        ]);
    }

	public function tambah(Request $req)
	{
        try{
            $id = Crypt::decryptString($req->get('program'));
            $program = UsulanProgram::findOrFail($id);
            return view('pages.usulan.usulanprogram.kegiatan.form', [
                'aksi' => 'tambah',
                'back' => Str::contains(url()->previous(), ['usulanprogram/kegiatan/tambah', 'usulanprogram/kegiatan/edit'])? route('usulankegiatan', array('program' => $req->get('program'), 'kegiatan' => $req->get('kegiatan'))): url()->previous(),
                'program' => $program,
                'subbidang' => Bagian::with('seksi')->where('nm_bagian', $program->usulan_program_bidang)->first(),
                'bulan' => $this->bulan,
                'kegiatan' => Akun::where('akun_kode', 'like', $program->akun_kode.'%')->whereRaw('length(akun_kode) = 8')->get()
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
                'usulan_program_id' => 'required',
                'akun_kode' => 'required',
                'usulan_kegiatan_deskripsi' => 'required'
            ],[
                'usulan_program_id.required'  => 'ID Program tidak boleh kosong',
                'akun_kode.required'  => 'Kegiatan tidak boleh kosong',
                'usulan_kegiatan_deskripsi.required'  => 'Deskripsi tidak boleh kosong'
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
            $program = Crypt::decryptString($req->get('usulan_program_id'));
            $kegiatan = (UsulanKegiatan::where('usulan_program_id', $program)->withTrashed()->count() > 0? substr(UsulanKegiatan::latest('usulan_kegiatan_id')->withTrashed()->where('usulan_program_id', $program)->first()->usulan_kegiatan_id, strlen($program)): 0) + 1;

            DB::transaction(function () use($program, $kegiatan, $req) {
                $usulan = new UsulanKegiatan();
                $usulan->usulan_program_id = $program;
                $usulan->usulan_kegiatan_id = $program.$kegiatan;
                $usulan->akun_kode = $req->get('akun_kode');
                $usulan->usulan_kegiatan_deskripsi = $req->get('usulan_kegiatan_deskripsi');
                $usulan->usulan_kegiatan_rincian = $req->get('usulan_kegiatan_rincian');
                $usulan->usulan_kegiatan_penanggung_jawab = $req->get('usulan_kegiatan_penanggung_jawab');
                $usulan->operator = Auth::id();
                $usulan->save();

                $id = 0;
                $detail = [];
                if($req->get('barang_dan_pekerjaan_id')){
                    foreach ($req->get('barang_dan_pekerjaan_id') as $key => $barang) {
                        array_push($detail, [
                            'usulan_kegiatan_id' => $program.$kegiatan,
                            'usulan_kegiatan_detail_id' => $id,
                            'barang_dan_pekerjaan_id' => $barang,
                            'usulan_kegiatan_detail_nilai_standar' => 0,
                            'usulan_kegiatan_detail_nilai' => str_replace(',', '', $req->get('usulan_kegiatan_detail_nilai')[$id]),
                            'usulan_kegiatan_detail_volume' => str_replace(',', '', $req->get('usulan_kegiatan_detail_volume')[$id]),
                            'usulan_kegiatan_detail_nilai_total' => str_replace(',', '', $req->get('usulan_kegiatan_detail_nilai_total')[$id]),
                            'usulan_kegiatan_detail_periode_1' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_1')[$id]),
                            'usulan_kegiatan_detail_periode_2' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_2')[$id]),
                            'usulan_kegiatan_detail_periode_3' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_3')[$id]),
                            'usulan_kegiatan_detail_periode_4' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_4')[$id]),
                            'usulan_kegiatan_detail_periode_5' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_5')[$id]),
                            'usulan_kegiatan_detail_periode_6' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_6')[$id]),
                            'usulan_kegiatan_detail_periode_7' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_7')[$id]),
                            'usulan_kegiatan_detail_periode_8' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_8')[$id]),
                            'usulan_kegiatan_detail_periode_9' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_9')[$id]),
                            'usulan_kegiatan_detail_periode_10' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_10')[$id]),
                            'usulan_kegiatan_detail_periode_11' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_11')[$id]),
                            'usulan_kegiatan_detail_periode_12' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_12')[$id]),
                        ]);
                        $id++;
                    }
                    UsulanKegiatanDetail::insert($detail);
                }
            });

            toast('Berhasil menambah usulan kegiatan bidang '.$req->get('usulan_program_bidang').' tahun '.$req->get('periode_tahun'), 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('usulankegiatan', array('program' => $req->get('usulan_program_id'))));
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
    }

	public function edit(Request $req)
	{
        try{
            $kegiatan = Crypt::decryptString($req->get('kegiatan'));
            $program = UsulanProgram::findOrFail(Crypt::decryptString($req->get('program')));
            return view('pages.usulan.usulanprogram.kegiatan.form', [
                'aksi' => 'edit',
                'data' => UsulanKegiatan::with('detail.barang')->findOrFail($kegiatan),
                'back' => Str::contains(url()->previous(), ['usulanprogram/kegiatan/tambah', 'usulanprogram/kegiatan/edit'])? route('usulankegiatan', array('program' => $req->get('program'), 'kegiatan' => $req->get('kegiatan'))): url()->previous(),
                'program' => $program,
                'subbidang' => Bagian::with('seksi')->where('nm_bagian', $program->usulan_program_bidang)->first(),
                'bulan' => $this->bulan,
                'kegiatan' => Akun::where('akun_kode', 'like', $program->akun_kode.'%')->whereRaw('length(akun_kode) = 8')->get()
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
                'usulan_program_id' => 'required',
                'usulan_kegiatan_id' => 'required',
                'akun_kode' => 'required',
                'usulan_kegiatan_deskripsi' => 'required'
            ],[
                'usulan_program_id.required'  => 'ID Program tidak boleh kosong',
                'usulan_kegiatan_id.required'  => 'ID Kegiatan tidak boleh kosong',
                'akun_kode.required'  => 'Kegiatan tidak boleh kosong',
                'usulan_kegiatan_deskripsi.required'  => 'Deskripsi tidak boleh kosong'
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
            $program = Crypt::decryptString($req->get('usulan_program_id'));
            $kegiatan = Crypt::decryptString($req->get('usulan_kegiatan_id'));

            DB::transaction(function () use($program, $kegiatan, $req) {
                $usulan = UsulanKegiatan::findOrFail($kegiatan);
                $usulan->usulan_program_id = $program;
                $usulan->akun_kode = $req->get('akun_kode');
                $usulan->usulan_kegiatan_deskripsi = $req->get('usulan_kegiatan_deskripsi');
                $usulan->usulan_kegiatan_rincian = $req->get('usulan_kegiatan_rincian');
                $usulan->usulan_kegiatan_penanggung_jawab = $req->get('usulan_kegiatan_penanggung_jawab');
                $usulan->operator = Auth::id();
                $usulan->save();

                $id = 0;
                $detail = [];
                UsulanKegiatanDetail::where('usulan_kegiatan_id', $kegiatan)->delete();
                foreach ($req->get('barang_dan_pekerjaan_id') as $key => $barang) {
                    array_push($detail, [
                        'usulan_kegiatan_id' => $kegiatan,
                        'usulan_kegiatan_detail_id' => $id,
                        'barang_dan_pekerjaan_id' => $barang,
                        'usulan_kegiatan_detail_nilai_standar' => 0,
                        'usulan_kegiatan_detail_nilai' => str_replace(',', '', $req->get('usulan_kegiatan_detail_nilai')[$id]),
                        'usulan_kegiatan_detail_volume' => str_replace(',', '', $req->get('usulan_kegiatan_detail_volume')[$id]),
                        'usulan_kegiatan_detail_nilai_total' => str_replace(',', '', $req->get('usulan_kegiatan_detail_nilai_total')[$id]),
                        'usulan_kegiatan_detail_periode_1' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_1')[$id]),
                        'usulan_kegiatan_detail_periode_2' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_2')[$id]),
                        'usulan_kegiatan_detail_periode_3' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_3')[$id]),
                        'usulan_kegiatan_detail_periode_4' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_4')[$id]),
                        'usulan_kegiatan_detail_periode_5' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_5')[$id]),
                        'usulan_kegiatan_detail_periode_6' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_6')[$id]),
                        'usulan_kegiatan_detail_periode_7' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_7')[$id]),
                        'usulan_kegiatan_detail_periode_8' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_8')[$id]),
                        'usulan_kegiatan_detail_periode_9' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_9')[$id]),
                        'usulan_kegiatan_detail_periode_10' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_10')[$id]),
                        'usulan_kegiatan_detail_periode_11' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_11')[$id]),
                        'usulan_kegiatan_detail_periode_12' => str_replace(',', '', $req->get('usulan_kegiatan_detail_periode_12')[$id]),
                    ]);
                    $id++;
                }
                UsulanKegiatanDetail::insert($detail);
            });

            toast('Berhasil mengedit usulan kegiatan bidang '.$req->get('usulan_program_bidang').' tahun '.$req->get('periode_tahun'), 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): route('usulankegiatan', array('program' => $req->get('usulan_program_id'))));
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
            $data = UsulanKegiatan::withTrashed()->with('akun')->with('detail')->where('usulan_kegiatan_id', $id)->first();
        }catch(\Exception $e){
            $error = $e->getMessage();
        }
        if($jenis == 'cetak'){
            return Excel::download(new UsulankegiatanExport($id, $jenis, $error), 'CETAK USULAN KEGIATAN BIDANG '.$data->usulan_program_bidang.' kegiatan '.$data->akun->akun_keterangan.' tahun '.$data->periode_tahun.'.xls');
        }else{
            return view('pages.usulan.usulanprogram.kegiatan.detail',[
                'data' => $data,
                'error' => $error,
                'jenis' => $jenis,
                'bulan' => $this->bulan
            ]);
        }
    }

	public function hapus(Request $req)
	{
		try{
            $id = Crypt::decryptString($req->get('id'));
            UsulanKegiatan::findOrFail($id)->delete();
            toast('Berhasil menghapus data kegiatan', 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}

	public function restore(Request $req)
	{
		try{
            $id = Crypt::decryptString($req->get('id'));
            UsulanKegiatan::withTrashed()->findOrFail($id)->restore();
            toast('Berhasil mengembalikan data kegiatan', 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Restore Data', $e->getMessage());
		}
	}
}
