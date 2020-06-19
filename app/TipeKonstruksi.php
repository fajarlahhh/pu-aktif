<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TipeKonstruksi extends Model
{
    //
    protected $table = 'tipe_konstruksi';
    protected $primaryKey = 'tipe_konstruksi_id';

    public function pengguna(){
        return $this->belongsTo('App\Pengguna', 'pengguna_id', 'pengguna_id');
    }
}
