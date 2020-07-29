<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Grimzy\LaravelMysqlSpatial\Eloquent\SpatialTrait;

class Drainase extends Model
{
    //
    use SpatialTrait;
    use LogsActivity;
    //
    protected $table = 'drainase';
    protected $primaryKey = 'drainase_id';

    protected $spatialFields = [
        'marker',
        'polyline',
        'polygon'
    ];

    public function kelurahan_desa()
    {
        return $this->belongsTo('App\KelurahanDesa', 'kelurahan_desa_id', 'kelurahan_desa_id');
    }

    public function kecamatan()
    {
        return $this->belongsTo('App\Kecamatan', 'kecamatan_id', 'kecamatan_id');
    }

    public function kabupaten_kota()
    {
        return $this->belongsTo('App\KabupatenKota', 'kabupaten_kota_id', 'kabupaten_kota_id');
    }

    public function pengguna(){
        return $this->belongsTo('App\Pengguna', 'pengguna_id', 'pengguna_id');
    }
}
