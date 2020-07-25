@extends('pages.datainduk.main')

@section('title', ' | '.ucFirst($aksi).' Daerah Irigasi')

@push('css')
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
    <link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
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
		<div class="panel-heading">
			<div class="panel-heading-btn">
                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
            </div>
			<h4 class="panel-title">Form</h4>
		</div>
        <div class="panel-body">
            <input type="hidden" name="redirect" value="{{ $back }}">
            @if($aksi == 'edit')
            <input type="hidden" name="id" value="{{ $data->daerah_irigasi_id }}">
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
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Daerah Irigasi</label>
                                <input class="form-control" type="text" name="daerah_irigasi_nama" value="{{ $aksi == 'edit'? $data->daerah_irigasi_nama: old('daerah_irigasi_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Tahun Pembuatan</label>
                                <input class="form-control" type="number" name="daerah_irigasi_tahun_pembuatan" value="{{ $aksi == 'edit'? $data->daerah_irigasi_tahun_pembuatan: old('daerah_irigasi_tahun_pembuatan') }}" autocomplete="off"  />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Luas Area Potensial</label>
                                <input class="form-control decimal text-right" type="text" name="daerah_irigasi_luas_area_potensial" value="{{ $aksi == 'edit'? $data->daerah_irigasi_luas_area_potensial: old('daerah_irigasi_luas_area_potensial') }}" autocomplete="off"  />
                            </div>
                            <div class="form-group" id="catatan">
                                <label class="control-label">Keterangan</label>
                                <textarea class="form-control" rows="3" id="daerah_irigasi_keterangan" name="daerah_irigasi_keterangan">{{ $aksi == 'edit'? $data->daerah_irigasi_keterangan: old('daerah_irigasi_keterangan') }}</textarea>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Kabupaten/Kota</label>
                                <select class="form-control selectpicker" name="kabupaten_kota_id" id="kabupaten_kota_id" data-live-search="true" data-style="btn-purple" data-width="100%" onchange="caridesa()">
                                    <option value="">Pilih Kabupaten/Kota</option>
                                    @foreach ($kabupaten_kota as $row)
                                    <option value="{{ $row->kabupaten_kota_id }}" {{ $aksi == 'edit' && $data->kabupaten_kota_id == $row->kabupaten_kota_id? 'selected': '' }}>{{ $row->kabupaten_kota_nama }}</option>
                                    @endforeach
                                </select>
                            </div>
                            
                        </div>
                        <div class="col-md-6">
                            <div class="note note-primary">
                                <h5>Uraian Areal Potensial</h5>
                                <div class="form-group">
                                    <label class="control-label">Sawah Irigasi</label>
                                    <input class="form-control decimal text-right" type="text" name="daerah_irigasi_sawah_irigasi" value="{{ $aksi == 'edit'? $data->daerah_irigasi_sawah_irigasi: old('daerah_irigasi_sawah_irigasi') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Belum Irigasi</label>
                                    <input class="form-control decimal text-right" type="text" name="daerah_irigasi_belum_irigasi" value="{{ $aksi == 'edit'? $data->daerah_irigasi_belum_irigasi: old('daerah_irigasi_belum_irigasi') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Belum Sawah</label>
                                    <input class="form-control decimal text-right" type="text" name="daerah_irigasi_belum_sawah" value="{{ $aksi == 'edit'? $data->daerah_irigasi_belum_sawah: old('daerah_irigasi_belum_sawah') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Alih Fungsi</label>
                                    <input class="form-control decimal text-right" type="text" name="daerah_irigasi_alih_fungsi" value="{{ $aksi == 'edit'? $data->daerah_irigasi_alih_fungsi: old('daerah_irigasi_alih_fungsi') }}" autocomplete="off"  />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end tab-pane -->
                <!-- begin tab-pane -->
                <div class="tab-pane fade" id="default-tab-2">
                    @include('includes.component.leaflet')
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
	<script src="{{ url('/public/assets/plugins/parsleyjs/dist/parsley.js') }}"></script>
    <script src="{{ url('/public/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
    <script>
        function initMap() {
            setTimeout(function() {
                map.invalidateSize();
            }, 500);
        }
    </script>
@endpush
