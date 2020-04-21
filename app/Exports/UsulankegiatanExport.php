<?php

namespace App\Exports;

use App\UsulanKegiatan;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class UsulankegiatanExport implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */
    private $id;
    private $jenis;
    private $error;

    public function __construct($id, $jenis, $error)
    {
        $this->id = $id;
        $this->jenis = $jenis;
        $this->error = $error;
    }

    public function view(): View
    {
        $data = UsulanKegiatan::withTrashed()->with('akun')->with('detail')->where('usulan_kegiatan_id', $this->id)->first();
        return view('pages.usulan.usulanprogram.kegiatan.detail',[
            'data' => $data,
            'error' => $this->error,
            'jenis' => $this->jenis,
            'judul' => 'CETAK USULAN KEGIATAN'
        ]);
    }
}
