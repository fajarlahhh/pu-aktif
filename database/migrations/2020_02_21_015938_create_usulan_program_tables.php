<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsulanProgramTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('usulan_program', function (Blueprint $table) {
            $table->bigIncrements('usulan_program_id')->unsigned();
            $table->string('usulan_program_bidang');
            $table->string('akun_kode', 5);
            $table->string('usulan_program_deskripsi');
            $table->longtext('usulan_program_rincian')->nullable();
            $table->longtext('usulan_program_tujuan');
            $table->integer('periode_tahun');
            $table->string('operator', 10);
            $table->softDeletes();
            $table->timestamps();
            $table->foreign('operator')->references('pengguna_id')->on('pengguna')->onDelete('restrict')->onUpdate('cascade');
            $table->foreign('periode_tahun')->references('periode_tahun')->on('periode')->onDelete('restrict')->onUpdate('cascade');
        });

        Schema::create('usulan_kegiatan', function (Blueprint $table) {
            $table->bigInteger('usulan_program_id')->unsigned();
            $table->bigInteger('usulan_kegiatan_id')->unsigned();
            $table->string('akun_kode', 8);
            $table->string('usulan_kegiatan_deskripsi');
            $table->longtext('usulan_kegiatan_rincian')->nullable();
            $table->longtext('usulan_kegiatan_penanggung_jawab')->nullable();
            $table->boolean('verifikasi')->default(0);
            $table->string('operator', 10);
            $table->softDeletes();
            $table->timestamps();
            $table->primary('usulan_kegiatan_id');
            $table->foreign('usulan_program_id')->references('usulan_program_id')->on('usulan_program')->onDelete('cascade')->onUpdate('cascade');
        });

        Schema::create('usulan_kegiatan_detail', function (Blueprint $table) {
            $table->bigInteger('usulan_kegiatan_id')->unsigned();
            $table->integer('usulan_kegiatan_detail_id')->unsigned();
            $table->bigInteger('barang_dan_pekerjaan_id')->unsigned();
            $table->decimal('usulan_kegiatan_detail_nilai_standar', 15, 2);
            $table->decimal('usulan_kegiatan_detail_nilai', 15, 2);
            $table->float('usulan_kegiatan_detail_volume', 8, 2);
            $table->decimal('usulan_kegiatan_detail_nilai_total', 15, 2);
            $table->decimal('usulan_kegiatan_detail_periode_1', 15, 2);
            $table->decimal('usulan_kegiatan_detail_periode_2', 15, 2);
            $table->decimal('usulan_kegiatan_detail_periode_3', 15, 2);
            $table->decimal('usulan_kegiatan_detail_periode_4', 15, 2);
            $table->decimal('usulan_kegiatan_detail_periode_5', 15, 2);
            $table->decimal('usulan_kegiatan_detail_periode_6', 15, 2);
            $table->decimal('usulan_kegiatan_detail_periode_7', 15, 2);
            $table->decimal('usulan_kegiatan_detail_periode_8', 15, 2);
            $table->decimal('usulan_kegiatan_detail_periode_9', 15, 2);
            $table->decimal('usulan_kegiatan_detail_periode_10', 15, 2);
            $table->decimal('usulan_kegiatan_detail_periode_11', 15, 2);
            $table->decimal('usulan_kegiatan_detail_periode_12', 15, 2);
            $table->primary(['usulan_kegiatan_id', 'usulan_kegiatan_detail_id'], 'usulan_kegiatan_detail_primary_key');
            $table->foreign('barang_dan_pekerjaan_id')->references('barang_dan_pekerjaan_id')->on('barang_dan_pekerjaan')->onDelete('restrict')->onUpdate('cascade');
            $table->foreign('usulan_kegiatan_id')->references('usulan_kegiatan_id')->on('usulan_kegiatan')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('usulan_program');
        Schema::dropIfExists('usulan_kegiatan');
        Schema::dropIfExists('usulan_kegiatan_detail');
    }
}
