@extends('pages.datainduk.main')

@section('title', ' | '.ucFirst($aksi).' DAS')

@push('css')
	<link href="{{ url('/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
@endpush

@section('page')
<li class="breadcrumb-item"><a href="javascript:;">SDA</a></li>
    <li class="breadcrumb-item"><a href="javascript:;">Daerah Aliran Sungai</a></li>
	<li class="breadcrumb-item active">{{ ucFirst($aksi) }} Data</li>
@endsection

@section('header')
	<h1 class="page-header">Daerah Aliran Sungai <small>{{ ucFirst($aksi) }} Data</small></h1>
@endsection

@section('subcontent')
<form action="{{ route('das.'.$aksi) }}" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
    @method($aksi == 'tambah'? 'POST': 'PUT')
    @csrf
	<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
        <div class="panel-body p-0">
            <input type="hidden" name="redirect" value="{{ $back }}">
            @if($aksi == 'edit')
            <input type="hidden" name="id" value="{{ $data->das_id }}">
            @endif<!-- begin nav-tabs -->
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
            <!-- end nav-tabs -->
            <!-- begin tab-content -->
            <div class="tab-content">
                <div class="tab-pane fade active show" id="default-tab-1">
                    <div class="row">
                        <div class="col-md-7">
                            <div class="form-group">
                                <label class="control-label">Kode WS</label>
                                <input class="form-control" type="text" name="das_kode_ws" value="{{ $aksi == 'edit'? $data->das_kode_ws: old('das_kode_ws') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Pola Aliran (Drainage Pattern)</label>
                                <input class="form-control" type="text" name="das_pola_aliran" value="{{ $aksi == 'edit'? $data->das_pola_aliran: old('das_pola_aliran') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Nama</label>
                                <input class="form-control" type="text" name="das_nama" value="{{ $aksi == 'edit'? $data->das_nama: old('das_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Tahun Pembuatan</label>
                                <input class="form-control" type="number" name="das_tahun_pembuatan" value="{{ $aksi == 'edit'? $data->das_tahun_pembuatan: old('das_tahun_pembuatan') }}" required data-parsley-minlength="4" data-parsley-maxlength="4" autocomplete="off"  />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Biaya Pembuatan</label>
                                <input class="form-control decimal text-right" type="text" name="das_biaya_pembuatan" value="{{ $aksi == 'edit'? $data->das_biaya_pembuatan: old('das_biaya_pembuatan') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                            </div>
                            <div class="form-group" id="catatan">
                                <label class="control-label">Keterangan</label>
                                <textarea class="form-control" rows="3" id="das_keterangan" name="das_keterangan">{{ $aksi == 'edit'? $data->das_keterangan: old('das_keterangan') }}</textarea>
                            </div>
                            <div class='hakakses checkbox checkbox-css'>
                                <input type='checkbox' id='kewenangan_provinsi' {{ $aksi == 'edit'? ($data->kewenangan_provinsi == 1? 'checked': ''): old('kewenangan_provinsi') }} name='kewenangan_provinsi' value='1'/>
                                <label for='kewenangan_provinsi'>Kewenangan Provinsi</label>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="note note-primary">
                                <h5>Data Teknik</h5>
                                <div class="form-group">
                                    <label class="control-label">Luas (Km<sup>2</sup>)</label>
                                    <input class="form-control decimal text-right" type="text" name="das_luas" value="{{ $aksi == 'edit'? $data->das_luas: (old('das_luas')?? 0) }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Banyaknya Orde Sungai</label>
                                    <input class="form-control" type="number" name="das_jumlah_orde_sungai" value="{{ $aksi == 'edit'? $data->das_jumlah_orde_sungai: old('das_jumlah_orde_sungai') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Jumlah Desa</label>
                                    <input class="form-control" type="number" name="das_jumlah_desa" value="{{ $aksi == 'edit'? $data->das_jumlah_desa: old('das_jumlah_desa') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                                </div>
                            </div>
                        </div>
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
