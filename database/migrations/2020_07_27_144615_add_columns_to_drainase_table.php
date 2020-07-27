<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnsToDrainaseTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('drainase', function (Blueprint $table) {
             $table->tinyInteger('kewenangan_provinsi')->after('pengguna_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('drainase', function (Blueprint $table) {
            $table->dropColumn(['infrastruktur']);
        });
    }
}
