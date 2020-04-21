<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Illuminate\Database\Eloquent\SoftDeletes;

class UsulanProgram extends Model
{
    use SoftDeletes;
    use LogsActivity;
    //
    protected $table = 'usulan_program';
    protected $primaryKey = 'usulan_program_id';

    public function pegawai(){
        return $this->belongsTo('App\Pegawai', 'operator', 'nip')->select('nip', 'nm_pegawai');
    }

    public function akun(){
        return $this->belongsTo('App\Akun', 'akun_kode', 'akun_kode');
    }

    public function kegiatan(){
        return $this->hasMany('App\UsulanKegiatan', 'usulan_program_id', 'usulan_program_id');
    }

    public function setUsulanProgramDeskripsiAttribute($value)
    {
        $this->attributes['usulan_program_deskripsi'] = Str::title($value);
    }

    public function getUsulanProgramIdEncryptAttribute()
    {
         return Crypt::encryptString($this->attributes['usulan_program_id']);
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
