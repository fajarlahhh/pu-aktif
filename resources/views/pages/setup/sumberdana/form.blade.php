@extends('pages.setup.main')

@section('title', ' | '.ucFirst($aksi).' Sumber Dana')

@push('css')
	<link href="{{ url('/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
	<link href="{{ url('/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
@endpush

@section('page')
	<li class="breadcrumb-item">Sumber Dana</li>
	<li class="breadcrumb-item active">{{ ucFirst($aksi) }} Data</li>
@endsection

@section('header')
	<h1 class="page-header">Sumber Dana <small>{{ ucFirst($aksi) }} Data</small></h1>
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
		<form action="{{ route('sumberdana.'.$aksi.'.simpan') }}" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
			@method($aksi == 'tambah'? 'POST': 'PUT')
			@csrf
			<div class="panel-body">
				<input type="hidden" name="redirect" value="{{ $back }}">
                @if($aksi == 'edit')
                <input type="hidden" name="id" value="{{ $data->sumber_dana_id }}">
                @endif
                <div class="form-group">
                    <label class="control-label">Sumber Dana</label>
                    <input class="form-control" type="text" name="sumber_dana_nama" value="{{ $aksi == 'edit'? $data->sumber_dana_nama: old('sumber_dana_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
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
