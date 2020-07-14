<?php

namespace App\Http\Controllers;

use App\Pegawai;
use App\Pengguna;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Validator;

class PenggunaController extends Controller
{
    //
	public function index(Request $req)
	{
        $tipe = $req->tipe? $req->tipe: 0;

        $pengguna = Pengguna::where(function($q) use ($req){
            $q->where('pengguna_nama', 'like', '%'.$req->cari.'%')->orWhere('pengguna_id', 'like', '%'.$req->cari.'%');
        });

        if($tipe == 1)
            $pengguna = $pengguna->onlyTrashed();
        else if($tipe == 2)
            $pengguna = $pengguna->withTrashed();

        $pengguna = $pengguna->paginate(10);
        $pengguna->appends([$req->cari, $req->tipe]);
        return view('pages.pengguna.index', [
            'data' => $pengguna,
            'i' => ($req->input('page', 1) - 1) * 10,
            'cari' => $req->cari,
            'tipe' => $tipe,
        ]);
    }

    private function menu()
    {
        $menu = [];
        foreach (config('sidebar.menu') as $key => $row) {
            $sub_menu = [];
            if ($row['title'] != 'Dashboard') {
                if (!empty($row['sub_menu'])) {
                    foreach ($row['sub_menu'] as $key => $sub) {
                        $last_menu = [];
                        if (!empty($sub['sub_menu'])) {
                            foreach ($sub['sub_menu'] as $key => $last) {
                                array_push($last_menu, [
                                    'id' => $last['id'],
                                    'value' => $last['id'],
                                    'title' => $last['title']
                                ]);
                            }
                        }
                        array_push($sub_menu, [
                            'id' => $sub['id'],
                            'value' => $sub['id'],
                            'title' => $sub['title'],
                            'sub' => $last_menu
                        ]);
                    }
                }
                array_push($menu, [
                    'value' => !empty($row['sub_menu'])? strtolower($row['title']) : $row['id'],
                    'title' => $row['title'],
                    'id' => $row['id'],
                    'sub' => $sub_menu
                ]);
            }
        }

        return $menu;
    }

	public function tambah()
	{
        try{
            $menu = '';
            foreach (config('sidebar.menu') as $key => $row) {
                if ($row['id'] != 'dashboard') {
                    $class = $row['id'];
                    $subMenu = '';
                    if (!empty($row['sub_menu'])) {
                        $subMenu .= $this->subMenu(null, $row['sub_menu'], $class);
                    }
                    $menu .= "<div class='hakakses checkbox checkbox-css col-md-6 col-lg-6 col-xl-4'>
                                <input type='checkbox' id='".$row['id']."' onchange='child(this)' name='menu[]' value='".$row['id']."'/>
                                <label for='".$row['id']."' class='p-l-5'>".$row['title']."</label>".$subMenu."</div>";
                }
            }
            return view('pages.pengguna.form', [
                'level' => Role::all(),
                'back' => Str::contains(url()->previous(), ['pengguna/tambah', 'pengguna/edit'])? '/pengguna': url()->previous(),
                'menu' => $menu,
                'aksi' => 'tambah',
                'i' => 0
            ]);
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'pengguna');
		}
	}

	public function do_tambah(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'pengguna_id' => 'required',
                'pengguna_nama' => 'required',
                'pengguna_sandi' => 'required|min:5',
                'pengguna_level' => 'required'
            ],[
                'pengguna_id.required' => 'ID tidak boleh kosong',
                'pengguna_nama.required' => 'Nama tidak boleh kosong',
                'pengguna_sandi.min' => 'Kata Sandi minimal 5 karakter',
                'pengguna_sandi.required'  => 'Kata Sandi tidak boleh kosong',
                'pengguna_level.required'  => 'Level tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

		try{
			$pengguna = new Pengguna();
			$pengguna->pengguna_id = $req->get('pengguna_id');
			$pengguna->pengguna_nama = $req->get('pengguna_nama');
			$pengguna->pengguna_sandi = Hash::make($req->get('pengguna_sandi'));
			$pengguna->pengguna_status = 1;
			$pengguna->save();
			$pengguna->assignRole($req->get('pengguna_level'));

			$pengguna->givePermissionTo('dashboard');
			if($req->get('menu')){
				for ($i=0; $i < sizeof($req->get('menu')); $i++) {
					$pengguna->givePermissionTo($req->get('menu')[$i]);
				}
			}
            toast('Berhasil menyimpan data pengguna', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): 'pengguna');
		}catch(\Exception $e){
            alert()->error('Tambah Data', $e->getMessage());
            return redirect()->back()->withInput();
		}
    }

    function subMenu($data, $value, $silsilah) {
        $subMenu = '';
        foreach ($value as $key => $row) {
            $class = $silsilah." ".$row['id'];
            $subSubMenu = '';

            if (!empty($row['sub_menu'])) {
                $subSubMenu .= $this->subMenu($data, $row['sub_menu'], $class);
            }
            $checked = $data? $data->roles[0]->name == 'admin'? 'checked': ($data->hasPermissionTo(!empty($row['sub_menu'])? strtolower($row['id']) : $row['id'])? 'checked': ''): '';
            $subMenu .= "<div class='hakakses checkbox checkbox-css col-md-12'>
                            <input type='checkbox' class='".$silsilah."' onchange='child(this)' id='".$row['id']."' name='menu[]' value='".$row['id']."' ".$checked."/>
                            <label for='".$row['id']."' class='p-l-5'>".$row['title']."</label>". $subSubMenu."</div>";
        }
        return $subMenu;
    }

	public function edit($id)
	{
		try{
            $data = Pengguna::findOrFail($id);
            $menu = '';
            foreach (config('sidebar.menu') as $key => $row) {
                if ($row['id'] != 'dashboard') {
                    $class = $row['id'];
                    $subMenu = '';
                    if (!empty($row['sub_menu'])) {
                        $subMenu .= $this->subMenu($data, $row['sub_menu'], $class);
                    }
                    $checked = $data? $data->roles[0]->name == 'admin'? 'checked': ($data->hasPermissionTo(!empty($row['sub_menu'])? strtolower($row['id']) : $row['id'])? 'checked': ''): '';
                    $menu .= "<div class='hakakses checkbox checkbox-css col-md-6 col-lg-6 col-xl-4'>
                                <input type='checkbox' id='".$row['id']."' onchange='child(this)' name='menu[]' value='".$row['id']."' ".$checked."/>
                                <label for='".$row['id']."' class='p-l-5'>".$row['title']."</label>".$subMenu."</div>";
                }
            }

			return view('pages.pengguna.form', [
                'data' => $data,
                'level' => (in_array($id, config('admin.nip'))? Role::where('name', 'super-admin')->get(): Role::all()),
                'back' => Str::contains(url()->previous(), 'pengguna/edit')? '/pengguna': url()->previous(),
                'aksi' => 'edit',
                'menu' => $menu,
                'i' => 0
            ]);
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
			return redirect(url()->previous()? url()->previous(): 'pengguna');
		}
	}

	public function do_edit(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'pengguna_id' => 'required',
                'pengguna_nama' => 'required',
                'pengguna_level' => 'required'
            ],[
                'pengguna_id.required' => 'NIP tidak boleh kosong',
                'pengguna_nama.required'  => 'Nama Pegawai tidak boleh kosong',
                'pengguna_level.required'  => 'Level tidak boleh kosong'
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

		try{
            $pengguna = Pengguna::findOrFail($req->get('ID'));
			if ($req->get('pengguna_sandi')) {
				$pengguna->pengguna_sandi = Hash::make($req->get('pengguna_sandi'));
			}
			$pengguna->pengguna_id = $req->get('pengguna_id');
			$pengguna->pengguna_nama = $req->get('pengguna_nama');
			$pengguna->save();
            $pengguna->syncPermissions();
			$pengguna->removeRole($pengguna->getRoleNames()[0]);
            $pengguna->assignRole($req->get('pengguna_level'));

			$pengguna->givePermissionTo('dashboard');
			if($req->get('menu')){
				foreach ($req->get('menu') as $key => $menu) {
					$pengguna->givePermissionTo($menu);
				}
			}
            toast('Berhasil menyimpan data pengguna', 'success')->autoClose(2000);
			return redirect($req->get('redirect')? $req->get('redirect'): 'pengguna');
		}catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return redirect()->back()->withInput();
		}
	}

	public function ganti_sandi($value='')
	{
		try{
            return view('includes.component.modal-password');
        }catch(\Exception $e){
            alert()->error('Edit Data', $e->getMessage());
            return back();
        }
    }

	public function do_ganti_sandi(Request $req)
	{
        $validator = Validator::make($req->all(),
            [
                'pengguna_sandi_baru' => 'required|min:5',
                'pengguna_sandi_lama' => 'required|min:5',
            ],[
                'pengguna_sandi_lama.required' => 'Sandi Lama tidak boleh kosong',
                'pengguna_sandi_lama.min' => 'Sandi Lama minimal 5 karakter',
                'pengguna_sandi_baru.required'  => 'Sandi Baru tidak boleh kosong',
                'pengguna_sandi_baru.min' => 'Sandi Baru minimal 5 karakter',
            ]
        );

        if ($validator->fails()) {
            alert()->error('Validasi Gagal', implode('<br>', $validator->messages()->all()))->toHtml()->autoClose(5000);
            return redirect()->back()->withInput()->with('error', $validator->messages()->all());
        }

		try{
            $id = Auth::id();
			$pengguna = Pengguna::findOrFail($id);
			if($pengguna){
				if(!Hash::check($req->get('pengguna_sandi_lama'), $pengguna->pengguna_sandi)){
                    alert()->error('Ganti Sandi', 'Gagal mengganti kata sandi<br>Kata sandi lama salah')->autoClose(3000);
					return redirect()->back();
				}
			}else{
                alert()->error('Ganti Sandi', 'Gagal mengganti kata sandi<br>Data pengguna tidak tersedia')->autoClose(3000);
				return redirect()->back();
			}
			$pengguna->pengguna_sandi = Hash::make($req->get('pengguna_sandi_baru'));
			$pengguna->save();
            toast('Berhasil mengganti kata sandi', 'success')->autoClose(2000);
			return redirect()->back();
		}catch(\Exception $e){
            alert()->error('Ganti Sandi', $e->getMessage());
			return redirect(url()->previous());
		}
	}

	public function ganti_status($id, $status)
	{
		try{
			$pengguna = Pengguna::findOrFail($id);
			$pengguna->pengguna_status = $status;
			$pengguna->save();
			return $status;
		}catch(\Exception $e){
			return $e->getMessage();
		}
	}

	public function hapus($id)
	{
		try{
            $pengguna = Pengguna::findOrFail($id);
			$pengguna->pengguna_status = 0;
			$pengguna->save();
			$pengguna->delete();
            toast('Berhasil menghapus data pengguna '.$id, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Hapus Data', $e->getMessage());
		}
	}

	public function restore($id)
	{
		try{
            $pengguna = Pengguna::withTrashed()->findOrFail($id)->restore();
            toast('Berhasil mengembalikan data pengguna '.$id, 'success')->autoClose(2000);
		}catch(\Exception $e){
            alert()->error('Restore Data', $e->getMessage());
		}
	}
}
