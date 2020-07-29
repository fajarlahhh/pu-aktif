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
    Route::get('/jalan/cari', 'JalanController@cari');
    Route::get('/kabupatenkota/cari', 'KabupatenkotaController@cari');
    Route::get('/kecamatan/cari', 'KecamatanController@cari');
    Route::get('/kelurahandesa/cari', 'KelurahandesaController@cari');
    Route::patch('/gantisandi', 'PenggunaController@do_ganti_sandi')->name('gantisandi');

    Route::group(['middleware' => ['role_or_permission:super-admin|pengguna']], function () {
        Route::prefix('pengguna')->group(function () {
            Route::get('/', 'PenggunaController@index')->name('pengguna');
            Route::get('/tambah', 'PenggunaController@tambah')->middleware(['role:super-admin|user'])->name('pengguna.tambah');
            Route::post('/tambah', 'PenggunaController@do_tambah')->middleware(['role:super-admin|user'])->name('pengguna.tambah.simpan');
            Route::get('/edit/{id}', 'PenggunaController@edit')->middleware(['role:super-admin|user'])->name('pengguna.edit');
            Route::put('/edit', 'PenggunaController@do_edit')->middleware(['role:super-admin|user'])->name('pengguna.edit.simpan');
            Route::delete('/hapus/{id}', 'PenggunaController@hapus')->middleware(['role:super-admin|user']);
            Route::delete('/restore/{id}', 'PenggunaController@restore')->middleware(['role:super-admin|user']);
            Route::post('/status/{id}/{status}', 'PenggunaController@ganti_status')->middleware(['role:super-admin|user']);
        });
    });

    Route::group(['middleware' => ['role_or_permission:super-admin|das']], function () {
        Route::prefix('das')->group(function () {
            Route::get('/', 'DasController@index')->name('das');
            Route::get('/tambah', 'DasController@tambah')->middleware(['role:super-admin|user'])->name('das.tambah');
            Route::get('/tambah', 'DasController@tambah')->middleware(['role:super-admin|user'])->name('das.tambah');
            Route::post('/tambah', 'DasController@do_tambah')->middleware(['role:super-admin|user'])->name('das.tambah');
            Route::get('/edit', 'DasController@edit')->middleware(['role:super-admin|user'])->name('das.edit');
            Route::put('/edit', 'DasController@do_edit')->middleware(['role:super-admin|user'])->name('das.edit');
            Route::get('/peta', 'DasController@peta')->middleware(['role:super-admin|user']);
            Route::delete('/hapus/{id}', 'DasController@hapus')->name('das.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:super-admin|mataair']], function () {
        Route::prefix('mataair')->group(function () {
            Route::get('/', 'MataairController@index')->name('mataair');
            Route::get('/tambah', 'MataairController@tambah')->middleware(['role:super-admin|user'])->name('mataair.tambah');
            Route::get('/tambah', 'MataairController@tambah')->middleware(['role:super-admin|user'])->name('mataair.tambah');
            Route::post('/tambah', 'MataairController@do_tambah')->middleware(['role:super-admin|user'])->name('mataair.tambah');
            Route::get('/edit', 'MataairController@edit')->middleware(['role:super-admin|user'])->name('mataair.edit');
            Route::put('/edit', 'MataairController@do_edit')->middleware(['role:super-admin|user'])->name('mataair.edit');
            Route::get('/peta', 'MataairController@peta')->middleware(['role:super-admin|user']);
            Route::delete('/hapus/{id}', 'MataairController@hapus')->name('mataair.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:super-admin|bendungan']], function () {
        Route::prefix('bendungan')->group(function () {
            Route::get('/', 'BendunganController@index')->name('bendungan');
            Route::get('/tambah', 'BendunganController@tambah')->middleware(['role:super-admin|user'])->name('bendungan.tambah');
            Route::get('/tambah', 'BendunganController@tambah')->middleware(['role:super-admin|user'])->name('bendungan.tambah');
            Route::post('/tambah', 'BendunganController@do_tambah')->middleware(['role:super-admin|user'])->name('bendungan.tambah');
            Route::get('/edit', 'BendunganController@edit')->middleware(['role:super-admin|user'])->name('bendungan.edit');
            Route::put('/edit', 'BendunganController@do_edit')->middleware(['role:super-admin|user'])->name('bendungan.edit');
            Route::get('/peta', 'BendunganController@peta')->middleware(['role:super-admin|user']);
            Route::delete('/hapus/{id}', 'BendunganController@hapus')->name('bendungan.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:super-admin|embung']], function () {
        Route::prefix('embung')->group(function () {
            Route::get('/', 'EmbungController@index')->name('embung');
            Route::get('/tambah', 'EmbungController@tambah')->middleware(['role:super-admin|user'])->name('embung.tambah');
            Route::get('/tambah', 'EmbungController@tambah')->middleware(['role:super-admin|user'])->name('embung.tambah');
            Route::post('/tambah', 'EmbungController@do_tambah')->middleware(['role:super-admin|user'])->name('embung.tambah');
            Route::get('/edit', 'EmbungController@edit')->middleware(['role:super-admin|user'])->name('embung.edit');
            Route::put('/edit', 'EmbungController@do_edit')->middleware(['role:super-admin|user'])->name('embung.edit');
            Route::get('/peta', 'EmbungController@peta')->middleware(['role:super-admin|user']);
            Route::delete('/hapus/{id}', 'EmbungController@hapus')->name('embung.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:super-admin|daerahirigasi']], function () {
        Route::prefix('daerahirigasi')->group(function () {
            Route::get('/', 'DaerahirigasiController@index')->name('daerahirigasi');
            Route::get('/tambah', 'DaerahirigasiController@tambah')->middleware(['role:super-admin|user'])->name('daerahirigasi.tambah');
            Route::get('/tambah', 'DaerahirigasiController@tambah')->middleware(['role:super-admin|user'])->name('daerahirigasi.tambah');
            Route::post('/tambah', 'DaerahirigasiController@do_tambah')->middleware(['role:super-admin|user'])->name('daerahirigasi.tambah');
            Route::get('/edit', 'DaerahirigasiController@edit')->middleware(['role:super-admin|user'])->name('daerahirigasi.edit');
            Route::put('/edit', 'DaerahirigasiController@do_edit')->middleware(['role:super-admin|user'])->name('daerahirigasi.edit');
            Route::get('/peta', 'DaerahirigasiController@peta')->middleware(['role:super-admin|user']);
            Route::delete('/hapus/{id}', 'DaerahirigasiController@hapus')->name('daerahirigasi.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:super-admin|jalan']], function () {
        Route::prefix('jalan')->group(function () {
            Route::get('/', 'JalanController@index')->name('jalan');
            Route::get('/tambah', 'JalanController@tambah')->middleware(['role:super-admin|user'])->name('jalan.tambah');
            Route::get('/tambah', 'JalanController@tambah')->middleware(['role:super-admin|user'])->name('jalan.tambah');
            Route::post('/tambah', 'JalanController@do_tambah')->middleware(['role:super-admin|user'])->name('jalan.tambah');
            Route::get('/edit', 'JalanController@edit')->middleware(['role:super-admin|user'])->name('jalan.edit');
            Route::put('/edit', 'JalanController@do_edit')->middleware(['role:super-admin|user'])->name('jalan.edit');
            Route::get('/peta', 'JalanController@peta')->middleware(['role:super-admin|user']);
            Route::delete('/hapus/{id}', 'JalanController@hapus')->name('jalan.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:super-admin|sumur']], function () {
        Route::prefix('sumur')->group(function () {
            Route::get('/', 'SumurController@index')->name('sumur');
            Route::get('/tambah', 'SumurController@tambah')->middleware(['role:super-admin|user'])->name('sumur.tambah');
            Route::get('/tambah', 'SumurController@tambah')->middleware(['role:super-admin|user'])->name('sumur.tambah');
            Route::post('/tambah', 'SumurController@do_tambah')->middleware(['role:super-admin|user'])->name('sumur.tambah');
            Route::get('/edit', 'SumurController@edit')->middleware(['role:super-admin|user'])->name('sumur.edit');
            Route::put('/edit', 'SumurController@do_edit')->middleware(['role:super-admin|user'])->name('sumur.edit');
            Route::get('/peta', 'SumurController@peta')->middleware(['role:super-admin|user']);
            Route::delete('/hapus/{id}', 'SumurController@hapus')->name('sumur.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:super-admin|pembangunan']], function () {
        Route::prefix('pembangunan')->group(function () {
            Route::get('/', 'PembangunanController@index')->name('pembangunan');
            Route::get('/infrastruktur', 'PembangunanController@index')->name('pembangunan.infrastruktur');
            Route::get('/tambah', 'PembangunanController@tambah')->middleware(['role:super-admin|user'])->name('pembangunan.tambah');
            Route::post('/tambah/{step}', 'PembangunanController@tambah')->middleware(['role:super-admin|user']);
            Route::post('/simpan', 'PembangunanController@do_tambah')->middleware(['role:super-admin|user'])->name('pembangunan.simpan');
            Route::delete('/hapus/{id}', 'PembangunanController@hapus')->name('pembangunan.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:super-admin|kewenanganprovinsi']], function () {
        Route::prefix('kewenanganprovinsi')->group(function () {
            Route::get('/', 'KewenanganprovinsiController@index')->name('kewenanganprovinsi');
            Route::get('/tambah', 'KewenanganprovinsiController@tambah')->middleware(['role:super-admin|user'])->name('kewenanganprovinsi.tambah');
            Route::get('/tambah', 'KewenanganprovinsiController@tambah')->middleware(['role:super-admin|user'])->name('kewenanganprovinsi.tambah');
            Route::post('/tambah', 'KewenanganprovinsiController@do_tambah')->middleware(['role:super-admin|user'])->name('kewenanganprovinsi.tambah');
            Route::get('/edit', 'KewenanganprovinsiController@edit')->middleware(['role:super-admin|user'])->name('kewenanganprovinsi.edit');
            Route::put('/edit', 'KewenanganprovinsiController@do_edit')->middleware(['role:super-admin|user'])->name('kewenanganprovinsi.edit');
            Route::get('/peta', 'KewenanganprovinsiController@peta')->middleware(['role:super-admin|user']);
            Route::delete('/hapus/{id}', 'KewenanganprovinsiController@hapus')->name('kewenanganprovinsi.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:super-admin|laporanpembangunan']], function () {
        Route::prefix('laporanpembangunan')->group(function () {
            Route::get('/', 'PembangunanController@index_laporan')->name('laporanpembangunan');
            Route::get('/cetak', 'PembangunanController@cetak')->middleware(['role:super-admin|user'])->name('laporanpembangunan.cetak');
        });
    });

    Route::group(['middleware' => ['role_or_permission:super-admin|laporankewenanganprovinsi']], function () {
        Route::prefix('laporankewenanganprovinsi')->group(function () {
            Route::get('/', 'KewenanganprovinsiController@index_laporan')->name('laporankewenanganprovinsi');
            Route::get('/cetak', 'KewenanganprovinsiController@cetak')->middleware(['role:super-admin|user'])->name('laporankewenanganprovinsi.cetak');
        });
    });

    Route::group(['middleware' => ['role_or_permission:super-admin|jembatan']], function () {
        Route::prefix('jembatan')->group(function () {
            Route::get('/', 'JembatanController@index')->name('jembatan');
            Route::get('/tambah', 'JembatanController@tambah')->middleware(['role:super-admin|user'])->name('jembatan.tambah');
            Route::get('/tambah', 'JembatanController@tambah')->middleware(['role:super-admin|user'])->name('jembatan.tambah');
            Route::post('/tambah', 'JembatanController@do_tambah')->middleware(['role:super-admin|user'])->name('jembatan.tambah');
            Route::get('/edit', 'JembatanController@edit')->middleware(['role:super-admin|user'])->name('jembatan.edit');
            Route::put('/edit', 'JembatanController@do_edit')->middleware(['role:super-admin|user'])->name('jembatan.edit');
            Route::get('/peta', 'JembatanController@peta')->middleware(['role:super-admin|user']);
            Route::delete('/hapus/{id}', 'JembatanController@hapus')->name('jembatan.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:super-admin|spam']], function () {
        Route::prefix('spam')->group(function () {
            Route::get('/', 'SpamController@index')->name('spam');
            Route::get('/tambah', 'SpamController@tambah')->middleware(['role:super-admin|user'])->name('spam.tambah');
            Route::get('/tambah', 'SpamController@tambah')->middleware(['role:super-admin|user'])->name('spam.tambah');
            Route::post('/tambah', 'SpamController@do_tambah')->middleware(['role:super-admin|user'])->name('spam.tambah');
            Route::get('/edit', 'SpamController@edit')->middleware(['role:super-admin|user'])->name('spam.edit');
            Route::put('/edit', 'SpamController@do_edit')->middleware(['role:super-admin|user'])->name('spam.edit');
            Route::get('/peta', 'SpamController@peta')->middleware(['role:super-admin|user']);
            Route::delete('/hapus/{id}', 'SpamController@hapus')->name('spam.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:super-admin|drainase']], function () {
        Route::prefix('drainase')->group(function () {
            Route::get('/', 'DrainaseController@index')->name('drainase');
            Route::get('/tambah', 'DrainaseController@tambah')->middleware(['role:super-admin|user'])->name('drainase.tambah');
            Route::get('/tambah', 'DrainaseController@tambah')->middleware(['role:super-admin|user'])->name('drainase.tambah');
            Route::post('/tambah', 'DrainaseController@do_tambah')->middleware(['role:super-admin|user'])->name('drainase.tambah');
            Route::get('/edit', 'DrainaseController@edit')->middleware(['role:super-admin|user'])->name('drainase.edit');
            Route::put('/edit', 'DrainaseController@do_edit')->middleware(['role:super-admin|user'])->name('drainase.edit');
            Route::get('/peta', 'DrainaseController@peta')->middleware(['role:super-admin|user']);
            Route::delete('/hapus/{id}', 'DrainaseController@hapus')->name('drainase.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:super-admin|jenisinfrastruktur']], function () {
        Route::prefix('jenisinfrastruktur')->group(function () {
            Route::get('/', 'JenisinfrastrukturController@index')->name('jenisinfrastruktur');
            Route::get('/tambah', 'JenisinfrastrukturController@tambah')->middleware(['role:super-admin|user'])->name('jenisinfrastruktur.tambah');
            Route::post('/tambah', 'JenisinfrastrukturController@do_tambah')->middleware(['role:super-admin|user'])->name('jenisinfrastruktur.tambah.simpan');
            Route::get('/edit/{id}', 'JenisinfrastrukturController@edit')->middleware(['role:super-admin|user'])->name('jenisinfrastruktur.edit');
            Route::put('/edit', 'JenisinfrastrukturController@do_edit')->middleware(['role:super-admin|user'])->name('jenisinfrastruktur.edit.simpan');
            Route::delete('/hapus/{id}', 'JenisinfrastrukturController@hapus')->name('jenisinfrastruktur.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:super-admin|sumberdana']], function () {
        Route::prefix('sumberdana')->group(function () {
            Route::get('/', 'SumberdanaController@index')->name('sumberdana');
            Route::get('/tambah', 'SumberdanaController@tambah')->middleware(['role:super-admin|user'])->name('sumberdana.tambah');
            Route::post('/tambah', 'SumberdanaController@do_tambah')->middleware(['role:super-admin|user'])->name('sumberdana.tambah.simpan');
            Route::get('/edit/{id}', 'SumberdanaController@edit')->middleware(['role:super-admin|user'])->name('sumberdana.edit');
            Route::put('/edit', 'SumberdanaController@do_edit')->middleware(['role:super-admin|user'])->name('sumberdana.edit.simpan');
            Route::delete('/hapus/{id}', 'SumberdanaController@hapus')->name('sumberdana.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:super-admin|desamiskin']], function () {
        Route::prefix('desamiskin')->group(function () {
            Route::get('/', 'DesamiskinController@index')->name('desamiskin');
            Route::get('/cetak', 'DesamiskinController@cetak')->name('desamiskin.cetak');
            Route::get('/tambah', 'DesamiskinController@tambah')->middleware(['role:super-admin|user'])->name('desamiskin.tambah');
            Route::post('/tambah', 'DesamiskinController@do_tambah')->middleware(['role:super-admin|user'])->name('desamiskin.tambah.simpan');
            Route::get('/edit/{id}', 'DesamiskinController@edit')->middleware(['role:super-admin|user'])->name('desamiskin.edit');
            Route::put('/edit', 'DesamiskinController@do_edit')->middleware(['role:super-admin|user'])->name('desamiskin.edit.simpan');
            Route::delete('/hapus/{id}', 'DesamiskinController@hapus')->name('desamiskin.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:super-admin|kabupatenkota']], function () {
        Route::prefix('kabupatenkota')->group(function () {
            Route::get('/', 'KabupatenkotaController@index')->name('kabupatenkota');
            Route::get('/tambah', 'KabupatenkotaController@tambah')->middleware(['role:super-admin|user'])->name('kabupatenkota.tambah');
            Route::post('/tambah', 'KabupatenkotaController@do_tambah')->middleware(['role:super-admin|user'])->name('kabupatenkota.tambah.simpan');
            Route::get('/edit/{id}', 'KabupatenkotaController@edit')->middleware(['role:super-admin|user'])->name('kabupatenkota.edit');
            Route::put('/edit', 'KabupatenkotaController@do_edit')->middleware(['role:super-admin|user'])->name('kabupatenkota.edit.simpan');
            Route::delete('/hapus/{id}', 'KabupatenkotaController@hapus')->name('kabupatenkota.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:super-admin|kecamatan']], function () {
        Route::prefix('kecamatan')->group(function () {
            Route::get('/', 'KecamatanController@index')->name('kecamatan');
            Route::get('/tambah', 'KecamatanController@tambah')->middleware(['role:super-admin|user'])->name('kecamatan.tambah');
            Route::post('/tambah', 'KecamatanController@do_tambah')->middleware(['role:super-admin|user'])->name('kecamatan.tambah.simpan');
            Route::get('/edit/{id}', 'KecamatanController@edit')->middleware(['role:super-admin|user'])->name('kecamatan.edit');
            Route::put('/edit', 'KecamatanController@do_edit')->middleware(['role:super-admin|user'])->name('kecamatan.edit.simpan');
            Route::delete('/hapus/{id}', 'KecamatanController@hapus')->name('kecamatan.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:super-admin|kelurahandesa']], function () {
        Route::prefix('kelurahandesa')->group(function () {
            Route::get('/', 'KelurahandesaController@index')->name('kelurahandesa');
            Route::get('/tambah', 'KelurahandesaController@tambah')->middleware(['role:super-admin|user'])->name('kelurahandesa.tambah');
            Route::post('/tambah', 'KelurahandesaController@do_tambah')->middleware(['role:super-admin|user'])->name('kelurahandesa.tambah.simpan');
            Route::get('/edit/{id}', 'KelurahandesaController@edit')->middleware(['role:super-admin|user'])->name('kelurahandesa.edit');
            Route::put('/edit', 'KelurahandesaController@do_edit')->middleware(['role:super-admin|user'])->name('kelurahandesa.edit.simpan');
            Route::delete('/hapus/{id}', 'KelurahandesaController@hapus')->name('kelurahandesa.hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:super-admin|datapengguna']], function () {
        Route::prefix('datapengguna')->group(function () {
            Route::get('/', 'PenggunaController@index')->name('datapengguna');
            Route::get('/edit/{id}', 'PenggunaController@edit')->middleware(['role:super-admin|user|supervisor']);
            Route::put('/edit', 'PenggunaController@do_edit')->middleware(['role:super-admin|user|supervisor'])->name('datapengguna.edit');
            Route::get('/tambah', 'PenggunaController@tambah')->middleware(['role:super-admin|user|supervisor'])->name('datapengguna.tambah');
            Route::post('/tambah', 'PenggunaController@do_tambah')->middleware(['role:super-admin|user|supervisor'])->name('datapengguna.tambah');
            Route::delete('/hapus/{id}', 'PenggunaController@hapus')->middleware(['role:super-admin|user|supervisor']);
            Route::patch('/restore/{id}', 'PenggunaController@restore')->middleware(['role:super-admin|supervisor']);
            Route::get('/detail', 'PenggunaController@detail')->name('datapengguna.detail');
        });
    });
});

Route::get('/login', 'Auth\LoginController@showLoginForm');
Route::post('/login', 'Auth\LoginController@login')->name('login');

Route::get('/logout', 'Auth\LoginController@logout');
Route::post('/logout', 'Auth\LoginController@logout')->name('logout');

