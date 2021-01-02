@extends('pages.datainduk.main')

@section('title', ' | '.ucFirst($aksi).' Embung')

@push('css')
	<link href="{{ url('/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
    <link href="{{ url('/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
@endpush

@section('page')
    <li class="breadcrumb-item"><a href="javascript:;">SDA</a></li>
    <li class="breadcrumb-item"><a href="javascript:;">Embung</a></li>
	<li class="breadcrumb-item active">{{ ucFirst($aksi) }} Data</li>
@endsection

@section('header')
	<h1 class="page-header">Embung <small>{{ ucFirst($aksi) }} Data</small></h1>
@endsection

@section('subcontent')
<form action="{{ route('embung.'.$aksi) }}" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
    @method($aksi == 'tambah'? 'POST': 'PUT')
    @csrf
	<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
        <div class="panel-body p-0">
            <input type="hidden" name="redirect" value="{{ $back }}">
            @if($aksi == 'edit')
            <input type="hidden" name="id" value="{{ $data->embung_id }}">
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
                                <label class="control-label">Nama Embung</label>
                                <input class="form-control" type="text" name="embung_nama" value="{{ $aksi == 'edit'? $data->embung_nama: old('embung_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Tahun Pembuatan</label>
                                <input class="form-control" type="number" name="embung_tahun_pembuatan" value="{{ $aksi == 'edit'? $data->embung_tahun_pembuatan: old('embung_tahun_pembuatan') }}" autocomplete="off"  />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Biaya Pembuatan</label>
                                <input class="form-control decimal text-right" type="text" name="embung_biaya_pembuatan" value="{{ $aksi == 'edit'? $data->embung_biaya_pembuatan: old('embung_biaya_pembuatan') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                            </div>
                            <div class="form-group" id="catatan">
                                <label class="control-label">Keterangan</label>
                                <textarea class="form-control" rows="3" id="embung_keterangan" name="embung_keterangan">{{ $aksi == 'edit'? $data->embung_keterangan: old('embung_keterangan') }}</textarea>
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
                                    <label class="control-label">CA (KM<sup>2</sup>)</label>
                                    <input class="form-control decimal text-right" type="text" name="embung_data_teknik_ca_km" value="{{ $aksi == 'edit'? $data->embung_data_teknik_ca_km: old('embung_data_teknik_ca_km') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Luas Genangan (Ha)	</label>
                                    <input class="form-control decimal text-right" type="text" name="embung_data_teknik_luasan_genangan" value="{{ $aksi == 'edit'? $data->embung_data_teknik_luasan_genangan: old('embung_data_teknik_luasan_genangan') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Tipe Konstruksi</label>
                                    <input class="form-control" type="text" name="embung_data_teknik_tipe_konstruksi" value="{{ $aksi == 'edit'? $data->embung_data_teknik_tipe_konstruksi: old('embung_data_teknik_tipe_konstruksi') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Volume (m<sup>3</sup>)</label>
                                    <input class="form-control decimal text-right" type="text" name="embung_data_teknik_volume" value="{{ $aksi == 'edit'? $data->embung_data_teknik_volume: old('embung_data_teknik_volume') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">L (m)</label>
                                    <input class="form-control decimal text-right" type="text" name="embung_data_teknik_l" value="{{ $aksi == 'edit'? $data->embung_data_teknik_l: old('embung_data_teknik_l') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">H (m)</label>
                                    <input class="form-control decimal text-right" type="text" name="embung_data_teknik_h" value="{{ $aksi == 'edit'? $data->embung_data_teknik_h: old('embung_data_teknik_h') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Lebar Spillway (m)</label>
                                    <input class="form-control decimal text-right" type="text" name="embung_data_teknik_lebar_spillway" value="{{ $aksi == 'edit'? $data->embung_data_teknik_lebar_spillway: old('embung_data_teknik_lebar_spillway') }}" autocomplete="off"  />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end tab-pane -->
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
            <!-- end tab-content -->
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
    <script>
        function initMap() {
            setTimeout(function() {
                map.invalidateSize();
            }, 500);
        }
    </script>
@endpush
