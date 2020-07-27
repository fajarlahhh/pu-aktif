@extends('pages.setup.main')

@section('title', ' | '.ucFirst($aksi).' Desa Miskin')

@push('css')
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
	<link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
@endpush

@section('page')
	<li class="breadcrumb-item">Desa Miskin</li>
	<li class="breadcrumb-item active">{{ ucFirst($aksi) }} Data</li>
@endsection

@section('header')
	<h1 class="page-header">Desa Miskin <small>{{ ucFirst($aksi) }} Data</small></h1>
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
		<form action="{{ route('desamiskin.'.$aksi.'.simpan') }}" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
			@method($aksi == 'tambah'? 'POST': 'PUT')
			@csrf
			<div class="panel-body">
				<input type="hidden" name="redirect" value="{{ $back }}">
                @if($aksi == 'edit')
                <input type="hidden" name="id" value="{{ $data->desa_miskin_id }}">
                @endif
                <div class="form-group">
                    <label class="control-label">Tahun</label>
                    <input class="form-control" type="number" name="desa_miskin_tahun" value="{{ $aksi == 'edit'? $data->desa_miskin_tahun: ($tahun? $tahun: old('desa_miskin_tahun')) }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                </div>
                <div class="form-group">
                    <label class="control-label">Kelurahan/Desa</label>
                    <select class="form-control selectpicker" name="kelurahan_desa_id" id="kelurahan_desa_id" data-live-search="true" data-style="btn-info" data-width="100%" data-size="5" onchange="caridesa()">
                        <option value="">Pilih Kelurahan/Desa</option>
                        @foreach ($desa as $row)
                        <option value="{{ $row->kelurahan_desa_id }}" {{ $aksi == 'edit' && $data->kelurahan_desa_id == $row->kelurahan_desa_id? 'selected': '' }}>{{ $row->kelurahan_desa_nama.", ".$row->kecamatan->kecamatan_nama.", ".$row->kecamatan->kabupaten_kota->kabupaten_kota_nama }}</option>
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
	<script src="{{ url('/public/assets/plugins/parsleyjs/dist/parsley.js') }}"></script>
    <script src="{{ url('/public/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
@endpush
