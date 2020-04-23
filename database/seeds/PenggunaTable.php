<?php

use Carbon\Carbon;
use Illuminate\Database\Seeder;

class PenggunaTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('pengguna')->insert([
            'pengguna_id' => "admin",
            'pengguna_nama' => "Administrator",
            'pengguna_sandi' => Hash::make('admin'), // password
            'pengguna_status' => 1,
            'remember_token' => Str::random(10),
            'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
            'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
        ]);
    }
}
