<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pelanggan extends Model
{
    //
    protected $table = 'pbaru.m_pelanggan';
    protected $primaryKey = 'pelanggan_ID';
    public $incrementing = false;
    protected $keyType = 'string';

    public function rekening()
    {
        return $this->hasMany('App\Rekening', 'cIdpel', 'pelanggan_ID');
    }
}
