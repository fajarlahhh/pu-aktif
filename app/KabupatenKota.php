<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class KabupatenKota extends Model
{
    //
    protected $table = 'kabupaten_kota';
    protected $primaryKey = 'kabupaten_kota_id';

    public function kecamatan(){
        return $this->hasMany('App\Kecamatan', 'kabupaten_kota_id', 'kabupaten_kota_id');
    }

    public function pengguna(){
        return $this->belongsTo('App\Pengguna', 'pengguna_id', 'pengguna_id');
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
