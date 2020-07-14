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
		'id' => 'datamaster',
		'sub_menu' => [[
            'title' => 'ISDA',
            'url' => 'javascript:;',
            'caret' => true,
            'id' => 'isda',
            'sub_menu' => [[
                'url' => '/daerahirigasi',
                'id' => 'daerahirigasi',
                'title' => 'Daerah Irigasi'
            ],[
                'url' => '/embung',
                'id' => 'embung',
                'title' => 'Embung'
            ]]
        ],[
			'url' => '/jalan',
			'id' => 'jalan',
			'title' => 'Jalan'
        ],[
			'url' => '/jembatan',
			'id' => 'jembatan',
			'title' => 'Jembatan'
		],]
    ],[
		'icon' => 'fad fa-building',
		'title' => 'Infrastruktur',
		'url' => 'javascript:;',
		'caret' => true,
		'id' => 'infrastruktur',
		'sub_menu' => [[
			'url' => '/aspirasimasyarakat',
			'id' => 'aspirasimasyarakat',
			'title' => 'Aspirasi Masyarakat'
		],[
			'url' => '/kewenanganprovinsi',
			'id' => 'kewenanganprovinsi',
			'title' => 'Kewenangan Provinsi'
        ]]
    ],[
		'icon' => 'fad fa-file-chart-line',
		'title' => 'Laporan',
		'url' => 'javascript:;',
		'caret' => true,
		'id' => 'laporan',
		'sub_menu' => []
    ],[
		'icon' => 'fad fa-user',
		'title' => 'Pengguna',
		'url' => '/pengguna',
		'id' => 'pengguna'
	],[
		'icon' => 'fad fa-cog',
		'title' => 'Setup',
		'url' => 'javascript:;',
		'caret' => true,
		'id' => 'setup',
		'sub_menu' => [[
			'url' => '/jenisinfrastruktur',
			'id' => 'jenisinfrastruktur',
			'title' => 'Jenis Infrastruktur'
        ],[
			'url' => '/sumberdana',
			'id' => 'sumberdana',
			'title' => 'Sumber Dana'
		]]
    ],[
		'icon' => 'fad fa-map',
		'title' => 'Wilayah',
		'url' => 'javascript:;',
		'caret' => true,
		'id' => 'wilayah',
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
