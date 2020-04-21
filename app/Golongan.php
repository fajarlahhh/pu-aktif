<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Golongan extends Model
{
    //
    protected $table = 'pbaru.m_golongan';
    protected $primaryKey = 'golongan_ID';
    public $incrementing = false;
    protected $keyType = 'string';

    public function tarif()
    {
        return $this->hasMany('App\GolonganTarif', 'cKdGol', 'golongan_ID');
    }
}
