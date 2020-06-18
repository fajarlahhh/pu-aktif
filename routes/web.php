<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::group(['middleware' => ['auth']], function () {
    Route::get('/', 'DashboardController@index');
    Route::get('/jenisanggaran/{jenis}', 'AnggaranController@jenis_anggaran');
    Route::get('/dashboard', 'DashboardController@index')->name('dashboard');
    Route::get('/gantisandi', 'PenggunaController@ganti_sandi')->name('gantisandi');
    Route::patch('/gantisandi', 'PenggunaController@do_ganti_sandi')->name('gantisandi');

    Route::group(['middleware' => ['role_or_permission:administrator|bendungan']], function () {
        Route::prefix('bendungan')->group(function () {
            Route::get('/', 'BendunganController@index')->name('bendungan');
            Route::get('/tambah', 'BendunganController@tambah')->middleware(['role:administrator|user'])->name('bendungan.tambah');
            Route::post('/tambah', 'BendunganController@do_tambah')->middleware(['role:administrator|user'])->name('bendungan.tambah');
            Route::get('/edit', 'BendunganController@edit')->middleware(['role:administrator|user'])->name('bendungan.edit');
            Route::put('/edit', 'BendunganController@do_edit')->middleware(['role:administrator|user'])->name('bendungan.edit');
            Route::delete('/hapus/{id}', 'BendunganController@hapus')->name('bendungan.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:administrator|tipekonstruksi']], function () {
        Route::prefix('tipekonstruksi')->group(function () {
            Route::get('/', 'TipekonstruksiController@index')->name('tipekonstruksi');
            Route::get('/tambah', 'TipekonstruksiController@tambah')->middleware(['role:administrator|user'])->name('tipekonstruksi.tambah');
            Route::post('/tambah', 'TipekonstruksiController@do_tambah')->middleware(['role:administrator|user'])->name('tipekonstruksi.tambah');
            Route::get('/edit', 'TipekonstruksiController@edit')->middleware(['role:administrator|user'])->name('tipekonstruksi.edit');
            Route::put('/edit', 'TipekonstruksiController@do_edit')->middleware(['role:administrator|user'])->name('tipekonstruksi.edit');
            Route::delete('/hapus/{id}', 'TipekonstruksiController@hapus')->name('tipekonstruksi.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:administrator|embung']], function () {
        Route::prefix('embung')->group(function () {
            Route::get('/', 'EmbungController@index')->name('embung');
            Route::get('/tambah', 'EmbungController@tambah')->middleware(['role:administrator|user'])->name('embung.tambah');
            Route::post('/tambah', 'EmbungController@do_tambah')->middleware(['role:administrator|user'])->name('embung.tambah');
            Route::get('/edit', 'EmbungController@edit')->middleware(['role:administrator|user'])->name('embung.edit');
            Route::put('/edit', 'EmbungController@do_edit')->middleware(['role:administrator|user'])->name('embung.edit');
            Route::delete('/hapus/{id}', 'EmbungController@hapus')->name('embung.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:administrator|sumur']], function () {
        Route::prefix('sumur')->group(function () {
            Route::get('/', 'SumurController@index')->name('sumur');
            Route::get('/tambah', 'SumurController@tambah')->middleware(['role:administrator|user'])->name('sumur.tambah');
            Route::post('/tambah', 'SumurController@do_tambah')->middleware(['role:administrator|user'])->name('sumur.tambah');
            Route::get('/edit', 'SumurController@edit')->middleware(['role:administrator|user'])->name('sumur.edit');
            Route::put('/edit', 'SumurController@do_edit')->middleware(['role:administrator|user'])->name('sumur.edit');
            Route::delete('/hapus/{id}', 'SumurController@hapus')->name('sumur.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:administrator|jalan']], function () {
        Route::prefix('jalan')->group(function () {
            Route::get('/', 'JalanController@index')->name('jalan');
            Route::get('/tambah', 'JalanController@tambah')->middleware(['role:administrator|user'])->name('jalan.tambah');
            Route::post('/tambah', 'JalanController@do_tambah')->middleware(['role:administrator|user'])->name('jalan.tambah');
            Route::get('/edit', 'JalanController@edit')->middleware(['role:administrator|user'])->name('jalan.edit');
            Route::put('/edit', 'JalanController@do_edit')->middleware(['role:administrator|user'])->name('jalan.edit');
            Route::delete('/hapus/{id}', 'JalanController@hapus')->name('jalan.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:administrator|jembatan']], function () {
        Route::prefix('jembatan')->group(function () {
            Route::get('/', 'JembatanController@index')->name('jembatan');
            Route::get('/tambah', 'JembatanController@tambah')->middleware(['role:administrator|user'])->name('jembatan.tambah');
            Route::post('/tambah', 'JembatanController@do_tambah')->middleware(['role:administrator|user'])->name('jembatan.tambah');
            Route::get('/edit', 'JembatanController@edit')->middleware(['role:administrator|user'])->name('jembatan.edit');
            Route::put('/edit', 'JembatanController@do_edit')->middleware(['role:administrator|user'])->name('jembatan.edit');
            Route::delete('/hapus/{id}', 'JembatanController@hapus')->name('jembatan.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:administrator|kabupatenkota']], function () {
        Route::prefix('kabupatenkota')->group(function () {
            Route::get('/', 'KabupatenkotaController@index')->name('kabupatenkota');
            Route::get('/tambah', 'KabupatenkotaController@tambah')->middleware(['role:administrator|user'])->name('kabupatenkota.tambah');
            Route::post('/tambah', 'KabupatenkotaController@do_tambah')->middleware(['role:administrator|user'])->name('kabupatenkota.tambah');
            Route::get('/edit', 'KabupatenkotaController@edit')->middleware(['role:administrator|user'])->name('kabupatenkota.edit');
            Route::put('/edit', 'KabupatenkotaController@do_edit')->middleware(['role:administrator|user'])->name('kabupatenkota.edit');
            Route::delete('/hapus/{id}', 'KabupatenkotaController@hapus')->name('kabupatenkota.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:administrator|kecamatan']], function () {
        Route::prefix('kecamatan')->group(function () {
            Route::get('/', 'KecamatanController@index')->name('kecamatan');
            Route::get('/tambah', 'KecamatanController@tambah')->middleware(['role:administrator|user'])->name('kecamatan.tambah');
            Route::post('/tambah', 'KecamatanController@do_tambah')->middleware(['role:administrator|user'])->name('kecamatan.tambah');
            Route::get('/edit', 'KecamatanController@edit')->middleware(['role:administrator|user'])->name('kecamatan.edit');
            Route::put('/edit', 'KecamatanController@do_edit')->middleware(['role:administrator|user'])->name('kecamatan.edit');
            Route::delete('/hapus/{id}', 'KecamatanController@hapus')->name('kecamatan.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:administrator|kelurahandesa']], function () {
        Route::prefix('kelurahandesa')->group(function () {
            Route::get('/', 'KelurahandesaController@index')->name('kelurahandesa');
            Route::get('/tambah', 'KelurahandesaController@tambah')->middleware(['role:administrator|user'])->name('kelurahandesa.tambah');
            Route::post('/tambah', 'KelurahandesaController@do_tambah')->middleware(['role:administrator|user'])->name('kelurahandesa.tambah');
            Route::get('/edit', 'KelurahandesaController@edit')->middleware(['role:administrator|user'])->name('kelurahandesa.edit');
            Route::put('/edit', 'KelurahandesaController@do_edit')->middleware(['role:administrator|user'])->name('kelurahandesa.edit');
            Route::delete('/hapus/{id}', 'KelurahandesaController@hapus')->name('kelurahandesa.hapus');
        });
    });
});

Route::get('/login', 'Auth\LoginController@showLoginForm');
Route::post('/login', 'Auth\LoginController@login')->name('login');

Route::get('/logout', 'Auth\LoginController@logout');
Route::post('/logout', 'Auth\LoginController@logout')->name('logout');

