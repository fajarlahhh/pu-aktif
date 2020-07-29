@extends('pages.datainduk.main')

@section('title', ' | '.ucFirst($aksi).' Daerah Irigasi')

@push('css')
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
@endpush

@section('page')
    <li class="breadcrumb-item"><a href="javascript:;">SDA</a></li>
    <li class="breadcrumb-item"><a href="javascript:;">Daerah Irigasi</a></li>
	<li class="breadcrumb-item active">{{ ucFirst($aksi) }} Data</li>
@endsection

@section('header')
	<h1 class="page-header">Daerah Irigasi <small>{{ ucFirst($aksi) }} Data</small></h1>
@endsection

@section('subcontent')
<form action="{{ route('daerahirigasi.'.$aksi) }}" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
    @method($aksi == 'tambah'? 'POST': 'PUT')
    @csrf
	<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
        <div class="panel-body p-0">
            <input type="hidden" name="redirect" value="{{ $back }}">
            @if($aksi == 'edit')
            <input type="hidden" name="id" value="{{ $data->daerah_irigasi_id }}">
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
                        <label class="control-label">Daerah Irigasi</label>
                        <input class="form-control" type="text" name="daerah_irigasi_nama" value="{{ $aksi == 'edit'? $data->daerah_irigasi_nama: old('daerah_irigasi_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Tahun Pembuatan</label>
                        <input class="form-control" type="number" name="daerah_irigasi_tahun_pembuatan" value="{{ $aksi == 'edit'? $data->daerah_irigasi_tahun_pembuatan: old('daerah_irigasi_tahun_pembuatan') }}" autocomplete="off"  />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Biaya Pembuatan</label>
                        <input class="form-control decimal text-right" type="text" name="daerah_irigasi_biaya_pembuatan" value="{{ $aksi == 'edit'? $data->daerah_irigasi_biaya_pembuatan: old('daerah_irigasi_biaya_pembuatan') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Luas Area Potensial</label>
                        <input class="form-control decimal text-right" type="text" name="daerah_irigasi_luas_area_potensial" value="{{ $aksi == 'edit'? $data->daerah_irigasi_luas_area_potensial: old('daerah_irigasi_luas_area_potensial') }}" autocomplete="off"  />
                    </div>
                    <div class="form-group" id="catatan">
                        <label class="control-label">Keterangan</label>
                        <textarea class="form-control" rows="3" id="daerah_irigasi_keterangan" name="daerah_irigasi_keterangan">{{ $aksi == 'edit'? $data->daerah_irigasi_keterangan: old('daerah_irigasi_keterangan') }}</textarea>
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
	<script src="{{ url('/public/assets/plugins/parsleyjs/dist/parsley.js') }}"></script>
@endpush
