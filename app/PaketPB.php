<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PaketPB extends Model
{
    //
    protected $table = 'pbaru.m_paket_pb';
    protected $primaryKey = 'paket_ID';
    public $incrementing = false;
    protected $keyType = 'string';
}
