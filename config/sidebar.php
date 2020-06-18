<?php

return [

    /*
    |--------------------------------------------------------------------------
    | View Storage Paths
    |--------------------------------------------------------------------------
    |
    | Most templating systems load templates from disk. Here you may specify
    | an array of paths that should be checked for your views. Of course
    | the usual Laravel view path has already been registered for you.
    |
    */

    'menu' => [[
		'icon' => 'fad fa-tachometer-alt-fast',
		'title' => 'Dashboard',
		'url' => '/dashboard',
		'id' => 'dashboard'
	],[
		'icon' => 'fad fa-database',
		'title' => 'Data Master',
		'url' => 'javascript:;',
		'caret' => true,
		'id' => 'isda',
		'sub_menu' => [[
			'url' => '/tipekonstruksi',
			'id' => 'tipekonstruksi',
			'title' => 'Tipe Konstruksi'
        ]]
	],[
		'icon' => 'fad fa-igloo',
		'title' => 'ISDA',
		'url' => 'javascript:;',
		'caret' => true,
		'id' => 'isda',
		'sub_menu' => [[
			'url' => '/bendungan',
			'id' => 'bendungan',
			'title' => 'Bendungan'
        ],[
			'url' => '/embung',
			'id' => 'embung',
			'title' => 'Embung'
        ],[
			'url' => '/sumur',
			'id' => 'sumur',
			'title' => 'Sumur'
		]]
	],[
		'icon' => 'fad fa-road',
		'title' => 'Jalan dan Jembatan',
		'url' => 'javascript:;',
		'caret' => true,
		'id' => 'jalandanjembatan',
		'sub_menu' => [[
			'url' => '/jalan',
			'id' => 'jalan',
			'title' => 'Jalan'
        ],[
			'url' => '/jembatan',
			'id' => 'jembatan',
			'title' => 'Jembatan'
		]]
	],[
		'icon' => 'fad fa-cog',
		'title' => 'Setup',
		'url' => 'javascript:;',
		'caret' => true,
		'id' => 'setup',
		'sub_menu' => [[
			'url' => '/pengguna',
			'id' => 'pengguna',
			'title' => 'Pengguna'
		]]
	],[
		'icon' => 'fad fa-map',
		'title' => 'Wilayah',
		'url' => 'javascript:;',
		'caret' => true,
		'id' => 'isda',
		'sub_menu' => [[
			'url' => '/kabupatenkota',
			'id' => 'kabupatenkota',
			'title' => 'Kabupaten/Kota'
        ],[
			'url' => '/kecamatan',
			'id' => 'kecamatan',
			'title' => 'Kecamatan'
        ],[
			'url' => '/kelurahandesa',
			'id' => 'kelurahandesa',
			'title' => 'Kelurahan/Desa'
		]]
	]]
];
