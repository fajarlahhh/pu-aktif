<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Illuminate\Database\Eloquent\SoftDeletes;

class UsulanKegiatan extends Model
{
    use SoftDeletes;
    use LogsActivity;
    //
    protected $table = 'usulan_kegiatan';
    protected $primaryKey = 'usulan_kegiatan_id';
    public $incrementing = false;
    protected $keyType = 'string';

    public function pegawai(){
        return $this->hasOne('App\Pegawai', 'nip', 'operator')->select('nip', 'nm_pegawai');
    }

    public function program(){
        return $this->belongsTo('App\UsulanProgram', 'usulan_program_id', 'usulan_program_id');
	}

    public function akun(){
        return $this->hasOne('App\Akun', 'akun_kode', 'akun_kode');
	}

    public function detail(){
        return $this->hasMany('App\UsulanKegiatanDetail', 'usulan_kegiatan_id', 'usulan_kegiatan_id');
    }

    public function setUsulanKegiatanDeskripsiAttribute($value)
    {
        $this->attributes['usulan_kegiatan_deskripsi'] = Str::title($value);
    }

    public function getUsulanProgramIdEncryptAttribute()
    {
         return Crypt::encryptString($this->attributes['usulan_program_id']);
    }

    public function getUsulanKegiatanIdEncryptAttribute()
    {
         return Crypt::encryptString($this->attributes['usulan_kegiatan_id']);
    }

    public function getCreatedAtAttribute($value)
    {
         return Carbon::parse($value)->isoFormat('LLLL');
    }

    public function getUpdatedAtAttribute($value)
    {
         return Carbon::parse($value)->isoFormat('LLLL');
    }
}
