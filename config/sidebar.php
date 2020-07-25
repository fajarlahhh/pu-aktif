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
		'icon' => 'fad fa-home',
		'title' => 'Beranda',
		'url' => '/dashboard',
		'id' => 'dashboard'
	],[
		'icon' => 'fad fa-database',
		'title' => 'Data Induk',
		'url' => 'javascript:;',
		'caret' => true,
		'id' => 'datainduk',
		'sub_menu' => [[
            'title' => 'Bina Marga',
            'url' => 'javascript:;',
            'caret' => true,
            'id' => 'binamarga',
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
            'title' => 'Cipta Karya',
            'url' => 'javascript:;',
            'caret' => true,
            'id' => 'ciptakarya',
            'sub_menu' => [[
                'url' => '/das',
                'id' => 'das',
                'title' => 'Daerah Aliran Sungai'
            ],[
                'url' => '/drainase',
                'id' => 'drainase',
                'title' => 'Drainase'
			],[
                'url' => '/poshidrologi',
                'id' => 'poshidrologi',
                'title' => 'Pos Hidrologi'
            ],[
                'url' => '/spam',
                'id' => 'spam',
                'title' => 'SPAM'
            ],[
                'url' => '/sumur',
                'id' => 'sumur',
                'title' => 'Sumur'
            ]]
        ],[
            'title' => 'SDA',
            'url' => 'javascript:;',
            'caret' => true,
            'id' => 'sda',
            'sub_menu' => [[
                'url' => '/bendungan',
                'id' => 'bendungan',
                'title' => 'Bendungan'
            ],[
                'url' => '/daerahirigasi',
                'id' => 'daerahirigasi',
                'title' => 'Daerah Irigasi'
            ],[
                'url' => '/embung',
                'id' => 'embung',
                'title' => 'Embung'
            ],[
                'url' => '/mataair',
                'id' => 'mataair',
                'title' => 'Mata Air'
            ]]
        ]]
    ],[
		'icon' => 'fad fa-lightbulb-on',
		'title' => 'POKIR',
		'url' => 'javascript:;',
		'caret' => true,
		'id' => 'pokir',
		'sub_menu' => [[
			'url' => '/pembangunanpokir',
			'id' => 'pembangunanpokir',
			'title' => 'Pembangunan'
		],[
			'url' => '/pemeliharaanpokir',
			'id' => 'pemeliharaanpokir',
			'title' => 'Pemeliharaan'
        ]]
    ],[
		'icon' => 'fad fa-building',
		'title' => 'Kewenangan Provinsi',
		'url' => 'javascript:;',
		'caret' => true,
		'id' => 'kewenanganprovinsi',
		'sub_menu' => [[
			'url' => '/pembangunankewenanganprovinsi',
			'id' => 'pembangunankewenanganprovinsi',
			'title' => 'Pembangunan'
		],[
			'url' => '/pemeliharaankewenanganprovinsi',
			'id' => 'pemeliharaankewenanganprovinsi',
			'title' => 'Pemeliharaan'
        ]]
    ],[
		'icon' => 'fad fa-file-chart-line',
		'title' => 'Laporan',
		'url' => 'javascript:;',
		'caret' => true,
		'id' => 'laporan',
		'sub_menu' => [[
			'url' => '/laporanaspirasimasyarakat',
			'id' => 'laporanaspirasimasyarakat',
			'title' => 'Aspirasi Masyarakat'
		],[
			'url' => '/laporankewenanganprovinsi',
			'id' => 'laporankewenanganprovinsi',
			'title' => 'Kewenangan Provinsi'
        ]]
    ],[
		'icon' => 'fad fa-cog',
		'title' => 'Setup',
		'url' => 'javascript:;',
		'caret' => true,
		'id' => 'setup',
		'sub_menu' => [[
			'icon' => 'fad fa-user',
			'title' => 'Pengguna',
			'url' => '/pengguna',
			'id' => 'pengguna'
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
