<?php

namespace App;

use Spatie\Permission\Traits\HasRoles;
use Illuminate\Notifications\Notifiable;
use Spatie\Activitylog\Traits\LogsActivity;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Pengguna extends Authenticatable
{
    use SoftDeletes;
    use Notifiable;
    use HasRoles;
    use LogsActivity;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $table = 'pengguna';
    protected $primaryKey = 'pengguna_id';
    public $incrementing = false;
    protected $rememberTokenName = 'remember_token';
    protected $keyType = 'string';

    protected $fillable = [
        'pengguna_id', 'pengguna_sandi'
    ];

    protected $hidden = [
        'password', 'remember_token',
    ];

    public function getAuthPassword()
    {
        return $this->pengguna_sandi;
    }

    public function pegawai(){
        return $this->hasOne('App\Pegawai', 'nip', 'pengguna_id');
	}
}
