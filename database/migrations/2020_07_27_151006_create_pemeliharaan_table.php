<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePemeliharaanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pemeliharaan', function (Blueprint $table) {
            $table->integer('pemeliharaan_tahun');
            $table->text('pemeliharaan_uraian');
            $table->double('pemeliharaan_nilai', 15, 2);
            $table->text('pemeliharaan_jenis');
            $table->string('pemeliharaan_penanggung_jawab');
            $table->string('infrastruktur_jenis');
            $table->bigInteger('infrastruktur_id');
            $table->string('pengguna_id');
            $table->timestamps();
            $table->foreign('pengguna_id')->references('pengguna_id')->on('pengguna')->onDelete('restrict')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pemeliharaan');
    }
}
