<?php

use App\Pengguna;
use Illuminate\Database\Seeder;

class ModelHasRolesTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $pengguna = Pengguna::findOrFail('201604331');
        $pengguna->assignRole('administrator');
    }
}
