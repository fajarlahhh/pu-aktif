<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBendunganTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bendungan', function (Blueprint $table) {
            $table->bigIncrements('bendungan_id');
            $table->string('bendungan_nama');
            $table->integer('bendungan_tahun_pembuatan');
            $table->double('bendungan_biaya', 15, 2)->default(0);
            $table->double('bendungan_tinggi', 6, 2)->default(0);
            $table->double('bendungan_volume_tampungan', 15, 2)->default(0);
            $table->double('bendungan_bathimetri', 6, 2)->default(0);
            $table->integer('kelurahan_desa_id')->unsigned();
            $table->string('pengguna_id');
            $table->timestamps();
            $table->foreign('pengguna_id')->references('pengguna_id')->on('pengguna')->onDelete('restrict')->onUpdate('cascade');
            $table->foreign('kelurahan_desa_id')->references('kelurahan_desa_id')->on('kecamatan_id')->onDelete('restrict')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('bendungan');
    }
}
