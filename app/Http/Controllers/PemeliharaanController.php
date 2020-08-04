<?php

namespace App\Http\Controllers;

use App\Das;
use App\Spam;
use App\Jalan;
use App\Sumur;
use App\Embung;
use App\MataAir;
use App\Drainase;
use App\Jembatan;
use App\Bendungan;
use App\Kecamatan;
use App\SumberDana;
use App\Pemeliharaan;
use App\DaerahIrigasi;
use App\KabupatenKota;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class PemeliharaanController extends Controller
{
    //
    public function index(Request $req)
	{
        $tahun = $req->tahun? $req->tahun: date('Y');
        $infrastruktur = $req->infrastruktur? $req->infrastruktur: 'semua';
        $pemeliharaan = $req->pemeliharaan? $req->pemeliharaan: 'semua';
        $dana = $req->dana? $req->dana: 'semua';

        $data = Pemeliharaan::with('kabupaten_kota')->where('pemeliharaan_tahun', $tahun)->where(function($q) use ($req){
            $q->orWhere('pemeliharaan_penanggung_jawab', 'like', '%'.$req->cari.'%')->orWhere('pemeliharaan_uraian', 'like', '%'.$req->cari.'%')->orWhere('pemeliharaan_nilai', 'like', '%'.$req->cari.'%');
        });

        if ($infrastruktur != 'semua') {
            $data = $data->where('infrastruktur_jenis', $infrastruktur);
            switch ($infrastruktur) {
                case 'Jalan' :
                    $data = $data->orWhereHas('jalan', function($q) use ($req){
                        $q->where('jalan_nama', 'like', '%'.$req->cari.'%');
                    });
                break;
                case 'Jembatan' :
                    $data = $data->orWhereHas('jembatan', function($q) use ($req){
                        $q->where('jembatan_nama', 'like', '%'.$req->cari.'%');
                    });
                break;
                case 'DAS' :
                    $data = $data->orWhereHas('das', function($q) use ($req){
                        $q->where('das_nama', 'like', '%'.$req->cari.'%');
                    });
                break;
                case 'Drainase' :
                    $data = $data->orWhereHas('drainase', function($q) use ($req){
                        $q->where('drainase_nama', 'like', '%'.$req->cari.'%');
                    });
                break;
                case 'SPAM' :
                    $data = $data->orWhereHas('spam', function($q) use ($req){
                        $q->where('spam_nama_unit', 'like', '%'.$req->cari.'%');
                    });
                break;
                case 'Sumur' :
                    $data = $data->orWhereHas('sumur', function($q) use ($req){
                        $q->where('sumur_kode', 'like', '%'.$req->cari.'%');
                    });
                break;
                case 'Bendungan' :
                    $data = $data->orWhereHas('bendungan', function($q) use ($req){
                        $q->where('bendungan_nama', 'like', '%'.$req->cari.'%');
                    });
                break;
                case 'Daerah Irigasi' :
                    $data = $data->orWhereHas('daerah_irigasi', function($q) use ($req){
                        $q->where('daerah_irigasi_nama', 'like', '%'.$req->cari.'%');
                    });
                break;
                case 'Embung' :
                    $data = $data->orWhereHas('embung', function($q) use ($req){
                        $q->where('embung_nama', 'like', '%'.$req->cari.'%');
                    });
                break;
                case 'Mata Air' :
                    $data = $data->orWhereHas('mata_air', function($q) use ($req){
                        $q->where('mata_air_nama', 'like', '%'.$req->cari.'%');
                    });
                break;
            }
        }

        if ($pemeliharaan != 'semua') {
            $data = $data->where('pemeliharaan_jenis', $pemeliharaan);
        }

        if ($dana != 'semua') {
            $data = $data->where('sumber_dana_id', $dana);
        }

        $data = $data->paginate(10);

        $data->appends([
            'cari' => $req->cari,
            'tahun' => $tahun,
            'pemeliharaan' => $pemeliharaan,
            'infrastruktur' => $infrastruktur,
            'dana' => $dana
            ]);
        return view('pages.pemeliharaan.index', [
            'tahun' => $tahun,
            'pemeliharaan' => $pemeliharaan,
            'infrastruktur' => $infrastruktur,
            'dana' => $dana,
            'cari' => $req->cari,
            'data_sumber_dana' => SumberDana::orderBy('sumber_dana_nama')->get(),
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10
        ]);
    }

    public function cari_infrastruktur(Request $req)
    {

        $jalan = Jalan::where('jalan_nama', 'like', '%'.$req->cari.'%')->get([
            'jalan_id as id',
            DB::raw('"Bina Marga" as tipe'),
            'jalan_nama as nama',
            DB::raw('"blue" as warna'),
            DB::raw('"Jalan" as jenis'),
            DB::raw('ST_Y(marker) as longitude'),
            DB::raw('ST_X(marker) as latitude')
        ]);
        $jembatan = Jembatan::where('jembatan_nama', 'like', '%'.$req->cari.'%')->get([
            'jembatan_id as id',
            DB::raw('"Bina Marga" as tipe'),
            'jembatan_nama as nama',
            DB::raw('"indigo" as warna'),
            DB::raw('"Jembatan" as jenis'),
            DB::raw('ST_Y(marker) as longitude'),
            DB::raw('ST_X(marker) as latitude')
        ]);
        $das = Das::where('das_nama', 'like', '%'.$req->cari.'%')->get([
            'das_id as id',
            DB::raw('"Cipta Karya" as tipe'),
            'das_nama as nama',
            DB::raw('"lime" as warna'),
            DB::raw('"Daerah aliran sungai" as jenis'),
            DB::raw('ST_Y(marker) as longitude'),
            DB::raw('ST_X(marker) as latitude')
        ]);
        $drainase = Drainase::where('drainase_nama', 'like', '%'.$req->cari.'%')->get([
            'drainase_id as id',
            DB::raw('"Cipta Karya" as tipe'),
            'drainase_nama as nama',
            DB::raw('"green" as warna'),
            DB::raw('"Drainase" as jenis'),
            DB::raw('ST_Y(marker) as longitude'),
            DB::raw('ST_X(marker) as latitude')
        ]);
        $spam = Spam::where('spam_nama_unit', 'like', '%'.$req->cari.'%')->get([
            'spam_id as id',
            DB::raw('"Cipta Karya" as tipe'),
            'spam_nama_unit as nama',
            DB::raw('"orange" as warna'),
            DB::raw('"SPAM" as jenis'),
            DB::raw('ST_Y(marker) as longitude'),
            DB::raw('ST_X(marker) as latitude')
        ]);
        $sumur = Sumur::where('sumur_kode', 'like', '%'.$req->cari.'%')->get([
            'sumur_id as id',
            DB::raw('"Cipta Karya" as tipe'),
            'sumur_kode as nama',
            DB::raw('"yellow" as warna'),
            DB::raw('"Sumur" as jenis'),
            DB::raw('ST_Y(marker) as longitude'),
            DB::raw('ST_X(marker) as latitude')
        ]);
        $bendungan = Bendungan::where('bendungan_nama', 'like', '%'.$req->cari.'%')->get([
            'bendungan_id as id',
            DB::raw('"SDA" as tipe'),
            'bendungan_nama as nama',
            DB::raw('"red" as warna'),
            DB::raw('"Bendungan" as jenis'),
            DB::raw('ST_Y(marker) as longitude'),
            DB::raw('ST_X(marker) as latitude')
        ]);
        $di = DaerahIrigasi::where('daerah_irigasi_nama', 'like', '%'.$req->cari.'%')->get([
            'daerah_irigasi_id as id',
            DB::raw('"SDA" as tipe'),
           'daerah_irigasi_nama as nama',
            DB::raw('"pink" as warna'),
            DB::raw('"Daerah Irigasi" as jenis'),
            DB::raw('ST_Y(marker) as longitude'),
            DB::raw('ST_X(marker) as latitude')
        ]);
        $embung = Embung::where('embung_nama', 'like', '%'.$req->cari.'%')->get([
            'embung_id as id',
            DB::raw('"SDA" as tipe'),
            'embung_nama as nama',
            DB::raw('"black" as warna'),
            DB::raw('"Embung" as jenis'),
            DB::raw('ST_Y(marker) as longitude'),
            DB::raw('ST_X(marker) as latitude')
        ]);
        $mataair = MataAir::where('mata_air_nama', 'like', '%'.$req->cari.'%')->get([
            'mata_air_id as id',
            DB::raw('"SDA" as tipe'),
            'mata_air_nama as nama',
            DB::raw('"grey" as warna'),
            DB::raw('"Mata Air" as jenis'),
            DB::raw('ST_Y(marker) as longitude'),
            DB::raw('ST_X(marker) as latitude')
        ]);

        return collect($jalan)->merge(collect($jembatan))->merge(collect($das))->merge(collect($drainase))->merge(collect($spam))->merge(collect($sumur))->merge(collect($bendungan))->merge(collect($di))->merge(collect($embung))->merge(collect($mataair));
    }

	public function tambah($step = 0, Request $req)
	{
        return view('pages.pemeliharaan.form', [
            'back' => Str::contains(url()->previous(), ['sumur/tambah', 'sumur/edit'])? '/sumur': url()->previous(),
            'lokasi' => [],
            'map' => [],
            'data_sumber_dana' => SumberDana::orderBy('sumber_dana_nama')->get(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'pemeliharaan_uraian' => 'required',
                'pemeliharaan_tahun' => 'required',
                'pemeliharaan_nilai' => 'required',
                'pemeliharaan_penanggung_jawab' => 'required',
                'infrastruktur_id' => 'required',
                'pemeliharaan_jenis' => 'required',
                'sumber_dana_id' => 'required',
                'kabupaten_kota_id' => 'required'
            ],[
                'pemeliharaan_uraian.required'  => 'Uraian tidak boleh kosong',
                'pemeliharaan_tahun.required'  => 'Tahun tidak boleh kosong',
                'pemeliharaan_nilai.required'  => 'Nilai tidak boleh kosong',
                'pemeliharaan_penanggung_jawab.required'  => 'Penanggung Jawab tidak boleh kosong',
                'infrastruktur_id.required'  => 'Infrastruktur tidak boleh kosong',
                'pemeliharaan_jenis.required'  => 'Jenis Pemeliharaan tidak boleh kosong',
                'sumber_dana_id.required'  => 'Sumber Dana tidak boleh kosong',
                'kabupaten_kota_id.required'  => 'Kabupaten/Kota tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect('/pemeliharaan/tambah')->withInput()->with('error', $validator->messages()->all());
        }

        try{
            $data = new Pemeliharaan();
            $data->pemeliharaan_tahun = $req->get('pemeliharaan_tahun');
            $data->pemeliharaan_uraian = $req->get('pemeliharaan_uraian');
            $data->pemeliharaan_nilai = str_replace(',', '', $req->get('pemeliharaan_nilai'));
            $data->pemeliharaan_jenis = $req->get('pemeliharaan_jenis');
            $data->pemeliharaan_penanggung_jawab = $req->get('pemeliharaan_penanggung_jawab');
            $data->infrastruktur_jenis = $req->get('infrastruktur_jenis');
            $data->infrastruktur_id = $req->get('infrastruktur_id');
            $data->sumber_dana_id = $req->get('sumber_dana_id');
            $data->kabupaten_kota_id = $req->get('kabupaten_kota_id');
            $data->kecamatan_id = $req->get('kecamatan_id');
            $data->kelurahan_desa_id = $req->get('kelurahan_desa_id');
            $data->pengguna_id = Auth::id();
            $data->save();
            toast('Berhasil menambah pemeliharaan', 'success')->autoClose(2000);
            return redirect($req->get('redirect')? $req->get('redirect'): route('pemeliharaan'));
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
            return redirect('/pemeliharaan/tambah')->withInput();
		}
	}

    public function index_laporan(Request $cari)
	{
        $tahun = $cari->tahun? $cari->tahun: date('Y');
        $dana = $cari->dana? $cari->dana: 'semua';
        $wilayah = $cari->wilayah? $cari->wilayah: 'semua';

        $data = Kecamatan::with(['kelurahan_desa.aspirasi_masyarakat' => function($q){
            $q->select('kelurahan_desa_id', 'infrastruktur_nama', DB::raw('count(kelurahan_desa_id) infrastruktur_jumlah'), DB::raw('sum(pemeliharaan_nilai) pemeliharaan_nilai'))->groupBy('kelurahan_desa_id', 'infrastruktur_nama');
        }])->whereHas('kelurahan_desa', function($q) use ($tahun){
            $q->with('aspirasi_masyarakat')->whereHas('aspirasi_masyarakat', function($q1) use ($tahun){
                return $q1->where('pemeliharaan_tahun', $tahun)->groupBy('infrastruktur_nama');
            });
        });

        if ($wilayah != 'semua') {
            $data = $data->where('kabupaten_kota_id', $wilayah);
        }
        if ($dana != 'semua') {
            $data = $data->where('sumber_dana_nama', $dana);
        }

        $data = $data->get();

        $laporan = [];
        foreach ($data as $kecamatan) {
            foreach ($kecamatan->kelurahan_desa as $kelurahan) {
                foreach ($kelurahan->aspirasi_masyarakat as $am) {
                    array_push($laporan, [
                        'kecamatan' => $kecamatan->kecamatan_nama,
                        'kelurahan' => $kelurahan->kelurahan_desa_nama,
                        'infrastruktur_nama' => $am->infrastruktur_nama,
                        'infrastruktur_jumlah' => $am->infrastruktur_jumlah,
                        'pemeliharaan_nilai' => $am->pemeliharaan_nilai
                    ]);
                }
            }
        }
        return view('pages.laporan.pemeliharaan.index', [
            'tahun' => $tahun,
            'dana' => $dana,
            'wilayah' => $wilayah,
            'data_infrastruktur' => Infrastruktur::orderBy('infrastruktur_nama')->get(),
            'kabupaten_kota' => KabupatenKota::all(),
            'data_sumber_dana' => SumberDana::orderBy('sumber_dana_nama')->get(),
            'laporan' => $laporan,
            'i' => 0,
            'total_biaya' => 0,
            'total_infrastruktur' => 0,
        ]);
    }

    public function cetak(Request $cari)
	{
        $tahun = $cari->tahun? $cari->tahun: date('Y');
        $dana = $cari->dana? $cari->dana: 'semua';
        $wilayah = $cari->wilayah? $cari->wilayah: 'semua';

        $data = Kecamatan::with(['kelurahan_desa.aspirasi_masyarakat' => function($q){
            $q->select('kelurahan_desa_id', 'infrastruktur_nama', DB::raw('count(kelurahan_desa_id) infrastruktur_jumlah'), DB::raw('sum(pemeliharaan_nilai) pemeliharaan_nilai'))->groupBy('kelurahan_desa_id', 'infrastruktur_nama');
        }])->whereHas('kelurahan_desa', function($q) use ($tahun){
            $q->with('aspirasi_masyarakat')->whereHas('aspirasi_masyarakat', function($q1) use ($tahun){
                return $q1->where('pemeliharaan_tahun', $tahun)->groupBy('infrastruktur_nama');
            });
        });

        if ($wilayah != 'semua') {
            $data = $data->where('kabupaten_kota_id', $wilayah);
        }
        if ($dana != 'semua') {
            $data = $data->where('sumber_dana_nama', $dana);
        }

        $data = $data->get();

        $laporan = [];
        foreach ($data as $kecamatan) {
            foreach ($kecamatan->kelurahan_desa as $kelurahan) {
                foreach ($kelurahan->aspirasi_masyarakat as $am) {
                    array_push($laporan, [
                        'kecamatan' => $kecamatan->kecamatan_nama,
                        'kelurahan' => $kelurahan->kelurahan_desa_nama,
                        'infrastruktur_nama' => $am->infrastruktur_nama,
                        'infrastruktur_jumlah' => $am->infrastruktur_jumlah,
                        'pemeliharaan_nilai' => $am->pemeliharaan_nilai
                    ]);
                }
            }
        }
        return view('layouts.print', [
            'halaman' => 'pages.laporan.pemeliharaan.cetak',
            'judul' => '<strong>Laporan Aspirasi Masyarakat</strong><br>'.($dana == 'semua'? 'Semua Jenis Dana': $dana).' '.($wilayah == 'semua'? 'Seluruh Kabupaten/Kota': KabupatenKota::findOrFail($wilayah)->kabupaten_kota_nama).' tahun '.$tahun,
            'laporan' => $laporan,
            'i' => 0,
            'total_biaya' => 0,
            'total_infrastruktur' => 0,
        ]);
    }

	public function hapus($id)
	{
		try{
            $uraian = '';
            DB::transaction(function () use($id) {
                $data = Pemeliharaan::findOrFail($id);
                switch ($data->infrastruktur_jenis) {
                    case 'Jalan' :
                        $infrastruktur = Jalan::findOrFail($data->infrastruktur_id);
                        $infrastruktur->delete();
                    break;
                    case 'Jembatan' :
                        $infrastruktur = Jembatan::findOrFail($data->infrastruktur_id);
                        $infrastruktur->delete();
                    break;
                    case 'DAS' :
                        $infrastruktur = Das::findOrFail($data->infrastruktur_id);
                        $infrastruktur->delete();
                    break;
                    case 'Drainase' :
                        $infrastruktur = Drainase::findOrFail($data->infrastruktur_id);
                        $infrastruktur->delete();
                    break;
                    case 'SPAM' :
                        $infrastruktur = Spam::findOrFail($data->infrastruktur_id);
                        $infrastruktur->delete();
                    break;
                    case 'Sumur' :
                        $infrastruktur = Sumur::findOrFail($data->infrastruktur_id);
                        $infrastruktur->delete();
                    break;
                    case 'Bendungan' :
                        $infrastruktur = Bendungan::findOrFail($data->infrastruktur_id);
                        $infrastruktur->delete();
                    break;
                    case 'Daerah Irigasi' :
                        $infrastruktur = DaerahIrigasi::findOrFail($data->infrastruktur_id);
                        $infrastruktur->delete();
                    break;
                    case 'Embung' :
                        $infrastruktur = Embung::findOrFail($data->infrastruktur_id);
                        $infrastruktur->delete();
                    break;
                    case 'Mata Air' :
                        $infrastruktur = MataAir::findOrFail($data->infrastruktur_id);
                        $infrastruktur->delete();
                    break;
                }
                $data = Pemeliharaan::findOrFail($id);
                $data->delete();
                $uraian = $data->pemeliharaan_uraian;
            });
            toast('Berhasil menghapus aspirasi masyarakat '.$uraian, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
