<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Grimzy\LaravelMysqlSpatial\Eloquent\SpatialTrait;

class Sumur extends Model
{
    use SpatialTrait;
    use LogsActivity;
    //
    protected $table = 'sumur';
    protected $primaryKey = 'sumur_id';

    protected $spatialFields = [
        'koordinat'
    ];

    public function kelurahan_desa()
    {
        return $this->belongsTo('App\KelurahanDesa', 'kelurahan_desa_id', 'kelurahan_desa_id');
    }
}
