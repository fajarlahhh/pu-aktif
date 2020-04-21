<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Illuminate\Database\Eloquent\SoftDeletes;

class UsulanSambungBaru extends Model
{
    //
    use SoftDeletes;
    use LogsActivity;

    protected $table = 'usulan_sambung_baru';
    protected $primaryKey = 'usulan_sambung_baru_id';

    public function pegawai(){
        return $this->belongsTo('App\Pegawai', 'operator', 'nip')->select('nip', 'nm_pegawai');
    }

    public function paket(){
        return $this->belongsTo('App\PaketPB', 'paket_id', 'paket_ID');
    }

    public function golongan(){
        return $this->belongsTo('App\Golongan', 'golongan_id', 'golongan_ID');
	}

    public function akun(){
        return $this->belongsTo('App\Akun', 'akun_kode', 'akun_kode');
    }

    public function periode(){
        return $this->hasMany('App\UsulanSambungBaruPeriode', 'usulan_sambung_baru_id', 'usulan_sambung_baru_id');
	}

    public function getBiayaStandardAttribute()
    {
        return number_format($this->usulan_sambung_baru_biaya, 2);
    }

    public function getJumlahStandardAttribute()
    {
        return number_format($this->periode->sum('usulan_sambung_baru_periode_biaya_standar'), 2);
    }

    public function getJumlahPpnAttribute()
    {
        return number_format($this->periode->sum('usulan_sambung_baru_periode_ppn'), 2);
    }

    public function getJumlahTotalAttribute()
    {
        return number_format($this->periode->sum('usulan_sambung_baru_periode_total_biaya'), 2);
    }

    public function getUsulanSambungBaruIdEncryptAttribute()
    {
         return Crypt::encryptString($this->attributes['usulan_sambung_baru_id']);
    }

    public function setUsulanSambungBaruBiayaAttribute($value)
    {
        $this->attributes['usulan_sambung_baru_biaya'] = str_replace(',', '', $value);
    }

    public function getCreatedAtAttribute($value)
    {
         return Carbon::parse($value)->isoFormat('LLLL');
    }

    public function getUpdatedAtAttribute($value)
    {
         return Carbon::parse($value)->isoFormat('LLLL');
    }
}
