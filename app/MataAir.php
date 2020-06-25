<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Grimzy\LaravelMysqlSpatial\Eloquent\SpatialTrait;

class MataAir extends Model
{
    use SpatialTrait;
    use LogsActivity;
    //
    protected $table = 'mata_air';
    protected $primaryKey = 'mata_air_id';

    protected $spatialFields = [
        'marker',
        'polyline',
        'polygon'
    ];

    public function kelurahan_desa()
    {
        return $this->belongsTo('App\KelurahanDesa', 'kelurahan_desa_id', 'kelurahan_desa_id');
    }

    public function pengguna(){
        return $this->belongsTo('App\Pengguna', 'pengguna_id', 'pengguna_id');
    }
}
