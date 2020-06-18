<?php

namespace App\Providers;

use App\Periode;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redis;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
        config(['app.locale' => 'id']);
        \Carbon\Carbon::setLocale('id');

        view()->composer('*', function ($view){
            if(Auth::check()){
                return $view->with('nama_pegawai', Auth::user()->pengguna_nama);
            }
        });
    }
}
