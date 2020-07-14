<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEmbungTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('embung', function (Blueprint $table) {
            $table->bigIncrements('embung_id');
            $table->string('embung_nama');
            $table->integer('embung_tahun_pembuatan')->nullable();
            $table->decimal('embung_biaya_pembuatan', 15, 2)->default(0)->nullable();
            $table->decimal('embung_data_teknik_ca_km', 15, 2)->default(0)->nullable();
            $table->decimal('embung_data_teknik_luasan_genangan', 15, 2)->default(0)->nullable();
            $table->string('embung_data_teknik_tipe_konstruksi')->nullable();
            $table->decimal('embung_data_teknik_volume', 15, 2)->default(0)->nullable();
            $table->decimal('embung_data_teknik_l', 15, 2)->default(0)->nullable();
            $table->decimal('embung_data_teknik_h', 15, 2)->default(0)->nullable();
            $table->decimal('embung_data_teknik_lebar_spillway', 15, 2)->default(0)->nullable();
            $table->decimal('embung_fungsi_irigasi', 15, 2)->default(0)->nullable();
            $table->decimal('embung_fungsi_ternak', 15, 2)->default(0)->nullable();
            $table->decimal('embung_fungsi_air_baku', 15, 2)->default(0)->nullable();
            $table->decimal('embung_fungsi_pltm', 15, 2)->default(0)->nullable();
            $table->text('embung_keterangan')->nullable();
            $table->bigInteger('kelurahan_desa_id')->unsigned()->nullable();
            $table->point('marker')->nullable();
            $table->lineString('polyline')->nullable();
            $table->polygon('polygon')->nullable();
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
        Schema::dropIfExists('embung');
    }
}
