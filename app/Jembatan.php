<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Grimzy\LaravelMysqlSpatial\Eloquent\SpatialTrait;

class Jembatan extends Model
{
    use SpatialTrait;
    use LogsActivity;
    //
    protected $table = 'jembatan';
    protected $primaryKey = 'jembatan_id';

    protected $spatialFields = [
        'marker',
        'polyline',
        'polygon'
    ];

    public function jalan()
    {
        return $this->belongsTo('App\Jalan', 'jalan_id', 'jalan_id');
    }

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
