<?php

namespace App\Exports;

use App\UsulanProgram;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class UsulanprogramExport implements FromView
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
        $data = UsulanProgram::withTrashed()->with('akun')->with('kegiatan.akun')->with('kegiatan.detail')->where('usulan_program_id', $this->id)->first();
        return view('pages.usulan.usulanprogram.detail', [
            'data' => $data,
            'error' => $this->error,
            'jenis' => $this->jenis,
            'judul' => 'CETAK USULAN PROGRAM'
        ]);
    }
}
