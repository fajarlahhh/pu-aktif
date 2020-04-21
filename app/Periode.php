<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Illuminate\Database\Eloquent\SoftDeletes;

class Periode extends Model
{
    //
    use SoftDeletes;
    use LogsActivity;

    protected $table = 'periode';
    protected $primaryKey = 'periode_tahun';

    public function pegawai(){
        return $this->hasOne('App\Pegawai', 'nip', 'operator');
	}
}
