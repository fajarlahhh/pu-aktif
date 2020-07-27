<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSpamTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('spam', function (Blueprint $table) {
            $table->bigIncrements('spam_id');
            $table->string('spam_nama_unit');
            $table->integer('spam_tahun_pembuatan')->nullable();
            $table->decimal('spam_kapasitas_terpasang', 15, 2)->default(0);
            $table->decimal('spam_kapasitas_produksi', 15, 2)->default(0);
            $table->decimal('spam_kapasitas_distribusi', 15, 2)->default(0);
            $table->decimal('spam_kapasitas_air_terjual', 15, 2)->default(0);
            $table->decimal('spam_kapasitas_idle', 15, 2)->default(0);
            $table->integer('spam_jumlah_sr')->nullable();
            $table->integer('spam_jumlah_jiwa_terlayani')->nullable();
            $table->bigInteger('kabupaten_kota_id')->unsigned()->nullable();
            $table->point('marker')->nullable();
            $table->lineString('polyline')->nullable();
            $table->polygon('polygon')->nullable();
            $table->string('pengguna_id');
            $table->timestamps();
            $table->foreign('pengguna_id')->references('pengguna_id')->on('pengguna')->onDelete('restrict')->onUpdate('cascade');
            $table->foreign('kabupaten_kota_id')->references('kabupaten_kota_id')->on('kabupaten_kota')->onDelete('restrict')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('spam');
    }
}
