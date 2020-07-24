<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSumurTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sumur', function (Blueprint $table) {
            $table->bigIncrements('sumur_id');
            $table->string('sumur_kode');
            $table->integer('sumur_tahun_pembuatan')->nullable();
            $table->decimal('sumur_biaya_pembuatan', 15, 2)->default(0)->nullable();
            $table->text('sumur_keterangan')->nullable();
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
        Schema::dropIfExists('sumur');
    }
}
