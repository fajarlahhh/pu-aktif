<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAspirasiMasyarakatTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('aspirasi_masyarakat', function (Blueprint $table) {
            $table->bigIncrements('aspirasi_masyarakat_id');
            $table->string('aspirasi_masyarakat_deskripsi_kegiatan');
            $table->integer('aspirasi_masyarakat_tahun');
            $table->double('aspirasi_masyarakat_nilai', 15, 2)->default(0);
            $table->string('aspirasi_masyarakat_penanggung_jawab');
            $table->longText('aspirasi_masyarakat_spesifikasi')->nullable();
            $table->longText('aspirasi_masyarakat_keterangan')->nullable();
            $table->string('infrastruktur_nama');
            $table->string('sumber_dana_nama');
            $table->bigInteger('kelurahan_desa_id')->unsigned()->nullable();
            $table->point('marker')->nullable();
            $table->lineString('polyline')->nullable();
            $table->polygon('polygon')->nullable();
            $table->string('pengguna_id');
            $table->timestamps();
            $table->foreign('pengguna_id')->references('pengguna_id')->on('pengguna')->onDelete('restrict')->onUpdate('cascade');
            $table->foreign('infrastruktur_nama')->references('infrastruktur_nama')->on('infrastruktur')->onDelete('restrict')->onUpdate('cascade');
            $table->foreign('sumber_dana_nama')->references('sumber_dana_nama')->on('sumber_dana')->onDelete('restrict')->onUpdate('cascade');
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
        Schema::dropIfExists('aspirasi_masyarakat');
    }
}
