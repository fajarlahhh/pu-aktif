@extends('pages.datainduk.main')

@section('title', ' | '.ucFirst($aksi).' Jalan')

@push('css')
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
    <link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
@endpush

@section('page')
    <li class="breadcrumb-item"><a href="javascript:;">Bina Marga</a></li>
	<li class="breadcrumb-item">Jalan</li>
	<li class="breadcrumb-item active">{{ ucFirst($aksi) }} Data</li>
@endsection

@section('header')
	<h1 class="page-header">Jalan <small>{{ ucFirst($aksi) }} Data</small></h1>
@endsection

@section('subcontent')
<form action="{{ route('jalan.'.$aksi) }}" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
    @method($aksi == 'tambah'? 'POST': 'PUT')
    @csrf
	<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
		<div class="panel-heading">
			<div class="panel-heading-btn">
                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
            </div>
			<h4 class="panel-title">Form</h4>
		</div>
        <div class="panel-body">
            <input type="hidden" name="redirect" value="{{ $back }}">
            @if($aksi == 'edit')
            <input type="hidden" name="id" value="{{ $data->jalan_id }}">
            @endif
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label class="control-label">Ruas Jalan</label>
                        <input class="form-control" type="number" name="jalan_ruas" value="{{ $aksi == 'edit'? $data->jalan_ruas: old('jalan_ruas') }}" autocomplete="off"  />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Sub Ruas Jalan</label>
                        <input class="form-control" type="number" name="jalan_subruas" value="{{ $aksi == 'edit'? $data->jalan_subruas: old('jalan_subruas') }}" autocomplete="off"  />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Nama Jalan</label>
                        <input class="form-control" type="text" name="jalan_nama" value="{{ $aksi == 'edit'? $data->jalan_nama: old('jalan_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Panjang</label>
                        <input class="form-control decimal text-right" type="text" name="jalan_panjang" value="{{ $aksi == 'edit'? $data->jalan_panjang: old('jalan_panjang') }}" autocomplete="off"  />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Lebar</label>
                        <input class="form-control" type="text" name="jalan_lebar" value="{{ $aksi == 'edit'? $data->jalan_lebar: old('jalan_lebar') }}" autocomplete="off"  />
                    </div>
                    <div class="form-group" id="catatan">
                        <label class="control-label">Keterangan</label>
                        <textarea class="form-control" rows="3" id="jalan_keterangan" name="jalan_keterangan">{{ $aksi == 'edit'? $data->jalan_keterangan: old('jalan_keterangan') }}</textarea>
                    </div>
                    @include('includes.component.lokasi')
                    <div class='hakakses checkbox checkbox-css'>
                        <input type='checkbox' id='kewenangan_provinsi' {{ $aksi == 'edit'? ($data->kewenangan_provinsi == 1? 'checked': ''): old('kewenangan_provinsi') }} name='kewenangan_provinsi' value='1'/>
                        <label for='kewenangan_provinsi'>Kewenangan Provinsi</label>
                    </div>
                </div>
                <div class="col-md-8">
                    @include('includes.component.leaflet')
                </div>
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
	</div>
</form>
@include('includes.error')
@endsection

@push('scripts')
<script src="{{ url('/public/assets/plugins/parsleyjs/dist/parsley.js') }}"></script>
<script src="{{ url('/public/assets/plugins/autonumeric/autonumeric.js') }}"></script>
    <script src="{{ url('/public/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
    {{-- <script>
        function initMap() {
            setTimeout(function() {
                map.invalidateSize();
            }, 500);
        }
    </script> --}}
@endpush
