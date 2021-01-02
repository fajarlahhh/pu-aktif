@extends('pages.datainduk.main')

@section('title', ' | '.ucFirst($aksi).' Jembatan')

@push('css')
	<link href="{{ url('/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
@endpush

@section('page')
    <li class="breadcrumb-item"><a href="javascript:;">Bina Marga</a></li>
	<li class="breadcrumb-item">Jembatan</li>
	<li class="breadcrumb-item active">{{ ucFirst($aksi) }} Data</li>
@endsection

@section('header')
	<h1 class="page-header">Jembatan <small>{{ ucFirst($aksi) }} Data</small></h1>
@endsection

@section('subcontent')
<form action="{{ route('jembatan.'.$aksi) }}" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
    @method($aksi == 'tambah'? 'POST': 'PUT')
    @csrf
	<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
        <div class="panel-body p-0">
            <input type="hidden" name="redirect" value="{{ $back }}">
            @if($aksi == 'edit')
            <input type="hidden" name="id" value="{{ $data->jembatan_id }}">
            @endif
            <!-- begin nav-tabs -->
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
                <!-- begin tab-pane -->
                <div class="tab-pane fade active show" id="default-tab-1">
                    <div class="row">
                        <div class="col-md-7">
                            <div class="form-group">
                                <label class="control-label">Nomor Jembatan</label>
                                <input class="form-control" type="text" name="jembatan_nomor" value="{{ $aksi == 'edit'? $data->jembatan_nomor: old('jembatan_nomor') }}" autocomplete="off"  />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Nama Jembatan</label>
                                <input class="form-control" type="text" name="jembatan_nama" value="{{ $aksi == 'edit'? $data->jembatan_nama: old('jembatan_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Tahun Pembuatan</label>
                                <input class="form-control" type="number" name="jembatan_tahun_pembuatan" value="{{ $aksi == 'edit'? $data->jembatan_tahun_pembuatan: old('jembatan_tahun_pembuatan') }}" required data-parsley-minlength="4" data-parsley-maxlength="4" autocomplete="off"  />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Biaya Pembuatan</label>
                                <input class="form-control decimal text-right" type="text" name="jembatan_biaya_pembuatan" value="{{ $aksi == 'edit'? $data->jembatan_biaya_pembuatan: old('jembatan_biaya_pembuatan') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                            </div>
                            <div class="form-group" id="catatan">
                                <label class="control-label">Keterangan</label>
                                <textarea class="form-control" rows="3" id="jembatan_keterangan" name="jembatan_keterangan">{{ $aksi == 'edit'? $data->jembatan_keterangan: old('jembatan_keterangan') }}</textarea>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Ruas Jalan</label>
                                <select class="form-control selectpicker" name="jalan_id" id="jalan_id" data-live-search="true" data-style="btn-info" data-width="100%" data-size="5">
                                    <option value="">Pilih Jalan</option>
                                    @foreach ($jalan as $row)
                                    <option value="{{ $row->jalan_id }}" {{ $aksi == 'edit' && $data->jalan_id == $row->jalan_id? 'selected': '' }}>{{ $row->jalan_nama }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class='hakakses checkbox checkbox-css'>
                                <input type='checkbox' id='kewenangan_provinsi' {{ $aksi == 'edit'? ($data->kewenangan_provinsi == 1? 'checked': ''): old('kewenangan_provinsi') }} name='kewenangan_provinsi' value='1'/>
                                <label for='kewenangan_provinsi'>Kewenangan Provinsi</label>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="note note-primary">
                                <h5>Dimensi</h5>
                                <div class="form-group">
                                    <label class="control-label">Panjang (m)</label>
                                    <input class="form-control decimal text-right" type="text" name="jembatan_dimensi_panjang" value="{{ $aksi == 'edit'? $data->jembatan_dimensi_panjang: old('jembatan_dimensi_panjang') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Lebar (m)</label>
                                    <input class="form-control decimal text-right" type="text" name="jembatan_dimensi_lebar" value="{{ $aksi == 'edit'? $data->jembatan_dimensi_lebar: old('jembatan_dimensi_lebar') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Bentang (m)</label>
                                    <input class="form-control decimal text-right" type="text" name="jembatan_dimensi_bentang" value="{{ $aksi == 'edit'? $data->jembatan_dimensi_bentang: old('jembatan_dimensi_bentang') }}" autocomplete="off"  />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- begin tab-pane -->
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
                <!-- end tab-pane -->
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
<script src="{{ url('/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
@endpush
