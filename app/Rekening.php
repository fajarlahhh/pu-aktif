<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Rekening extends Model
{
    //
    protected $table = 'rekening.m_rekening';
    protected $primaryKey = ['cIdpel', 'cBlth'];
    public $incrementing = false;
    protected $keyType = 'string';

    public function pelanggan()
    {
        return $this->belongsTo('App\Pelanggan', 'cIdpel', 'pelanggan_ID');
    }
}
