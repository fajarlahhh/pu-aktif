<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Grimzy\LaravelMysqlSpatial\Eloquent\SpatialTrait;

class DaerahIrigasi extends Model
{
    use SpatialTrait;
    use LogsActivity;
    //
    protected $table = 'daerah_irigasi';
    protected $primaryKey = 'daerah_irigasi_id';

    protected $spatialFields = [
        'marker',
        'polyline',
        'polygon'
    ];

    public function kabupaten_kota()
    {
        return $this->belongsTo('App\KabupatenKota', 'kabupaten_kota_id', 'kabupaten_kota_id');
    }

    public function pengguna(){
        return $this->belongsTo('App\Pengguna', 'pengguna_id', 'pengguna_id');
    }
}
