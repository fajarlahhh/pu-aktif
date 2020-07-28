<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnsToPemeliharaanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('pemeliharaan', function (Blueprint $table) {
            //
            $table->bigInteger('sumber_dana_id')->unsigned()->after('infrastruktur_id');
            $table->bigInteger('kabupaten_kota_id')->unsigned()->after('sumber_dana_id');
            $table->foreign('sumber_dana_id')->references('sumber_dana_id')->on('sumber_dana')->onDelete('restrict')->onUpdate('cascade');
            $table->foreign('kabupaten_kota_id')->references('kabupaten_kota_id')->on('kabupaten_kota')->onDelete('restrict')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('pemeliharaan', function (Blueprint $table) {
            //
            $table->dropColumn(['sumber_dana_id', 'kabupaten_kota_id']);
        });
    }
}
