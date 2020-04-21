<?php

namespace App\Http\Controllers;

use PDF;
use App\Akun;
use App\Bagian;
use App\PaketPB;
use App\Periode;
use App\Wilayah;
use App\Golongan;
use App\UsulanSambungBaru;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\UsulanSambungBaruPeriode;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Redis;
use Illuminate\Support\Facades\Validator;

class UsulansambungbaruController extends Controller
{
    //
    private $bulan = array('Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember');

    public function index(Request $req)
	{
        $verifikasi = $req->verifikasi? $req->verifikasi: 0;
        $tahun = $req->tahun? $req->tahun: date('Y');
        $tipe = $req->tipe? $req->tipe: 0;
        $usulan = UsulanSambungBaru::with('pegawai');
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
            })->orWhereHas('paket', function ($q) use ($req){
                $q->where('paket_ID', 'like', '%'.$req->cari.'%')->orWhere('paket_diameter', 'like', '%'.$req->cari.'%');
            })->orWhereHas('golongan', function ($q) use ($req){
                $q->where('golongan_ID', 'like', '%'.$req->cari.'%')->orWhere('golongan_nama', 'like', '%'.$req->cari.'%');
            })->orWhere('usulan_sambung_baru_keterangan', 'like', '%'.$req->cari.'%')->orWhere('wilayah_nama', 'like', '%'.$req->cari.'%');
        })->where('periode_tahun', $tahun);

        if($verifikasi != 2)
            $usulan = $usulan->where('verifikasi', $verifikasi);

        $usulan = $usulan->paginate(10);

        $usulan->appends(['verifikasi' => $verifikasi, 'tahun' => $tahun, 'tipe' => $tipe, 'cari' => $req->cari]);
        return view('pages.usulan.usulansambungbaru.index', [
            'data' => $usulan,
            'i' => ($req->input('page', 1) - 1) * 10,
            'verifikasi' => $verifikasi,
            'tahun' => $tahun,
            'tipe' => $tipe,
            'cari' => $req->cari,
            'periode' => Periode::withTrashed()->get(),
            'periode_aktif' => Periode::find($tahun)
        ]);
    }

	public function tambah(Request $req)
	{
        try{
            return view('pages.usulan.usulansambungbaru.form', [
                'bidang' => Bagian::all(),
                'back' => Str::contains(url()->previous(), ['usulansambungbaru/tambah', 'usulansambungbaru/edit'])? '/usulansambungbaru': url()->previous(),
                'periode' => collect(json_decode(Redis::get('periode_aktif'))),
                'aksi' => 'Tambah',
                'banyak' => $req->jumlah,
                'bulan' => $this->bulan,
                'paket' => PaketPB::all(),
                'wilayah' => Wilayah::all(),
                'pendapatan' => Akun::where('akun_tipe', 'p')->whereRaw('length(akun_kode) = 8')->get(),
                'golongan' => Golongan::with('tarif')->get()
            ]);
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'usulansambungbaru');
		}
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'periode_tahun' => 'required',
                'akun_kode' => 'required',
                'golongan_id' => 'required',
                'wilayah_nama' => 'required',
                'paket_id' => 'required',
                'usulan_sambung_baru_biaya' => 'required'
            ],[
                'periode_tahun.required'  => 'Tahun tidak boleh kosong',
                'akun_kode.required'  => 'Kode Akun tidak boleh kosong',
                'golongan_id.required'  => 'Golongan tidak boleh kosong',
                'wilayah_nama.required'  => 'Wilayah tidak boleh kosong',
                'paket_id' => 'Paket tidak boleh kosong',
                'usulan_sambung_baru_biaya' => 'Biaya Standard tidak boleh kosong'
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

			DB::transaction(function () use ($req) {
                $usulan = new UsulanSambungBaru();
                $usulan->golongan_id = $req->get('golongan_id');
                $usulan->wilayah_nama = $req->get('wilayah_nama');
                $usulan->usulan_sambung_baru_keterangan = $req->get('usulan_sambung_baru_keterangan');
                $usulan->usulan_sambung_baru_biaya = $req->get('usulan_sambung_baru_biaya');
                $usulan->paket_id = $req->get('paket_id');
                $usulan->akun_kode = $req->get('akun_kode');
                $usulan->periode_tahun = $req->get('periode_tahun');
                $usulan->verifikasi = 0;
                $usulan->operator = Auth::id();
                $usulan->save();

                $periode = [];
                for ($i=0; $i < 12; $i++) {
                    $periode[] = [
                        'usulan_sambung_baru_id' => $usulan->usulan_sambung_baru_id,
                        'usulan_sambung_baru_periode_bulan' => $i + 1,
                        'usulan_sambung_baru_periode_pelanggan' => $req->get('usulan_sambung_baru_periode_pelanggan'.$i)? str_replace(',', '', $req->get('usulan_sambung_baru_periode_pelanggan'.$i)): 0,
                        'usulan_sambung_baru_periode_biaya_standar' => $req->get('usulan_sambung_baru_periode_biaya_standar'.$i)? str_replace(',', '', $req->get('usulan_sambung_baru_periode_biaya_standar'.$i)): 0,
                        'usulan_sambung_baru_periode_ppn' => $req->get('usulan_sambung_baru_periode_ppn'.$i)? str_replace(',', '', $req->get('usulan_sambung_baru_periode_ppn'.$i)): 0,
                        'usulan_sambung_baru_periode_total_biaya' => $req->get('usulan_sambung_baru_periode_total_biaya'.$i)? str_replace(',', '', $req->get('usulan_sambung_baru_periode_total_biaya'.$i)): 0
                    ];
                }
                UsulanSambungBaruPeriode::insert($periode);
            });

            toast('Berhasil menambah usulan sambung baru '.$req->get('periode_tahun'), 'success')->autoClose(2000);
            if($req->get('banyak') == 1)
                return redirect('usulansambungbaru/tambah?jumlah=banyak');
            else
                return redirect($req->get('redirect')? $req->get('redirect'): 'usulansambungbaru');
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
            return redirect()->back()->withInput();
        }
    }

	public function edit(Request $req)
	{
        try{
            $id = Crypt::decryptString($req->get('id'));
            return view('pages.usulan.usulansambungbaru.form', [
                'data' => UsulanSambungBaru::findOrFail($id),
                'bidang' => Bagian::all(),
                'back' => Str::contains(url()->previous(), ['usulansambungbaru/tambah', 'usulansambungbaru/edit'])? '/usulansambungbaru': url()->previous(),
                'periode' => collect(json_decode(Redis::get('periode_aktif'))),
                'aksi' => 'Edit',
                'banyak' => $req->jumlah,
                'bulan' => $this->bulan,
                'paket' => PaketPB::all(),
                'wilayah' => Wilayah::all(),
                'pendapatan' => Akun::where('akun_tipe', 'p')->whereRaw('length(akun_kode) = 8')->get(),
                'golongan' => Golongan::with('tarif')->get()
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'usulansambungbaru');
		}
    }

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'periode_tahun' => 'required',
                'akun_kode' => 'required',
                'golongan_id' => 'required',
                'wilayah_nama' => 'required',
                'paket_id' => 'required',
                'usulan_sambung_baru_biaya' => 'required'
            ],[
                'periode_tahun.required'  => 'Tahun tidak boleh kosong',
                'akun_kode.required'  => 'Kode Akun tidak boleh kosong',
                'golongan_id.required'  => 'Golongan tidak boleh kosong',
                'wilayah_nama.required'  => 'Wilayah tidak boleh kosong',
                'paket_id' => 'Paket tidak boleh kosong',
                'usulan_sambung_baru_biaya' => 'Biaya Standard tidak boleh kosong'
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
			DB::transaction(function () use ($req, $id) {
                $usulan = UsulanSambungBaru::findOrFail($id);
                $usulan->golongan_id = $req->get('golongan_id');
                $usulan->wilayah_nama = $req->get('wilayah_nama');
                $usulan->usulan_sambung_baru_keterangan = $req->get('usulan_sambung_baru_keterangan');
                $usulan->usulan_sambung_baru_biaya = $req->get('usulan_sambung_baru_biaya');
                $usulan->paket_id = $req->get('paket_id');
                $usulan->akun_kode = $req->get('akun_kode');
                $usulan->periode_tahun = $req->get('periode_tahun');
                $usulan->verifikasi = 0;
                $usulan->operator = Auth::id();
                $usulan->save();

                UsulanSambungBaruPeriode::where('usulan_sambung_baru_id', $id)->delete();
                $periode = [];
                for ($i=0; $i < 12; $i++) {
                    $periode[] = [
                        'usulan_sambung_baru_id' => $usulan->usulan_sambung_baru_id,
                        'usulan_sambung_baru_periode_bulan' => $i + 1,
                        'usulan_sambung_baru_periode_pelanggan' => $req->get('usulan_sambung_baru_periode_pelanggan'.$i)? str_replace(',', '', $req->get('usulan_sambung_baru_periode_pelanggan'.$i)): 0,
                        'usulan_sambung_baru_periode_biaya_standar' => $req->get('usulan_sambung_baru_periode_biaya_standar'.$i)? str_replace(',', '', $req->get('usulan_sambung_baru_periode_biaya_standar'.$i)): 0,
                        'usulan_sambung_baru_periode_ppn' => $req->get('usulan_sambung_baru_periode_ppn'.$i)? str_replace(',', '', $req->get('usulan_sambung_baru_periode_ppn'.$i)): 0,
                        'usulan_sambung_baru_periode_total_biaya' => $req->get('usulan_sambung_baru_periode_total_biaya'.$i)? str_replace(',', '', $req->get('usulan_sambung_baru_periode_total_biaya'.$i)): 0
                    ];
                }
                UsulanSambungBaruPeriode::insert($periode);
            });

            toast('Berhasil mengubah usulan sambung baru '.$req->get('periode_tahun'), 'success')->autoClose(2000);
            return redirect($req->get('redirect')? $req->get('redirect'): 'usulansambungbaru');
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
            $data = UsulanSambungBaru::withTrashed()->findOrFail($id);
        }catch(\Exception $e){
            $error = $e->getMessage();
        }
        if($jenis == 'cetak'){
            $pdf = PDF::loadView('layouts.print', [
                'data' => $data,
                'error' => $error,
                'jenis' => $jenis,
                'halaman' => 'pages.usulan.usulansambungbaru.detail',
                'bulan' => $this->bulan,
                'judul' => 'CETAK USULAN SAMBUNG BARU'
            ], [], [
                'format' => 'A4'
            ]);
            return $pdf->stream('CETAK USULAN SAMBUNG BARU '.$data->usulan_sambung_baru_id);
        }else{
            return view('pages.usulan.usulansambungbaru.detail',[
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
            UsulanSambungBaru::findOrFail($id)->delete();
            toast('Berhasil menghapus usulan sambung baru', 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}

	public function restore(Request $req)
	{
		try{
            $id = Crypt::decryptString($req->get('id'));
            UsulanSambungBaru::withTrashed()->findOrFail($id)->restore();
            toast('Berhasil mengembalikan usulan sambung baru', 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Restore Data', $e->getMessage());
		}
	}
}
