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
		'icon' => 'fad fa-cog',
		'title' => 'Administrator',
		'url' => 'javascript:;',
		'caret' => true,
		'id' => 'administrator',
		'sub_menu' => [[
			'url' => '/periode',
			'id' => 'periode',
			'title' => 'Periode Anggaran'
		]]
	],[
		'icon' => 'fad fa-print',
		'title' => 'Cetak',
		'url' => 'javascript:;',
		'caret' => true,
		'id' => 'administrator',
		'sub_menu' => [[
			'url' => '/cetakusulan',
			'id' => 'cetakusulan',
			'title' => 'Data Usulan'
		]]
	],[
		'icon' => 'fad fa-database',
		'title' => 'Data Master',
		'url' => 'javascript:;',
		'caret' => true,
		'id' => 'administrator',
		'sub_menu' => [[
			'url' => '/barangdanpekerjaan',
			'id' => 'barangdanpekerjaan',
			'title' => 'Data Barang dan Pekerjaan'
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
		'icon' => 'fad fa-sticky-note',
		'title' => 'Usulan',
		'url' => 'javascript:;',
		'id' => 'usulan',
		'caret' => true,
		'sub_menu' => [[
			'url' => '/usulanprogram',
			'id' => 'usulanprogram',
			'title' => 'Program'
        ],[
			'url' => '/usulanpendapatanair',
			'id' => 'usulanpendapatanair',
			'title' => 'Pendapatan Air'
        ],[
			'url' => '/usulanpendapatannonusaha',
			'id' => 'usulanpendapatannonusaha',
			'title' => 'Pendapatan Non Usaha'
        ],[
			'url' => '/usulanpendapatandeposito',
			'id' => 'usulanpendapatandeposito',
			'title' => 'Pendapatan Deposito'
        ],[
			'url' => '/usulanpendapatangiro',
			'id' => 'usulanpendapatangiro',
			'title' => 'Pendapatan Jasa Giro'
        ],[
			'url' => '/usulanpendapatansewaaset',
			'id' => 'usulanpendapatansewaaset',
			'title' => 'Pendapatan Sewa Aset'
        ],[
			'url' => '/usulanpendapatanjualaset',
			'id' => 'usulanpendapatanjualaset',
			'title' => 'Pendapatan Penjualan Aset'
        ],[
			'url' => '/usulansambungbaru',
			'id' => 'usulansambungbaru',
			'title' => 'Sambung Baru'
        ]]
	]]
];
