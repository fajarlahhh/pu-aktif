<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Grimzy\LaravelMysqlSpatial\Eloquent\SpatialTrait;

class PosHidrologi extends Model
{
    use SpatialTrait;
    use LogsActivity;
    //
    protected $table = 'pos_hidrologi';
    protected $primaryKey = 'pos_hidrologi_id';

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
