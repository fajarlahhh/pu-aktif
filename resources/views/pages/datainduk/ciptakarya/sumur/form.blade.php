@extends('pages.datainduk.main')

@section('title', ' | '.ucFirst($aksi).' Sumur')

@push('css')
	<link href="{{ url('/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
@endpush

@section('page')
<li class="breadcrumb-item"><a href="javascript:;">Cipta Karya</a></li>
	<li class="breadcrumb-item">Sumur</li>
	<li class="breadcrumb-item active">{{ ucFirst($aksi) }} Data</li>
@endsection

@section('header')
	<h1 class="page-header">Sumur <small>{{ ucFirst($aksi) }} Data</small></h1>
@endsection

@section('subcontent')
<form action="{{ route('sumur.'.$aksi) }}" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
    @method($aksi == 'tambah'? 'POST': 'PUT')
    @csrf
	<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
        <div class="panel-body p-0">
            <input type="hidden" name="redirect" value="{{ $back }}">
            @if($aksi == 'edit')
            <input type="hidden" name="id" value="{{ $data->sumur_id }}">
            @endif
            <ul class="nav nav-tabs">
                <li class="nav-items">
                    <a href="#default-tab-1" data-toggle="tab" class="nav-link active">
                        <span class="d-sm-none">Tab 1</span>
                        <span class="d-sm-block d-none">Spesifikasi</span>
                    </a>
                </li>
                <li class="nav-items">
                    <a href="#default-tab-2" data-toggle="tab" onclick="initMap()" class="nav-link">
                        <span class="d-sm-none">Tab 2</span>
                        <span class="d-sm-block d-none">Peta</span>
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane fade active show" id="default-tab-1">
                    <div class="form-group">
                        <label class="control-label">Kode Sumur</label>
                        <input class="form-control" type="text" name="sumur_kode" value="{{ $aksi == 'edit'? $data->sumur_kode: old('sumur_kode') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Tahun Pembuatan</label>
                        <input class="form-control" type="number" name="sumur_tahun_pembuatan" value="{{ $aksi == 'edit'? $data->sumur_tahun_pembuatan: old('sumur_tahun_pembuatan') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Biaya Pembuatan</label>
                        <input class="form-control decimal text-right" type="text" name="sumur_biaya_pembuatan" value="{{ $aksi == 'edit'? $data->sumur_biaya_pembuatan: old('sumur_biaya_pembuatan') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Debit (ltr/dtk)</label>
                        <input class="form-control decimal text-right" type="text" name="sumur_debit" value="{{ $aksi == 'edit'? $data->sumur_debit: old('sumur_debit') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                    </div>
                    <div class="form-group" id="catatan">
                        <label class="control-label">Keterangan</label>
                        <textarea class="form-control" rows="3" id="sumur_keterangan" name="sumur_keterangan">{{ $aksi == 'edit'? $data->sumur_keterangan: old('sumur_keterangan') }}</textarea>
                    </div>
                    <div class='hakakses checkbox checkbox-css'>
                        <input type='checkbox' id='kewenangan_provinsi' {{ $aksi == 'edit'? ($data->kewenangan_provinsi == 1? 'checked': ''): old('kewenangan_provinsi') }} name='kewenangan_provinsi' value='1'/>
                        <label for='kewenangan_provinsi'>Kewenangan Provinsi</label>
                    </div>
                </div>
                <div class="tab-pane fade" id="default-tab-2">
                    <div class="row">
                        <div class="col-md-3">
                            @include('includes.component.lokasi')
                        </div>
                        <div class="col-md-9">
                            @include('includes.component.leaflet')
                        </div>
                    </div>
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
	<script src="{{ url('/assets/plugins/parsleyjs/dist/parsley.js') }}"></script>
@endpush
