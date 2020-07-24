<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class KelurahanDesa extends Model
{
    //
    protected $table = 'kelurahan_desa';
    protected $primaryKey = 'kelurahan_desa_id';

    public function kecamatan(){
        return $this->belongsTo('App\Kecamatan', 'kecamatan_id', 'kecamatan_id');
    }

    public function aspirasi_masyarakat()
    {
        return $this->hasMany('App\AspirasiMasyarakat', 'kelurahan_desa_id', 'kelurahan_desa_id');
    }

    public function pengguna(){
        return $this->belongsTo('App\Pengguna', 'pengguna_id', 'pengguna_id');
    }

    public function embung()
    {
        return $this->hasMany('App\Embung', 'kelurahan_desa_id', 'kelurahan_desa_id');
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
