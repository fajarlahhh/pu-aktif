<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PetaController extends Controller
{
    //
    public function lokasi(Request $req)
    {
        return view('includes.component.peta')
        ->with('long', $req->long)
        ->with('lat', $req->lat);
    }
}
