<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsulanSambungBaruTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('usulan_sambung_baru', function (Blueprint $table) {
            $table->bigIncrements('usulan_sambung_baru_id');
            $table->string('golongan_id');
            $table->string('wilayah_nama');
            $table->longText('usulan_sambung_baru_keterangan')->nullable();
            $table->decimal('usulan_sambung_baru_biaya', 15, 2)->default(0);
            $table->string('paket_id');
            $table->string('akun_kode', 8);
            $table->integer('periode_tahun');
            $table->boolean('verifikasi');
            $table->string('operator', 10);
            $table->softDeletes();
            $table->timestamps();
            $table->foreign('operator')->references('pengguna_id')->on('pengguna')->onDelete('restrict')->onUpdate('cascade');
            $table->foreign('akun_kode')->references('akun_kode')->on('akunting.akun')->onDelete('restrict')->onUpdate('cascade');
            $table->foreign('periode_tahun')->references('periode_tahun')->on('periode')->onDelete('restrict')->onUpdate('cascade');
        });

        Schema::create('usulan_sambung_baru_periode', function (Blueprint $table) {
            $table->bigInteger('usulan_sambung_baru_id')->unsigned();
            $table->tinyInteger('usulan_sambung_baru_periode_bulan');
            $table->float('usulan_sambung_baru_periode_pelanggan', 8, 2)->default(0);
            $table->decimal('usulan_sambung_baru_periode_biaya_standar', 15, 2)->default(0);
            $table->decimal('usulan_sambung_baru_periode_ppn', 15, 2)->default(0);
            $table->decimal('usulan_sambung_baru_periode_total_biaya', 15, 2)->default(0);
            $table->primary(['usulan_sambung_baru_id', 'usulan_sambung_baru_periode_bulan'], 'usulan_sambung_baru_periode_primary_key');
            $table->foreign('usulan_sambung_baru_id')->references('usulan_sambung_baru_id')->on('usulan_sambung_baru')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('usulan_sambung_baru');
        Schema::dropIfExists('usulan_sambung_baru_periode');
    }
}
