<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDesaMiskinTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('desa_miskin', function (Blueprint $table) {
            $table->bigIncrements('desa_miskin_id');
            $table->integer('desa_miskin_tahun');
            $table->bigInteger('kelurahan_desa_id')->unsigned();
            $table->string('pengguna_id');
            $table->timestamps();
            $table->foreign('pengguna_id')->references('pengguna_id')->on('pengguna')->onDelete('restrict')->onUpdate('cascade');
            $table->foreign('kelurahan_desa_id')->references('kelurahan_desa_id')->on('kelurahan_desa')->onDelete('restrict')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('desa_miskin');
    }
}
