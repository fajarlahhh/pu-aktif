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
    Route::get('/barangdanpekerjaan/cari', 'BarangDanPekerjaanController@cari')->name('getbarangdanpekerjaan');
    Route::get('/pelanggan/gettotalgolongan', 'PelangganController@get_total_golongan')->name('gettotalgolongan');
	Route::post('/barangdanpekerjaan/tambah', 'BarangDanPekerjaanController@do_tambah');

    Route::group(['middleware' => ['role_or_permission:administrator|barangdanpekerjaan']], function () {
        Route::prefix('barangdanpekerjaan')->group(function () {
            Route::get('/', 'BarangDanPekerjaanController@index')->name('barangdanpekerjaan');
            Route::get('/tambah', 'BarangDanPekerjaanController@tambah')->middleware(['role:administrator|user'])->name('barangdanpekerjaan.tambah');
            Route::post('/tambah', 'BarangDanPekerjaanController@do_tambah')->middleware(['role:administrator|user']);
            Route::get('/edit', 'BarangDanPekerjaanController@edit')->middleware(['role:administrator|user']);
            Route::put('/edit', 'BarangDanPekerjaanController@do_edit')->middleware(['role:administrator|user'])->name('barangdanpekerjaan.edit');
            Route::delete('/hapus/{id}', 'BarangDanPekerjaanController@hapus');
        });
    });

    Route::group(['middleware' => ['role_or_permission:administrator|pengguna']], function () {
        Route::prefix('pengguna')->group(function () {
            Route::get('/', 'PenggunaController@index')->name('pengguna');
            Route::get('/edit/{id}', 'PenggunaController@edit')->middleware(['role:administrator|user']);
            Route::put('/edit', 'PenggunaController@do_edit')->middleware(['role:administrator|user'])->name('pengguna.edit');
            Route::get('/tambah', 'PenggunaController@tambah')->middleware(['role:administrator|user'])->name('pengguna.tambah');
            Route::post('/tambah', 'PenggunaController@do_tambah')->middleware(['role:administrator|user']);
            Route::delete('/hapus/{id}', 'PenggunaController@hapus')->middleware(['role:administrator|user']);
            Route::delete('/restore/{id}', 'PenggunaController@restore')->middleware(['role:administrator|user']);
            Route::post('/status/{id}/{status}', 'PenggunaController@ganti_status')->middleware(['role:administrator|user']);
        });
    });

    Route::group(['middleware' => ['role_or_permission:administrator|usulanprogram']], function () {
        Route::prefix('usulanprogram')->group(function () {
            Route::get('/', 'UsulanprogramController@index')->name('usulanprogram');
            Route::get('/edit', 'UsulanprogramController@edit')->middleware(['role:administrator|user'])->name('usulanprogram.edit');
            Route::put('/edit', 'UsulanprogramController@do_edit')->middleware(['role:administrator|user'])->name('usulanprogram.edit');
            Route::get('/tambah', 'UsulanprogramController@tambah')->middleware(['role:administrator|user'])->name('usulanprogram.tambah');
            Route::post('/tambah', 'UsulanprogramController@do_tambah')->middleware(['role:administrator|user'])->name('usulanprogram.tambah');
            Route::delete('/hapus', 'UsulanprogramController@hapus')->middleware(['role:administrator|user']);
            Route::patch('/restore', 'UsulanprogramController@restore')->middleware(['role:administrator|supervisor']);
            Route::get('/detail', 'UsulanprogramController@detail')->name('usulanprogram.detail');
            Route::prefix('kegiatan')->group(function () {
                Route::get('/', 'UsulankegiatanController@index')->name('usulankegiatan');
                Route::get('/edit', 'UsulankegiatanController@edit')->middleware(['role:administrator|user'])->name('usulankegiatan.edit');
                Route::put('/edit', 'UsulankegiatanController@do_edit')->middleware(['role:administrator|user'])->name('usulankegiatan.edit');
                Route::get('/tambah', 'UsulankegiatanController@tambah')->middleware(['role:administrator|user'])->name('usulankegiatan.tambah');
                Route::post('/tambah', 'UsulankegiatanController@do_tambah')->middleware(['role:administrator|user'])->name('usulankegiatan.tambah');
                Route::delete('/hapus', 'UsulankegiatanController@hapus')->middleware(['role:administrator|user']);
                Route::delete('/restore', 'UsulankegiatanController@restore')->middleware(['role:administrator|supervisor']);
                Route::get('/detail', 'UsulankegiatanController@detail')->name('usulankegiatan.detail');
                Route::get('/{program}/subkegiatan', 'UsulankegiatanController@sub_kegiatan');
            });
        });
    });

    Route::group(['middleware' => ['role_or_permission:administrator|usulanpendapatanair']], function () {
        Route::prefix('usulanpendapatanair')->group(function () {
            Route::get('/', 'UsulanpendapatanairController@index')->name('usulanpendapatanair');
            Route::get('/edit', 'UsulanpendapatanairController@edit')->middleware(['role:administrator|user']);
            Route::put('/edit', 'UsulanpendapatanairController@do_edit')->middleware(['role:administrator|user'])->name('usulanpendapatanair.edit');
            Route::get('/tambah', 'UsulanpendapatanairController@tambah')->middleware(['role:administrator|user']);
            Route::post('/tambah/{step}', 'UsulanpendapatanairController@tambah')->middleware(['role:administrator|user'])->name('usulanpendapatanair.tambah');
            Route::post('/simpan', 'UsulanpendapatanairController@do_tambah')->middleware(['role:administrator|user'])->name('usulanpendapatanair.simpan');
            Route::delete('/hapus', 'UsulanpendapatanairController@hapus')->middleware(['role:administrator|user']);
            Route::delete('/restore', 'UsulanpendapatanairController@restore')->middleware(['role:administrator|supervisor']);
            Route::get('/detail', 'UsulanpendapatanairController@detail')->name('usulanpendapatanair.detail');
        });
    });

    Route::group(['middleware' => ['role_or_permission:administrator|usulansambungbaru']], function () {
        Route::prefix('usulansambungbaru')->group(function () {
            Route::get('/', 'UsulansambungbaruController@index')->name('usulansambungbaru');
            Route::get('/edit', 'UsulansambungbaruController@edit')->middleware(['role:administrator|user']);
            Route::put('/edit', 'UsulansambungbaruController@do_edit')->middleware(['role:administrator|user'])->name('usulansambungbaru.edit');
            Route::get('/tambah', 'UsulansambungbaruController@tambah')->middleware(['role:administrator|user'])->name('usulansambungbaru.tambah');
            Route::post('/tambah', 'UsulansambungbaruController@do_tambah')->middleware(['role:administrator|user'])->name('usulansambungbaru.tambah');
            Route::delete('/hapus', 'UsulansambungbaruController@hapus')->middleware(['role:administrator|user']);
            Route::patch('/restore', 'UsulansambungbaruController@restore')->middleware(['role:administrator|supervisor']);
            Route::get('/detail', 'UsulansambungbaruController@detail')->name('usulansambungbaru.detail');
        });
    });

    Route::group(['middleware' => ['role_or_permission:administrator|periode']], function () {
        Route::prefix('periode')->group(function () {
            Route::get('/', 'PeriodeController@index')->name('periode');
            Route::get('/tambah', 'PeriodeController@tambah')->middleware(['role:administrator|user'])->name('periode.tambah');
            Route::post('/tambah', 'PeriodeController@do_tambah')->middleware(['role:administrator|user']);
            Route::patch('/aktif/{id}', 'PeriodeController@aktif')->middleware(['role:administrator|user']);
            Route::patch('/nonaktif/{id}', 'PeriodeController@nonaktif')->middleware(['role:administrator|supervisor']);
            Route::delete('/hapus/{id}', 'PeriodeController@hapus')->middleware(['role:administrator|supervisor']);
        });
    });
});

Route::get('/login', 'Auth\LoginController@showLoginForm');
Route::post('/login', 'Auth\LoginController@login')->name('login');

Route::get('/logout', 'Auth\LoginController@logout');
Route::post('/logout', 'Auth\LoginController@logout')->name('logout');

