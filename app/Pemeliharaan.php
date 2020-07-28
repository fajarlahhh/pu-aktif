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
        return $this->belongsTo('App\Bendungan', 'infrastruktur_id', 'bendungan_id');
    }

    public function daerah_irigasi()
    {
        return $this->belongsTo('App\DaerahIrigasi', 'infrastruktur_id', 'daerah_irigasi_id');
    }

    public function das()
    {
        return $this->belongsTo('App\Das', 'infrastruktur_id', 'das_id');
    }

    public function drainase()
    {
        return $this->belongsTo('App\Drainase', 'infrastruktur_id', 'drainase_id');
    }

    public function embung()
    {
        return $this->belongsTo('App\Embung', 'infrastruktur_id', 'embung_id');
    }

    public function jalan()
    {
        return $this->belongsTo('App\Jalan', 'infrastruktur_id', 'jalan_id');
    }

    public function jembatan()
    {
        return $this->belongsTo('App\Jembatan', 'infrastruktur_id', 'jembatan_id');
    }

    public function mata_air()
    {
        return $this->belongsTo('App\MataAir', 'infrastruktur_id', 'mata_air_id');
    }

    public function spam()
    {
        return $this->belongsTo('App\Spam', 'infrastruktur_id', 'spam_id');
    }

    public function sumur()
    {
        return $this->belongsTo('App\Sumur', 'infrastruktur_id', 'sumur_id');
    }
}
