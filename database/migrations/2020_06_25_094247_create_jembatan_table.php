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
            $table->bigInteger('jalan_id')->unsigned()->nullable();
            $table->integer('jembatan_tahun_pembuatan')->nullable();
            $table->decimal('jembatan_biaya_pembuatan', 15, 2)->default(0)->nullable();
            $table->text('jembatan_keterangan')->nullable();
            $table->point('marker')->nullable();
            $table->lineString('polyline')->nullable();
            $table->polygon('polygon')->nullable();
            $table->string('pengguna_id');
            $table->timestamps();
            $table->foreign('pengguna_id')->references('pengguna_id')->on('pengguna')->onDelete('restrict')->onUpdate('cascade');
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
