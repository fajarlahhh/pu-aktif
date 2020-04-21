<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GolonganTarif extends Model
{
    //
    protected $table = 'rekening.m_tarif';
    protected $primaryKey = ['cKdGol', 'nPakai1', 'nPakai2'];
    public $incrementing = false;
    protected $keyType = 'string';

    public function golongan()
    {
        $this->belongsTo('App\Golongan', 'golongan_ID', 'cKdGol');
    }
}
