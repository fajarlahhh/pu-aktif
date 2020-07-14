<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJembatanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jembatan', function (Blueprint $table) {
            $table->bigIncrements('jembatan_id');
            $table->string('jembatan_nomor');
            $table->string('jembatan_nama');
            $table->decimal('jembatan_dimensi_panjang', 15, 2)->default(0)->nullable();
            $table->decimal('jembatan_dimensi_lebar', 15, 2)->default(0)->nullable();
            $table->decimal('jembatan_dimensi_bentang', 15, 2)->default(0)->nullable();
            $table->string('jembatan_bangunan_atas_tipe')->nullable();
            $table->decimal('jembatan_bangunan_atas_kondisi', 15, 2)->default(0)->nullable();
            $table->string('jembatan_bangunan_bawah_tipe')->nullable();
            $table->decimal('jembatan_bangunan_bawah_kondisi', 15, 2)->default(0)->nullable();
            $table->string('jembatan_bangunan_pondasi_tipe')->nullable();
            $table->decimal('jembatan_bangunan_pondasi_kondisi', 15, 2)->default(0)->nullable();
            $table->string('jembatan_bangunan_lantai_tipe')->nullable();
            $table->decimal('jembatan_bangunan_lantai_kondisi', 15, 2)->default(0)->nullable();
            $table->text('jembatan_keterangan')->nullable();
            $table->bigInteger('jalan_id')->unsigned()->nullable();
            $table->bigInteger('kabupaten_kota_id')->unsigned()->nullable();
            $table->point('marker')->nullable();
            $table->lineString('polyline')->nullable();
            $table->polygon('polygon')->nullable();
            $table->string('pengguna_id');
            $table->timestamps();
            $table->foreign('pengguna_id')->references('pengguna_id')->on('pengguna')->onDelete('restrict')->onUpdate('cascade');
            $table->foreign('kabupaten_kota_id')->references('kabupaten_kota_id')->on('kabupaten_kota')->onDelete('restrict')->onUpdate('cascade');
            $table->foreign('jalan_id')->references('jalan_id')->on('jalan')->onDelete('restrict')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('jembatan');
    }
}
