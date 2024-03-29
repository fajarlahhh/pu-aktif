<?php

namespace App\Http\Controllers\Auth;

use App\Pengguna;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    protected function redirectTo()
    {
        return '/';
    }

    public function showLoginForm(){
        if(!session()->has('url.intended'))
        {
            session(['url.intended' => url()->previous()]);
        }
        return view('pages.login');
    }

    public function login(Request $req)
    {
        $validator = Validator::make($req->all(), [
            'uid' => 'required',
            'password' => 'required'
        ],[
            'uid.required'  => 'ID tidak boleh kosong',
            'password.required'  => 'Kata Sandi tidak boleh kosong'
        ]);

        if ($validator->fails()) {
            alert()->error('Login Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return Redirect::back()->withInput();
        }

        try {
            $remember = ($req->remember == 'on') ? true : false;

            if (Auth::attempt(['pengguna_id' => $req->uid, 'password' => $req->password], $remember)) {

                // $new_session_id = Session::getId();
                // $pengguna = Pengguna::find($req->uid);

                // if($pengguna->session_id != '') {
                //     $last_session = Session::getHandler()->read($pengguna->session_id);
                //     if ($last_session) {
                //         if (Session::getHandler()->destroy($pengguna->session_id)) {

                //         }
                //     }
                // }

                // $pengguna->session_id = $new_session_id;
                // $pengguna->save();

                return redirect()->intended('dashboard')
                ->with([
                    'gritter_judul' => 'Selamat datang ',
                    'gritter_teks' => 'Selamat bekerja dan semoga sukses',
                    'gritter_gambar' => url('public/assets/img/user/user.png')
                    ]);
            }
            alert()->error('Login Gagal','ID Pengguna atau Kata Sandi salah');
            return Redirect::back()->withInput();
		}catch(\Exception $e){
            alert()->error('Login Gagal', $e->getMessage());
            return Redirect::back()->withInput();
        }
    }

    private function username()
    {
        return 'pengguna_id';
    }

    public function logout(Request $request) {
        Auth::logout();
        return redirect('/login');
    }
}
