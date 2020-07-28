<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePembangunanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pembangunan', function (Blueprint $table) {
            $table->bigIncrements('pembangunan_id');
            $table->integer('pembangunan_tahun');
            $table->text('pembangunan_uraian');
            $table->double('pembangunan_nilai', 15, 2);
            $table->text('pembangunan_jenis');
            $table->string('pembangunan_penanggung_jawab');
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
        Schema::dropIfExists('pembangunan');
    }
}
