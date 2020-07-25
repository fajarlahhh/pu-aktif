<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('das', function (Blueprint $table) {
            $table->bigIncrements('das_id');
            $table->string('das_kode_ws');
            $table->string('das_pola_aliran');
            $table->string('das_nama');
            $table->decimal('das_luas', 15, 2)->default(0)->nullable();
            $table->integer('das_jumlah_orde_sungai')->nullable();
            $table->integer('das_jumlah_desa')->nullable();
            $table->text('das_keterangan')->nullable();
            $table->point('marker')->nullable();
            $table->lineString('polyline')->nullable();
            $table->polygon('polygon')->nullable();
            $table->string('pengguna_id');
            $table->timestamps();
            $table->foreign('pengguna_id')->references('pengguna_id')->on('pengguna')->onDelete('restrict')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('das');
    }
}
