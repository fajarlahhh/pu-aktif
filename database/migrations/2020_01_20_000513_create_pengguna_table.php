<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePenggunaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pengguna', function (Blueprint $table) {
            $table->string('pengguna_id', 10);
            $table->string('pengguna_nama');
            $table->string('pengguna_sandi');
            $table->string('pengguna_foto')->nullable();
            $table->boolean('pengguna_status');
            $table->string('session_id')->nullable();
            $table->rememberToken();
            $table->timestamps();
            $table->softDeletes();
            $table->primary('pengguna_id');
            $table->foreign('pengguna_id')->references('nip')->on('personalia.pegawai')->onDelete('restrict')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pengguna');
    }
}
