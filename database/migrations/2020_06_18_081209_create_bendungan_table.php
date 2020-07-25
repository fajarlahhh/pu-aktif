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
            $table->integer('bendungan_tahun_pembuatan')->nullable();
            $table->decimal('bendungan_data_teknik_tinggi', 15, 2)->default(0)->nullable();
            $table->decimal('bendungan_data_teknik_volume', 15, 2)->default(0)->nullable();
            $table->decimal('bendungan_data_teknik_bathimetri', 15, 2)->default(0)->nullable();
            $table->decimal('bendungan_manfaat_air_baku', 15, 2)->default(0)->nullable();
            $table->decimal('bendungan_manfaat_irigasi', 15, 2)->default(0)->nullable();
            $table->decimal('bendungan_manfaat_plta', 15, 2)->default(0)->nullable();
            $table->string('bendungan_manfaat_lainnya')->nullable();
            $table->string('bendungan_kelembagaan_upb')->nullable();
            $table->string('bendungan_kelembagaan_petugas')->nullable();
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
        Schema::dropIfExists('bendungan');
    }
}
