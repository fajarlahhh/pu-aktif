<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Illuminate\Database\Eloquent\SoftDeletes;

class UsulanPendapatanAir extends Model
{
    //
    use SoftDeletes;
    use LogsActivity;
    //
    protected $table = 'usulan_pendapatan_air';
    protected $primaryKey = 'usulan_pendapatan_air_id';

    public function pegawai(){
        return $this->belongsTo('App\Pegawai', 'operator', 'nip')->select('nip', 'nm_pegawai');
    }

    public function golongan(){
        return $this->belongsTo('App\Golongan', 'golongan_id', 'golongan_ID');
	}

    public function akun(){
        return $this->belongsTo('App\Akun', 'akun_kode', 'akun_kode');
    }

    public function periode(){
        return $this->hasMany('App\UsulanPendapatanAirPeriode', 'usulan_pendapatan_air_id', 'usulan_pendapatan_air_id');
	}

    public function getUsulanPendapatanAirIdEncryptAttribute()
    {
         return Crypt::encryptString($this->attributes['usulan_pendapatan_air_id']);
    }

    public function getJumlahTotalAttribute()
    {
        return number_format($this->periode->sum('usulan_pendapatan_air_periode_rencana_penjualan'), 2);
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
