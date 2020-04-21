<?php

namespace App\Listeners;

use App\Pegawai;
use Pusher\Pusher;
use Illuminate\Auth\Events\Login;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redis;
use Illuminate\Support\Facades\Session;

class LogSuccessfulLogin
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  Login  $event
     * @return void
     */
    public function handle(Login $event)
    {
        //
        $id = Auth::id();
        $pegawai = Pegawai::with('bagian')->where('nip', $id)->first();
        $data_pegawai = [
            'nama' => $pegawai->nm_pegawai,
            'bagian' => $pegawai->bagian->nm_bagian,
        ];
        Redis::set(Session::getId(), $pegawai? collect($data_pegawai): $id);

        $options = array(
            'cluster' => env('PUSHER_APP_CLUSTER'),
            'useTLS' => true
        );

        $pusher = new Pusher(
            env('PUSHER_APP_KEY'),
            env('PUSHER_APP_SECRET'),
            env('PUSHER_APP_ID'),
            $options
        );

        $data = ['user' => Auth::id(), 'session' => Session::getId()];
        $pusher->trigger('my-channel', 'my-event', $data);
    }
}
