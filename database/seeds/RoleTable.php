<?php

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;

class RoleTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $level = array('administrator', 'supervisor', 'user', 'guest');
        $i = 1;
        foreach ($level as $lvl) {
            if(DB::table('roles')->where('name', $lvl)->count() == 0)
                Role::create(['name' => $lvl]);
            $i++;
        }
    }
}
