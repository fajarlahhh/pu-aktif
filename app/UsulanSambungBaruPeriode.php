<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UsulanSambungBaruPeriode extends Model
{
    //
    protected $table = 'usulan_sambung_baru_periode';
    protected $primaryKey = ['usulan_sambung_baru_id', 'usulan_sambung_baru_periode_bulan'];
    public $incrementing = false;
    protected $keyType = 'string';

    public function usulan(){
        return $this->belongsTo('App\UsulanSambungBaru', 'usulan_sambung_baru_id', 'usulan_sambung_baru_id');
    }
}
