<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Grimzy\LaravelMysqlSpatial\Eloquent\SpatialTrait;

class KewenanganProvinsi extends Model
{
    //
    use SpatialTrait;
    use LogsActivity;
    //
    protected $table = 'kewenangan_provinsi';
    protected $primaryKey = 'kewenangan_provinsi_id';

    protected $spatialFields = [
        'marker',
        'polyline',
        'polygon'
    ];
    
    public function pengguna(){
        return $this->belongsTo('App\Pengguna', 'pengguna_id', 'pengguna_id');
    }
    
    public function jalan(){
        return $this->belongsTo('App\Jalan', 'infrastruktur_id', 'jalan_id');
    }
    
    public function jembatan(){
        return $this->belongsTo('App\Jembatan', 'infrastruktur_id', 'jalan_id');
    }
    
    public function embung(){
        return $this->belongsTo('App\Jalan', 'infrastruktur_id', 'embung_id');
    }
    
    public function daerah_irigasi(){
        return $this->belongsTo('App\Jalan', 'infrastruktur_id', 'daerah_irigasi_id');
    }
}
