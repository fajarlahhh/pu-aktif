@extends('pages.wilayah.main')

@section('title', ' | '.ucFirst($aksi).' Kecamatan')

@push('css')
	<link href="{{ url('/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
	<link href="{{ url('/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
@endpush

@section('page')
	<li class="breadcrumb-item">Kecamatan</li>
	<li class="breadcrumb-item active">{{ ucFirst($aksi) }} Data</li>
@endsection

@section('header')
	<h1 class="page-header">Kecamatan <small>{{ ucFirst($aksi) }} Data</small></h1>
@endsection

@section('subcontent')
	<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
		<!-- begin panel-heading -->
		<div class="panel-heading">
			<div class="panel-heading-btn">
                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
            </div>
			<h4 class="panel-title">Form</h4>
		</div>
		<form action="{{ route('kecamatan.'.$aksi.'.simpan') }}" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
			@method($aksi == 'tambah'? 'POST': 'PUT')
			@csrf
			<div class="panel-body">
				<input type="hidden" name="redirect" value="{{ $back }}">
                @if($aksi == 'edit')
                <input type="hidden" name="id" value="{{ $data->kecamatan_id }}">
                @endif
                <div class="form-group">
                    <label class="control-label">Nama Kecamatan</label>
                    <input class="form-control" type="text" name="kecamatan_nama" value="{{ $aksi == 'edit'? $data->kecamatan_nama: old('kecamatan_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                </div>
                <div class="form-group">
                    <label class="control-label">Kabupaten/Kota</label>
                    <select class="form-control selectpicker" name="kabupaten_kota_id" id="kabupaten_kota_id" data-live-search="true" data-style="btn-info" data-width="100%">
                        @foreach ($kabupaten_kota as $req)
                            <option value="{{ $req->kabupaten_kota_id }}" {{ $aksi == 'edit' && $data->kabupaten_kota_id == $req->kabupaten_kota_id? "selected": (old('kabupaten_kota_id') == $req->kabupaten_kota_id? "selected": "") }}>{{ $req->kabupaten_kota_nama }}</option>
                        @endforeach
                    </select>
                </div>
			</div>
			<div class="panel-footer">
                @role('user|super-admin|supervisor')
				<input type="submit" value="Simpan" class="btn btn-sm btn-success m-r-3"  />
				@endrole
	            <a href="{{ $back }}" class="btn btn-sm btn-danger">Batal</a>
	            <div class="pull-right">
					This page took {{ (microtime(true) - LARAVEL_START) }} seconds to render
				</div>
	        </div>
		</form>
	</div>
    @include('includes.error')
@endsection

@push('scripts')
	<script src="{{ url('/assets/plugins/parsleyjs/dist/parsley.js') }}"></script>
    <script src="{{ url('/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
@endpush
