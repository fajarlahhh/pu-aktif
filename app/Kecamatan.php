<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Kecamatan extends Model
{
    //
    protected $table = 'kecamatan';
    protected $primaryKey = 'kecamatan_id';

    public function kabupaten_kota(){
        return $this->belongsTo('App\KabupatenKota', 'kabupaten_kota_id', 'kabupaten_kota_id');
    }

    public function kelurahan_desa(){
        return $this->hasMany('App\KelurahanDesa', 'kecamatan_id', 'kecamatan_id');
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
