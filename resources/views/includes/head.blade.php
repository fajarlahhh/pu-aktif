<meta charset="utf-8" />
<title>{{ config("app.name") }} @yield('title')</title>
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
<link rel="icon" href="{{ url('/assets/img/logo/favicon.png') }}" type="image/gif">
<meta content="{{ config("app.name")." ".env('APP_COMPANY') }}" name="description" />
<meta content="Andi Fajar Nugraha" name="author" />
<meta name="csrf-token" content="{{ csrf_token() }}">

<!-- ================== BEGIN BASE CSS STYLE ================== -->
<link href="https://fonts.googleapis.com/css?family=Roboto:100,100italic,300,300italic,400,400italic,500,500italic,700,700italic,900,900italic" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
<link href="{{ url('/assets/css/app.css') }}" rel="stylesheet" />
<link href="{{ url('/assets/plugins/animate/animate.min.css') }}" rel="stylesheet" />
<link href="{{ url('/assets/css/jqueryui/jquery-ui.min.css') }}" rel="stylesheet" />
<link href="{{ url('/assets/css/material/style.min.css') }}" rel="stylesheet" />
<link href="{{ url('/assets/css/material/style-responsive.min.css') }}" rel="stylesheet" />
<link href="{{ url('/assets/css/material/theme/default.css" rel="styl') }}esheet" id="theme" />
<link href="{{ url('/assets/plugins/gritter/css/jquery.gritter.css') }}" rel="stylesheet" />
<link href="{{ url('/assets/plugins/leaflet/dist/leaflet.css') }}" rel="stylesheet">
<!-- ================== END BASE CSS STYLE ================== -->

<!-- ================== BEGIN BASE JS ================== -->
<script src="{{ url('/assets/plugins/pace/pace.min.js') }}"></script>
<!-- ================== END BASE JS ================== -->
<style type="text/css">
	@page {
	    size: auto;
	}
	.numbering{
		text-align: right;
	}
</style>
@stack('css')
