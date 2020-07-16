@extends('layouts.empty', ['paceTop' => true, 'bodyExtraClass' => 'bg-white'])

@section('title', ' | Login')

@push('css')
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
@endpush

@section('content')
<!-- begin login -->
<div class="login login-with-news-feed">
	<!-- begin news-feed -->
	<div class="news-feed">
	    <div class="news-image" style="background-image: url({{ 'public/assets/img/login-bg/login-bg.jpg' }})"></div>
        <h4 class="caption-title"><b>Dinas Pekerjaan Umum</b> & Penataan Ruang</h4>
		<div class="news-caption">
			<h4 class="caption-title"><b>Dinas Pekerjaan Umum</b> & Penataan Ruang</h4>
			<p>
				Program Penyusunan Data & Informasi Keterpaduan Infrastruktur Pekerjaan Umum
			</p>
		</div>
	</div>
	<!-- end news-feed -->
	<!-- begin right-content -->
	<div class="right-content">
		<!-- begin login-header -->
		<div class="login-header">
			<div class="brand">
	            <img src="{{ url('/public/assets/img/logo/favicon.png') }}" height="30"> <strong>A K T I F</strong>
				<small><strong>Analisa Keterpaduan InFrastruktur</strong></small><br><small>Penyusunan Data & Informasi Keterpaduan Infrastruktur Pekerjaan Umum  </small>
			</div>
			<div class="icon">
				<i class="fad fa-sign-in"></i>
			</div>
		</div>
		<!-- end login-header -->
		<!-- begin login-content -->
		<div class="login-content">
			<form action="{{ route('login') }}" method="POST" class="margin-bottom-0" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
				<div class="form-group m-b-15">
					<input type="text" class="form-control form-control-lg" autocomplete="off" name="uid" placeholder="ID Pengguna" value="{{ old('uid') }}" required />
				</div>
				<div class="form-group m-b-15">
					<input type="password" class="form-control form-control-lg" name="password" placeholder="Kata Sandi" value="{{ old('password') }}" required />
				</div>
				<div class="checkbox checkbox-css m-b-30">
					<input type="checkbox" id="remember" name="remember" />
					<label for="remember">
						Ingat Saya
					</label>
				</div>
				<div class="login-buttons">
					<button type="submit" class="btn btn-success btn-block btn-lg">
                        <i class="fad fa-sign-in-alt"></i> Login
                    </button>
				</div>
				<hr />
				<p class="text-center text-grey-darker">
					&copy; Copyright 2020. Hak Cipta pada Dinas PUPR Provinsi NTB. <br><small>Support system by <a href="www.lestari-informatika.com">Lestari Informatika</a></small>
				</p>
			</form>
		</div>
		<!-- end login-content -->
	</div>
	<!-- end right-container -->
</div>
<!-- end login -->
    @include('sweetalert::alert')
@endsection


@push('scripts')
	<script src="{{ url('/public/assets/plugins/parsleyjs/dist/parsley.js') }}"></script>
@endpush
