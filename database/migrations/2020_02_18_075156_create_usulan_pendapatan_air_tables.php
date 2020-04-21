<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsulanPendapatanAirTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('usulan_pendapatan_air', function (Blueprint $table) {
            $table->bigIncrements('usulan_pendapatan_air_id');
            $table->string('akun_kode', 8);
            $table->string('golongan_id');
            $table->string('wilayah_nama');
            $table->longText('usulan_pendapatan_air_keterangan');
            $table->integer('periode_tahun');
            $table->boolean('verifikasi');
            $table->string('operator', 10);
            $table->softDeletes();
            $table->timestamps();
            $table->foreign('operator')->references('pengguna_id')->on('pengguna')->onDelete('restrict')->onUpdate('cascade');
            $table->foreign('akun_kode')->references('akun_kode')->on('akunting.akun')->onDelete('restrict')->onUpdate('cascade');
            $table->foreign('periode_tahun')->references('periode_tahun')->on('periode')->onDelete('restrict')->onUpdate('cascade');
        });

        Schema::create('usulan_pendapatan_air_periode', function (Blueprint $table) {
            $table->bigInteger('usulan_pendapatan_air_id')->unsigned();
            $table->tinyInteger('usulan_pendapatan_air_periode_bulan');
            $table->float('usulan_pendapatan_air_periode_jumlah_pelanggan', 8, 2)->default(0);
            $table->float('usulan_pendapatan_air_periode_sambung_baru', 8, 2)->default(0);
            $table->float('usulan_pendapatan_air_periode_sambung_pasif', 8, 2)->default(0);
            $table->float('usulan_pendapatan_air_periode_sambung_kembali', 8, 2)->default(0);
            $table->float('usulan_pendapatan_air_periode_sambung_aktif_akhir_bulan', 8, 2)->default(0);
            $table->float('usulan_pendapatan_air_periode_rata_konsumsi', 8, 2)->default(0);
            $table->float('usulan_pendapatan_air_periode_jumlah_terjual', 12, 2)->default(0);
            $table->decimal('usulan_pendapatan_air_periode_rencana_penjualan', 12, 2)->default(0);
            $table->decimal('usulan_pendapatan_air_periode_rata_harga_air', 12, 2)->default(0);
            $table->primary(['usulan_pendapatan_air_id', 'usulan_pendapatan_air_periode_bulan'], 'usulan_pendapatan_air_periode_primary_key');
            $table->foreign('usulan_pendapatan_air_id')->references('usulan_pendapatan_air_id')->on('usulan_pendapatan_air')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('usulan_pendapatan_air');
        Schema::dropIfExists('usulan_pendapatan_air_periode');
    }
}
