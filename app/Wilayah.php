<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Wilayah extends Model
{
    //
    protected $table = 'pbaru.m_wilayah';
    protected $primaryKey = 'wilayah_nama';
    public $incrementing = false;
    protected $keyType = 'string';
}
