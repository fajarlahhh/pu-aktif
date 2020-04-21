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
            'pengguna_id' => "201604331",
            'pengguna_sandi' => Hash::make('201604331'), // password
            'pengguna_status' => 1,
            'remember_token' => Str::random(10),
            'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
            'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
        ]);
    }
}
