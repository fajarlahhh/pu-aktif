<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDrainaseTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('drainase', function (Blueprint $table) {
            $table->bigIncrements('drainase_id');
            $table->string('drainase_nama');
            $table->decimal('drainase_panjang', 15, 2)->default(0);
            $table->bigInteger('kabupaten_kota_id')->unsigned()->nullable();
            $table->point('marker')->nullable();
            $table->lineString('polyline')->nullable();
            $table->polygon('polygon')->nullable();
            $table->string('pengguna_id');
            $table->timestamps();
            $table->foreign('pengguna_id')->references('pengguna_id')->on('pengguna')->onDelete('restrict')->onUpdate('cascade');
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
        Schema::dropIfExists('drainase');
    }
}
