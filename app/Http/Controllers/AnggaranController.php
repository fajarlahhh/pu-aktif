<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AnggaranController extends Controller
{
    private $client;

    public function __construct()
    {
        $this->client = new \GuzzleHttp\Client();
    }

    public function jenis_anggaran($jenis)
    {
        $guzzle_response = $this->client->request('GET', env('AKUNTING_API').'jenisanggaran/'.$jenis);
        $response = json_decode($guzzle_response->getBody());

        return response()->json($response, $guzzle_response->getStatusCode());
    }
}
