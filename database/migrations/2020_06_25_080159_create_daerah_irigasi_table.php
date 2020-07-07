<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDaerahIrigasiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('daerah_irigasi', function (Blueprint $table) {
            $table->bigIncrements('daerah_irigasi_id');
            $table->string('daerah_irigasi_nama');
            $table->integer('daerah_irigasi_tahun_pembuatan')->nullable();
            $table->decimal('daerah_irigasi_luas_area_potensial', 15, 2)->default(0);
            $table->decimal('daerah_irigasi_sawah_irigasi', 15, 2)->default(0);
            $table->decimal('daerah_irigasi_belum irigasi', 15, 2)->default(0);
            $table->decimal('daerah_irigasi_belum_sawah', 15, 2)->default(0);
            $table->decimal('daerah_irigasi_alih_fungsi', 15, 2)->default(0);
            $table->text('daerah_irigasi_keterangan')->nullable();
            $table->point('marker')->nullable();
            $table->lineString('polyline')->nullable();
            $table->polygon('polygon')->nullable();
            $table->bigInteger('kabupaten_kota_id')->unsigned()->nullable();
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
        Schema::dropIfExists('daerah_irigasi');
    }
}
