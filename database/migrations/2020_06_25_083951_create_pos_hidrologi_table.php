<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePosHidrologiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pos_hidrologi', function (Blueprint $table) {
            $table->bigIncrements('pos_hidrologi_id');
            $table->string('pos_hidrologi_nama_hw');
            $table->string('pos_hidrologi_operator_hw');
            $table->string('pos_hidrologi_pengelola_aset');
            $table->string('pos_hidrologi_no_hp');
            $table->integer('pos_hidrologi_tahun_pembuatan')->nullable();
            $table->decimal('pos_hidrologi_biaya_pembuatan', 15, 2)->default(0)->nullable();
            $table->text('pos_hidrologi_keterangan')->nullable();
            $table->point('marker')->nullable();
            $table->lineString('polyline')->nullable();
            $table->polygon('polygon')->nullable();
            $table->bigInteger('kelurahan_desa_id')->unsigned()->nullable();
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
        Schema::dropIfExists('pos_hidrologi');
    }
}
