<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKewenanganProvinsiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kewenangan_provinsi', function (Blueprint $table) {
            $table->bigIncrements('kewenangan_provinsi_id');
            $table->string('kewenangan_provinsi_deskripsi_kegiatan');
            $table->string('kewenangan_provinsi_jenis_infrastruktur');
            $table->integer('kewenangan_provinsi_tahun');
            $table->double('kewenangan_provinsi_nilai', 15, 2)->default(0);
            $table->string('kewenangan_provinsi_penanggung_jawab');
            $table->longText('kewenangan_provinsi_spesifikasi')->nullable();
            $table->longText('kewenangan_provinsi_keterangan')->nullable();
            $table->bigInteger('infrastruktur_id');
            $table->string('sumber_dana_nama');
            $table->string('pengguna_id');
            $table->timestamps();
            $table->foreign('pengguna_id')->references('pengguna_id')->on('pengguna')->onDelete('restrict')->onUpdate('cascade');
            $table->foreign('sumber_dana_nama')->references('sumber_dana_nama')->on('sumber_dana')->onDelete('restrict')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('kewenangan_provinsi');
    }
}
