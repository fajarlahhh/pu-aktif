<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;

class Pemeliharaan extends Model
{
    //
    use LogsActivity;

    protected $table = 'pemeliharaan';
    protected $primaryKey = 'pemeliharaan_id';

    public function pengguna(){
        return $this->belongsTo('App\Pengguna', 'pengguna_id', 'pengguna_id');
    }

    public function sumber_dana(){
        return $this->belongsTo('App\SumberDana', 'sumber_dana_id', 'sumber_dana_id');
    }

    public function bendungan()
    {
        return $this->belongsTo('App\Bendungan', 'bendungan_id', 'infrastruktur_id');
    }

    public function daerah_irigasi()
    {
        return $this->belongsTo('App\DaerahIrigasi', 'daerah_irigasi_id', 'infrastruktur_id');
    }

    public function das()
    {
        return $this->belongsTo('App\Das', 'das_id', 'infrastruktur_id');
    }

    public function drainase()
    {
        return $this->belongsTo('App\Drainase', 'drainase_id', 'infrastruktur_id');
    }

    public function embung()
    {
        return $this->belongsTo('App\Embung', 'embung_id', 'infrastruktur_id');
    }

    public function jalan()
    {
        return $this->belongsTo('App\Jalan', 'jalan_id', 'infrastruktur_id');
    }

    public function jembatan()
    {
        return $this->belongsTo('App\Jembatan', 'jembatan_id', 'infrastruktur_id');
    }

    public function mata_air()
    {
        return $this->belongsTo('App\MataAir', 'mata_air_id', 'infrastruktur_id');
    }

    public function spam()
    {
        return $this->belongsTo('App\Spam', 'spam_id', 'infrastruktur_id');
    }

    public function sumur()
    {
        return $this->belongsTo('App\Sumur', 'sumur_id', 'infrastruktur_id');
    }
}
