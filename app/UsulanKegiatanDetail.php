<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UsulanKegiatanDetail extends Model
{
    //
    protected $table = 'usulan_kegiatan_detail';
    protected $primaryKey = ['usulan_kegiatan_detail_id', 'usulan_kegiatan_id'];
    public $incrementing = false;
    protected $keyType = 'string';

    public function kegiatan(){
        return $this->belongsTo('App\UsulanKegiatan', 'usulan_kegiatan_id', 'usulan_kegiatan_id');
    }

    public function barang(){
        return $this->belongsTo('App\BarangDanPekerjaan', 'barang_dan_pekerjaan_id', 'barang_dan_pekerjaan_id');
	}

    public function setUsulanKegiatanDetailNilaiStandarAttribute($value)
    {
        $this->attribute['usulan_kegiatan_detail_nilai_standar'] = str_replace(',', '', $value);
    }

    public function setUsulanKegiatanDetailNilaiAttribute($value)
    {
        $this->attribute['usulan_kegiatan_detail_nilai'] = str_replace(',', '', $value);
    }

    public function setUsulanKegiatanDetailVolumeAttribute($value)
    {
        $this->attribute['usulan_kegiatan_detail_volume'] = str_replace(',', '', $value);
    }

    public function setUsulanKegiatanDetailNilaiTotalAttribute($value)
    {
        $this->attribute['usulan_kegiatan_detail_nilai_total'] = str_replace(',', '', $value);
    }

    public function setUsulanKegiatanDetailPeriode1Attribute($value)
    {
        $this->attribute['usulan_kegiatan_detail_periode_1'] = str_replace(',', '', $value);
    }

    public function setUsulanKegiatanDetailPeriode2Attribute($value)
    {
        $this->attribute['usulan_kegiatan_detail_periode_2'] = str_replace(',', '', $value);
    }

    public function setUsulanKegiatanDetailPeriode3Attribute($value)
    {
        $this->attribute['usulan_kegiatan_detail_periode_3'] = str_replace(',', '', $value);
    }

    public function setUsulanKegiatanDetailPeriode4Attribute($value)
    {
        $this->attribute['usulan_kegiatan_detail_periode_4'] = str_replace(',', '', $value);
    }

    public function setUsulanKegiatanDetailPeriode5Attribute($value)
    {
        $this->attribute['usulan_kegiatan_detail_periode_5'] = str_replace(',', '', $value);
    }

    public function setUsulanKegiatanDetailPeriode6Attribute($value)
    {
        $this->attribute['usulan_kegiatan_detail_periode_6'] = str_replace(',', '', $value);
    }

    public function setUsulanKegiatanDetailPeriode7Attribute($value)
    {
        $this->attribute['usulan_kegiatan_detail_periode_7'] = str_replace(',', '', $value);
    }

    public function setUsulanKegiatanDetailPeriode8Attribute($value)
    {
        $this->attribute['usulan_kegiatan_detail_periode_8'] = str_replace(',', '', $value);
    }

    public function setUsulanKegiatanDetailPeriode9Attribute($value)
    {
        $this->attribute['usulan_kegiatan_detail_periode_9'] = str_replace(',', '', $value);
    }

    public function setUsulanKegiatanDetailPeriode10Attribute($value)
    {
        $this->attribute['usulan_kegiatan_detail_periode_10'] = str_replace(',', '', $value);
    }

    public function setUsulanKegiatanDetailPeriode11Attribute($value)
    {
        $this->attribute['usulan_kegiatan_detail_periode_11'] = str_replace(',', '', $value);
    }

    public function setUsulanKegiatanDetailPeriode12Attribute($value)
    {
        $this->attribute['usulan_kegiatan_detail_periode_12'] = str_replace(',', '', $value);
    }
}
