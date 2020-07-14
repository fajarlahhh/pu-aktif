<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;

class SumberDana extends Model
{
    //
    use LogsActivity;
    //
    protected $table = 'sumber_dana';
    protected $primaryKey = 'sumber_dana_id';
}
