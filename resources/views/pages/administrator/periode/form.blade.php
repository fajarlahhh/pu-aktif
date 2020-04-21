@extends('pages.administrator.main')

@section('title', ' | Tambah Periode Anggaran')

@push('css')
	<link href="/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" />
	<link href="/assets/plugins/parsleyjs/src/parsley.css" rel="stylesheet" />
@endpush

@section('page')
	<li class="breadcrumb-item">Periode Anggaran</li>
	<li class="breadcrumb-item active">Tambah Data</li>
@endsection

@section('header')
	<h1 class="page-header">Periode Anggaran <small>Tambah Data</small></h1>
@endsection

@section('subcontent')
<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
    <!-- begin panel-heading -->
    <div class="panel-heading">
        <div class="panel-heading-btn">
            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
        </div>
        <h4 class="panel-title"><i class="far fa-file-alt"></i> Form</h4>
    </div>
    <form action="/periode/tambah" method="POST" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
        @csrf
        <div class="panel-body">
            <div class="form-group">
                <label class="control-label">Tahun</label>
                <input class="form-control" type="number" name="periode_tahun" value="{{ old('periode_tahun')? old('periode_tahun'): date('Y') }}" required autocomplete="off" data-parsley-minlength="4" data-parsley-maxlength="4"/>
            </div>
            @include('includes.error')
        </div>
        <div class="panel-footer">
            @role('supervisor|administrator')
            <input type="submit" value="Simpan" class="btn btn-sm btn-success m-r-3"  />
            @endrole
            <a href="{{ $back }}" class="btn btn-sm btn-danger">Batal</a>
            <div class="pull-right">
                This page took {{ (microtime(true) - LARAVEL_START) }} seconds to render
            </div>
        </div>
    </form>
</div>
@endsection

@push('scripts')
	<script src="/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
	<script src="/assets/plugins/parsleyjs/dist/parsley.js"></script>
@endpush
