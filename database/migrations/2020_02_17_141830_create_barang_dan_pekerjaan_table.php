<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBarangDanPekerjaanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('barang_dan_pekerjaan', function (Blueprint $table) {
            $table->bigIncrements('barang_dan_pekerjaan_id');
            $table->string('barang_dan_pekerjaan_nama')->unique();
            $table->decimal('barang_dan_pekerjaan_harga', 12, 2);
            $table->string('barang_dan_pekerjaan_jenis');
            $table->string('barang_dan_pekerjaan_satuan');
            $table->string('operator', 10);
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('barang_dan_pekerjaan');
    }
}
