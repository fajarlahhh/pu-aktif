<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJalanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jalan', function (Blueprint $table) {
            $table->bigIncrements('jalan_id');
            $table->string('jalan_ruas_lama')->nullable();
            $table->string('jalan_subruas_lama')->nullable();
            $table->string('jalan_ruas_baru')->nullable();
            $table->string('jalan_subruas_baru')->nullable();
            $table->string('jalan_nama');
            $table->integer('jalan_tahun_pembuatan')->nullable();
            $table->decimal('jalan_biaya_pembuatan', 15, 2)->default(0)->nullable();
            $table->text('jalan_keterangan')->nullable();
            $table->point('marker')->nullable();
            $table->lineString('polyline')->nullable();
            $table->polygon('polygon')->nullable();
            $table->bigInteger('kelurahan_desa_id')->unsigned()->nullable();
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
        Schema::dropIfExists('jalan');
    }
}
