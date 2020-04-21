<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;

class Akun extends Model
{
    //
    use LogsActivity;

    protected $table = 'akunting.akun';
    protected $primaryKey = 'akun_kode';
    public $incrementing = false;
}
