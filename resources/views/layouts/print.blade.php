<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8" />
    <title>{{ config("app.name") }} @yield('title')</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
    <link rel="icon" href="{{ url('public/assets/img/logo/favicon.png') }}" type="image/gif">
    <meta content="{{ config("app.name")." ".env('APP_COMPANY') }}" name="description" />
    <meta content="Andi Fajar Nugraha" name="author" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link href="{{ url('/public/assets/css/app.css') }}" rel="stylesheet" />
    <link href="{{ url('/public/assets/plugins/animate/animate.min.css') }}" rel="stylesheet" />
    <link href="{{ url('/public/assets/css/jqueryui/jquery-ui.min.css') }}" rel="stylesheet" />
    <link href="{{ url('/public/assets/css/material/style.min.css') }}" rel="stylesheet" />
    <link href="{{ url('/public/assets/css/material/style-responsive.min.css') }}" rel="stylesheet" />
    <link href="{{ url('/public/assets/css/material/theme/default.css" rel="styl') }}esheet" id="theme" />
    <link href="{{ url('/public/assets/plugins/gritter/css/jquery.gritter.css') }}" rel="stylesheet" />
    <link href="{{ url('/public/assets/plugins/leaflet/dist/leaflet.css') }}" rel="stylesheet">
</head>
<body class="bg-white">
    <div class="text-center">
        <img src="{{ url('public/assets/img/logo/favicon.png') }}" alt="" class="width-100"><br>
        <h5 class="p-t-10">{!! $judul !!}</h5>
        <hr>
    </div>
    @include($halaman)
</body>
</html>
