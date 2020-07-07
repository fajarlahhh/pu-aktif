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
            $table->string('jalan_ruas')->nullable();
            $table->string('jalan_subruas')->nullable();
            $table->string('jalan_nama');
            $table->decimal('jalan_panjang', 15, 2)->default(0)->nullable();
            $table->decimal('jalan_fungsi_kp_2', 15, 2)->default(0)->nullable();
            $table->decimal('jalan_fungsi_kp_3', 15, 2)->default(0)->nullable();
            $table->string('jalan_lebar')->nullable();
            $table->decimal('jalan_aspal_penetrasi_makadam', 15, 2)->default(0)->nullable();
            $table->decimal('jalan_perkerasan_beton', 15, 2)->default(0)->nullable();
            $table->decimal('jalan_telford_kerikil', 15, 2)->default(0)->nullable();
            $table->decimal('jalan_tanah_belum_tembus', 15, 2)->default(0)->nullable();
            $table->decimal('jalan_baik_km', 15, 2)->default(0)->nullable();
            $table->decimal('jalan_baik_persen', 15, 2)->default(0)->nullable();
            $table->decimal('jalan_sedang_km', 15, 2)->default(0)->nullable();
            $table->decimal('jalan_sedang_persen', 15, 2)->default(0)->nullable();
            $table->decimal('jalan_rusak_ringan_km', 15, 2)->default(0)->nullable();
            $table->decimal('jalan_rusak_ringan_persen', 15, 2)->default(0)->nullable();
            $table->decimal('jalan_rusak_berat_km', 15, 2)->default(0)->nullable();
            $table->decimal('jalan_rusak_berat_persen', 15, 2)->default(0)->nullable();
            $table->string('jalan_lhr')->nullable();
            $table->char('jalan_akses_ke_npk')->nullable();
            $table->text('jalan_keterangan')->nullable()->nullable();
            $table->point('marker')->nullable();
            $table->lineString('polyline')->nullable();
            $table->polygon('polygon')->nullable();
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
        Schema::dropIfExists('jalan');
    }
}
