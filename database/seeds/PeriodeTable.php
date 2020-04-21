<?php

use Carbon\Carbon;
use Illuminate\Database\Seeder;

class PeriodeTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::table('periode')->insert([
            'periode_tahun' => 2021,
            'operator' => "201604331",
            'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
            'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
        ]);
    }
}
