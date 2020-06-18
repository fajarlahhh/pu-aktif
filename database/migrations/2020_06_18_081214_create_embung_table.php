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
            $table->bigIncrements('id');
            $table->integer('embung_tahun_pembuatan');
            $table->double('embung_biaya', 15, 2)->default(0);
            $table->double('embung_ca', 6, 2)->default(0);
            $table->double('embung_luas_genangan', 6, 2)->default(0);
            $table->double('embung_volume', 6, 2)->default(0);
            $table->double('embung_lebar', 6, 2)->default(0);
            $table->double('embung_tinggi', 6, 2)->default(0);
            $table->double('embung_lebar_spillway', 6, 2)->default(0);
            $table->string('embung_keterangan', 100)->nullable()->default('text');
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
        Schema::dropIfExists('embung');
    }
}
