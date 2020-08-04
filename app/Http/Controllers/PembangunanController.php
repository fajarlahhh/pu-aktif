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
use App\Pembangunan;
use App\DaerahIrigasi;
use App\KabupatenKota;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Grimzy\LaravelMysqlSpatial\Types\Point;
use Grimzy\LaravelMysqlSpatial\Types\Polygon;
use Grimzy\LaravelMysqlSpatial\Types\LineString;

class PembangunanController extends Controller
{
    //
    public function index(Request $req)
	{
        $tahun = $req->tahun? $req->tahun: date('Y');
        $infrastruktur = $req->infrastruktur? $req->infrastruktur: 'semua';
        $pembangunan = $req->pembangunan? $req->pembangunan: 'semua';
        $dana = $req->dana? $req->dana: 'semua';

        $data = Pembangunan::with('kabupaten_kota')->where('pembangunan_tahun', $tahun)->where(function($q) use ($req){
            $q->orWhere('pembangunan_penanggung_jawab', 'like', '%'.$req->cari.'%')->orWhere('pembangunan_uraian', 'like', '%'.$req->cari.'%')->orWhere('pembangunan_nilai', 'like', '%'.$req->cari.'%');
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

        if ($pembangunan != 'semua') {
            $data = $data->where('pembangunan_jenis', $pembangunan);
        }

        if ($dana != 'semua') {
            $data = $data->where('sumber_dana_id', $dana);
        }

        $data = $data->paginate(10);

        $data->appends([
            'cari' => $req->cari,
            'tahun' => $tahun,
            'pembangunan' => $pembangunan,
            'infrastruktur' => $infrastruktur,
            'dana' => $dana
            ]);
        return view('pages.pembangunan.index', [
            'tahun' => $tahun,
            'pembangunan' => $pembangunan,
            'infrastruktur' => $infrastruktur,
            'dana' => $dana,
            'cari' => $req->cari,
            'data_sumber_dana' => SumberDana::orderBy('sumber_dana_nama')->get(),
            'data' => $data,
            'i' => ($req->input('page', 1) - 1) * 10
        ]);
    }

	public function tambah($step = 0, Request $req)
	{
        switch ($step) {
            case 0:
                return view('pages.pembangunan.form', [
                    'step' => $step,
                    'map' => [],
                    'data_sumber_dana' => SumberDana::orderBy('sumber_dana_nama')->get(),
                ]);
            break;
            case 1:
                $validator = Validator::make($req->all(),
                    [
                        'pembangunan_tahun' => 'required',
                        'pembangunan_uraian' => 'required',
                        'pembangunan_nilai' => 'required',
                        'pembangunan_penanggung_jawab' => 'required'
                    ],[
                        'pembangunan_tahun.required'  => 'Tahun tidak boleh kosong',
                        'pembangunan_uraian.required'  => 'Uraian tidak boleh kosong',
                        'pembangunan_nilai.required'  => 'Nilai tidak boleh kosong',
                        'pembangunan_penanggung_jawab.required'  => 'Penanggung jawab tidak boleh kosong'
                    ]
                );
                if ($validator->fails()) {
                    alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
                    return redirect()->back()->withInput()->with('error', $validator->messages()->all());
                }

                return view('pages.pembangunan.form', [
                    'step' => $step,
                    'data' => $req,
                    'aksi' => 'tambah',
                    'data_sumber_dana' => SumberDana::findOrFail($req->sumber_dana_id),
                    'i' => 0
                ]);
            break;
            case 2:
                return view('pages.pembangunan.form', [
                    'aksi' => 'edit',
                    'step' => $step,
                    'data' => $req,
                    'lokasi' => [],
                    'map' => [],
                    'data_sumber_dana' => SumberDana::findOrFail($req->sumber_dana_id),
                    'i' => 0
                ]);
            break;
        }
        return view('pages.pembangunan.form', [
            'aksi' => 'tambah',
            'map' => [],
            'data_sumber_dana' => SumberDana::orderBy('sumber_dana_nama')->get(),
            'back' => Str::contains(url()->previous(), ['pembangunan/tambah', 'pembangunan/edit'])? url('/pembangunan'): url()->previous(),
        ]);
    }

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'pembangunan_uraian' => 'required',
                'pembangunan_tahun' => 'required',
                'pembangunan_nilai' => 'required',
                'pembangunan_penanggung_jawab' => 'required',
                'infrastruktur_jenis' => 'required',
                'pembangunan_jenis' => 'required',
                'sumber_dana_id' => 'required',
                'kabupaten_kota_id' => 'required'
            ],[
                'pembangunan_uraian.required'  => 'Uraian tidak boleh kosong',
                'pembangunan_tahun.required'  => 'Tahun tidak boleh kosong',
                'pembangunan_nilai.required'  => 'Nilai tidak boleh kosong',
                'pembangunan_penanggung_jawab.required'  => 'Penanggung Jawab tidak boleh kosong',
                'infrastruktur_jenis.required'  => 'Jenis Infrastruktur tidak boleh kosong',
                'pembangunan_jenis.required'  => 'Jenis Pembangunan tidak boleh kosong',
                'sumber_dana_id.required'  => 'Sumber Dana tidak boleh kosong',
                'kabupaten_kota_id.required'  => 'Kabupaten/Kota tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect('/pembangunan/tambah')->withInput()->with('error', $validator->messages()->all());
        }

        try{
            DB::transaction(function () use($req) {
                switch ($req->get('infrastruktur_jenis')) {
                    case 'Jalan' :
                        $infrastruktur = new Jalan();
                        $infrastruktur->jalan_ruas = $req->get('jalan_ruas');
                        $infrastruktur->jalan_subruas = $req->get('jalan_subruas');
                        $infrastruktur->jalan_nama = $req->get('jalan_nama');
                        $infrastruktur->jalan_tahun_pembuatan = $req->get('pembangunan_tahun');
                        $infrastruktur->jalan_biaya_pembuatan = str_replace(',', '', $req->get('pembangunan_nilai'))?: 0;
                        $infrastruktur->jalan_panjang = str_replace(',', '', $req->get('jalan_panjang'))?: 0;
                        $infrastruktur->jalan_lebar = $req->get('jalan_lebar');
                        $infrastruktur->jalan_keterangan = $req->get('jalan_keterangan');
                    break;
                    case 'Jembatan' :
                        $infrastruktur = new Jembatan();
                        $infrastruktur->jembatan_nomor = $req->get('jembatan_nomor');
                        $infrastruktur->jembatan_nama = $req->get('jembatan_nama');
                        $infrastruktur->jembatan_tahun_pembuatan = $req->get('pembangunan_tahun');
                        $infrastruktur->jembatan_biaya_pembuatan = str_replace(',', '', $req->get('pembangunan_nilai'))?: 0;
                        $infrastruktur->jembatan_dimensi_panjang = str_replace(',', '', $req->get('jembatan_dimensi_panjang'))?: 0;
                        $infrastruktur->jembatan_dimensi_lebar = str_replace(',', '', $req->get('jembatan_dimensi_lebar'))?: 0;
                        $infrastruktur->jembatan_dimensi_bentang = str_replace(',', '', $req->get('jembatan_dimensi_bentang'))?: 0;
                        $infrastruktur->jembatan_keterangan = $req->get('jembatan_keterangan');
                        $infrastruktur->jalan_id = $req->get('jalan_id');
                    break;
                    case 'DAS' :
                        $infrastruktur = new Das();
                        $infrastruktur->das_kode_ws = $req->get('das_kode_ws');
                        $infrastruktur->das_pola_aliran = $req->get('das_pola_aliran');
                        $infrastruktur->das_nama = $req->get('das_nama');
                        $infrastruktur->das_tahun_pembuatan = $req->get('pembangunan_tahun');
                        $infrastruktur->das_biaya_pembuatan = str_replace(',', '', $req->get('pembangunan_nilai'))?: 0;
                        $infrastruktur->das_luas = str_replace(',', '', $req->get('das_luas'))?: 0;
                        $infrastruktur->das_jumlah_orde_sungai = $req->get('das_jumlah_orde_sungai')?: 0;
                        $infrastruktur->das_jumlah_desa = $req->get('das_jumlah_desa')?: 0;
                        $infrastruktur->das_keterangan = $req->get('das_keterangan');
                    break;
                    case 'Drainase' :
                        $infrastruktur = new Drainase();
                        $infrastruktur->drainase_nama = $req->get('drainase_nama');
                        $infrastruktur->drainase_keterangan = $req->get('drainase_keterangan');
                        $infrastruktur->drainase_tahun_pembuatan = $req->get('pembangunan_tahun');
                        $infrastruktur->drainase_biaya_pembuatan = str_replace(',', '', $req->get('pembangunan_nilai'))?: 0;
                        $infrastruktur->drainase_panjang = $req->get('drainase_panjang')? str_replace(',', '', $req->get('drainase_panjang')): 0;
                    break;
                    case 'SPAM' :
                        $infrastruktur = new Spam();
                        $infrastruktur->spam_nama_unit = $req->get('spam_nama_unit');
                        $infrastruktur->spam_keterangan = $req->get('spam_keterangan');
                        $infrastruktur->spam_tahun_pembuatan = $req->get('pembangunan_tahun');
                        $infrastruktur->spam_biaya_pembuatan = str_replace(',', '', $req->get('pembangunan_nilai'))?: 0;
                        $infrastruktur->spam_kapasitas_terpasang = str_replace(',', '', $req->get('spam_kapasitas_terpasang'))?: 0;
                        $infrastruktur->spam_kapasitas_produksi = str_replace(',', '', $req->get('spam_kapasitas_produksi'))?: 0;
                        $infrastruktur->spam_kapasitas_distribusi = str_replace(',', '', $req->get('spam_kapasitas_distribusi'))?: 0;
                        $infrastruktur->spam_kapasitas_idle = str_replace(',', '', $req->get('spam_kapasitas_idle'))?: 0;
                        $infrastruktur->spam_jumlah_sr = str_replace(',', '', $req->get('spam_jumlah_sr'))?: 0;
                        $infrastruktur->spam_jumlah_jiwa_terlayani = str_replace(',', '', $req->get('spam_jumlah_jiwa_terlayani'))?: 0;
                    break;
                    case 'Sumur' :
                        $infrastruktur = new Sumur();
                        $infrastruktur->sumur_kode = $req->get('sumur_kode');
                        $infrastruktur->sumur_tahun_pembuatan = $req->get('pembangunan_tahun');
                        $infrastruktur->sumur_biaya_pembuatan = str_replace(',', '', $req->get('pembangunan_nilai'))?: 0;
                        $infrastruktur->sumur_debit = str_replace(',', '', $req->get('sumur_debit'))?: 0;
                        $infrastruktur->sumur_keterangan = $req->get('sumur_keterangan');
                    break;
                    case 'Bendungan' :
                        $infrastruktur = new Bendungan();
                        $infrastruktur->bendungan_nama = $req->get('bendungan_nama');
                        $infrastruktur->bendungan_tahun_pembuatan = $req->get('pembangunan_tahun');
                        $infrastruktur->bendungan_biaya_pembuatan = str_replace(',', '', $req->get('pembangunan_nilai'))?: 0;
                        $infrastruktur->bendungan_data_teknik_tinggi = str_replace(',', '', $req->get('bendungan_data_teknik_tinggi'))?: 0;
                        $infrastruktur->bendungan_data_teknik_volume = str_replace(',', '', $req->get('bendungan_data_teknik_volume'))?: 0;
                        $infrastruktur->bendungan_data_teknik_bathimetri = str_replace(',', '', $req->get('bendungan_data_teknik_bathimetri'))?: 0;
                        $infrastruktur->bendungan_keterangan = $req->get('bendungan_keterangan');
                    break;
                    case 'Daerah Irigasi' :
                        $infrastruktur = new DaerahIrigasi();
                        $infrastruktur->daerah_irigasi_nama = $req->get('daerah_irigasi_nama');
                        $infrastruktur->daerah_irigasi_tahun_pembuatan = $req->get('pembangunan_tahun');
                        $infrastruktur->daerah_irigasi_biaya_pembuatan = str_replace(',', '', $req->get('pembangunan_nilai'))?: 0;
                        $infrastruktur->daerah_irigasi_luas_area_potensial = str_replace(',', '', $req->get('daerah_irigasi_luas_area_potensial'))?: 0;
                        $infrastruktur->daerah_irigasi_keterangan = $req->get('daerah_irigasi_keterangan');
                    break;
                    case 'Embung' :
                        $infrastruktur = new Embung();
                        $infrastruktur->embung_nama = $req->get('embung_nama');
                        $infrastruktur->embung_tahun_pembuatan = $req->get('pembangunan_tahun');
                        $infrastruktur->embung_biaya_pembuatan = str_replace(',', '', $req->get('pembangunan_nilai'))?: 0;
                        $infrastruktur->embung_data_teknik_ca_km = str_replace(',', '', $req->get('embung_data_teknik_ca_km'))?: 0;
                        $infrastruktur->embung_data_teknik_luasan_genangan = str_replace(',', '', $req->get('embung_data_teknik_luasan_genangan'))?: 0;
                        $infrastruktur->embung_data_teknik_tipe_konstruksi = str_replace(',', '', $req->get('embung_data_teknik_tipe_konstruksi'))?: 0;
                        $infrastruktur->embung_data_teknik_volume = str_replace(',', '', $req->get('embung_data_teknik_volume'))?: 0;
                        $infrastruktur->embung_data_teknik_l = str_replace(',', '', $req->get('embung_data_teknik_l'))?: 0;
                        $infrastruktur->embung_data_teknik_h = str_replace(',', '', $req->get('embung_data_teknik_h'))?: 0;
                        $infrastruktur->embung_data_teknik_lebar_spillway = str_replace(',', '', $req->get('embung_data_teknik_lebar_spillway'))?: 0;
                        $infrastruktur->embung_keterangan = $req->get('embung_keterangan');
                    break;
                    case 'Mata Air' :
                        $infrastruktur = new MataAir();
                        $infrastruktur->mata_air_nama = $req->get('mata_air_nama');
                        $infrastruktur->mata_air_tahun_pembuatan = $req->get('mata_air_tahun_pembuatan');
                        $infrastruktur->mata_air_biaya_pembuatan = str_replace(',', '', $req->get('mata_air_biaya_pembuatan'))?: 0;
                        $infrastruktur->mata_air_debit = str_replace(',', '', $req->get('mata_air_debit'))?: 0;
                        $infrastruktur->mata_air_keterangan = $req->get('mata_air_keterangan');
                    break;
                }
                if($req->get('marker')){
                    $point = explode(',', $req->get('marker'));
                    $infrastruktur->marker = new Point($point[1], $point[0]);
                }
                if($req->get('polygon')){
                    $coordinate = [];
                    if($req->get('polygon')){
                        foreach (explode(';', $req->get('polygon')) as $longlat) {
                            if($longlat){
                                array_push($coordinate, [
                                    (float) explode(',', $longlat)[1],
                                    (float) explode(',', $longlat)[0]
                                ]);
                            }
                        }
                        array_push($coordinate, [
                            (float) explode(',', $req->get('polygon'))[1],
                            (float) explode(',', $req->get('polygon'))[0]
                        ]);
                    }
                    $infrastruktur->polygon = new Polygon([
                        new LineString(collect($coordinate)->map(function($point){
                            return new Point($point[0], $point[1]);
                        })->toArray())
                    ]);
                }
                if($req->get('polyline')){
                    $coordinate = [];
                    if($req->get('polyline')){
                        foreach (explode(';', $req->get('polyline')) as $longlat) {
                            if($longlat){
                                array_push($coordinate, [
                                    (float) explode(',', $longlat)[1],
                                    (float) explode(',', $longlat)[0]
                                ]);
                            }
                        }
                    }
                    $infrastruktur->polyline = new LineString(collect($coordinate)->map(function($point){
                         return new Point($point[0], $point[1]);
                    })->toArray());
                }
                $infrastruktur->kabupaten_kota_id = $req->get('kabupaten_kota_id');
                $infrastruktur->kecamatan_id = $req->get('kecamatan_id');
                $infrastruktur->kelurahan_desa_id = $req->get('kelurahan_desa_id');
                $infrastruktur->kewenangan_provinsi = $req->get('pembangunan_jenis') == 'Kewenangan Provinsi'? 1: 0;
                $infrastruktur->pengguna_id = Auth::id();
                $infrastruktur->save();

                switch ($req->get('infrastruktur_jenis')) {
                    case 'Jalan' :
                        $infrastruktur_id = $infrastruktur->jalan_id;
                    break;
                    case 'Jembatan' :
                        $infrastruktur_id = $infrastruktur->jembatan_id;
                    break;
                    case 'DAS' :
                        $infrastruktur_id = $infrastruktur->das_id;
                    break;
                    case 'Drainase' :
                        $infrastruktur_id = $infrastruktur->drainase_id;
                    break;
                    case 'SPAM' :
                        $infrastruktur_id = $infrastruktur->spam_id;
                    break;
                    case 'Sumur' :
                        $infrastruktur_id = $infrastruktur->sumur_id;
                    break;
                    case 'Bendungan' :
                        $infrastruktur_id = $infrastruktur->bendungan_id;
                    break;
                    case 'Daerah Irigasi' :
                        $infrastruktur_id = $infrastruktur->daerah_irigasi_id;
                    break;
                    case 'Embung' :
                        $infrastruktur_id = $infrastruktur->embung_id;
                    break;
                    case 'Mata Air' :
                        $infrastruktur_id = $infrastruktur->mata_air_id;
                    break;
                }
                $data = new Pembangunan();
                $data->pembangunan_tahun = $req->get('pembangunan_tahun');
                $data->pembangunan_uraian = $req->get('pembangunan_uraian');
                $data->pembangunan_nilai = str_replace(',', '', $req->get('pembangunan_nilai'));
                $data->pembangunan_jenis = $req->get('pembangunan_jenis');
                $data->pembangunan_penanggung_jawab = $req->get('pembangunan_penanggung_jawab');
                $data->infrastruktur_jenis = $req->get('infrastruktur_jenis');
                $data->infrastruktur_id = $infrastruktur_id;
                $data->sumber_dana_id = $req->get('sumber_dana_id');
                $data->kabupaten_kota_id = $req->get('kabupaten_kota_id');
                $data->kecamatan_id = $req->get('kecamatan_id');
                $data->kelurahan_desa_id = $req->get('kelurahan_desa_id');
                $data->pengguna_id = Auth::id();
                $data->save();
            });
            toast('Berhasil menambah pembangunan', 'success')->autoClose(2000);
            return redirect($req->get('redirect')? $req->get('redirect'): route('pembangunan'));
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
            return redirect('/pembangunan/tambah')->withInput();
		}
    }

	public function hapus($id)
	{
		try{
            $uraian = '';
            DB::transaction(function () use($id) {
                $data = Pembangunan::findOrFail($id);
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
                $data = Pembangunan::findOrFail($id);
                $data->delete();
                $uraian = $data->pembangunan_uraian;
            });
            toast('Berhasil menghapus aspirasi masyarakat '.$uraian, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}
}
