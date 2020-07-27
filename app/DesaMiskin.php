<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;

class DesaMiskin extends Model
{
    //
    use LogsActivity;
    //
    protected $table = 'desa_miskin';
    protected $primaryKey = 'desa_miskin_id';

    public function kelurahan_desa()
    {
        return $this->belongsTo('App\KelurahanDesa', 'kelurahan_desa_id', 'kelurahan_desa_id');
    }
}
