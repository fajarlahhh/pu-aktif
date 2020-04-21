<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UsulanPendapatanAirPeriode extends Model
{
    //
    protected $table = 'usulan_pendapatan_air_periode';
    protected $primaryKey = ['usulan_pendapatan_air_id', 'usulan_pendapatan_air_periode_bulan'];
    public $incrementing = false;
    protected $keyType = 'string';

    public function usulan(){
        return $this->belongsTo('App\UsulanPendapatanAir', 'usulan_pendapatan_air_id', 'usulan_pendapatan_air_id');
	}
}
