<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Illuminate\Database\Eloquent\SoftDeletes;

class BarangDanPekerjaan extends Model
{
    //
    use LogsActivity;
    use SoftDeletes;
    //
    protected $table = 'barang_dan_pekerjaan';
    protected $primaryKey = 'barang_dan_pekerjaan_id';
    public $incrementing = false;
    protected $keyType = 'string';

    public function pegawai(){
        return $this->hasOne('App\Pegawai', 'nip', 'operator')->select('nip', 'nm_pegawai');
    }

    public function getBarangDanPekerjaanIdEncryptAttribute()
    {
         return Crypt::encryptString($this->attributes['barang_dan_pekerjaan_id']);
    }

    public function getUpdatedAtAttribute($value)
    {
         return Carbon::parse($value)->isoFormat('LLLL');
    }
}
