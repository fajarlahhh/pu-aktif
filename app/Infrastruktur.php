<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;

class Infrastruktur extends Model
{
    //
    use LogsActivity;
    //
    protected $table = 'infrastruktur';
    protected $primaryKey = 'infrastruktur_id';
}
