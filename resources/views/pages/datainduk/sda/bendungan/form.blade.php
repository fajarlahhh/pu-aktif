@extends('pages.datainduk.main')

@section('title', ' | '.ucFirst($aksi).' Bendungan')

@push('css')
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
    <link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
@endpush

@section('page')
<li class="breadcrumb-item"><a href="javascript:;">SDA</a></li>
<li class="breadcrumb-item"><a href="javascript:;">Bendungan</a></li>
	<li class="breadcrumb-item active">{{ ucFirst($aksi) }} Data</li>
@endsection

@section('header')
	<h1 class="page-header">Bendungan <small>{{ ucFirst($aksi) }} Data</small></h1>
@endsection

@section('subcontent')
<form action="{{ route('bendungan.'.$aksi) }}" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
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
            <input type="hidden" name="id" value="{{ $data->bendungan_id }}">
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
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="control-label">Nama Bendungan</label>
                                <input class="form-control" type="text" name="bendungan_nama" value="{{ $aksi == 'edit'? $data->bendungan_nama: old('bendungan_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Tahun Pembuatan</label>
                                <input class="form-control" type="number" name="bendungan_tahun_pembuatan" value="{{ $aksi == 'edit'? $data->bendungan_tahun_pembuatan: old('bendungan_tahun_pembuatan') }}" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="note note-primary">
                                <h5>Data Teknik</h5>
                                <div class="form-group">
                                    <label class="control-label">Tinggi</label>
                                    <input class="form-control decimal text-right" type="text" name="bendungan_data_teknik_tinggi" value="{{ $aksi == 'edit'? $data->bendungan_data_teknik_tinggi: old('bendungan_data_teknik_tinggi') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Volume (m<sup>3</sup>)</label>
                                    <input class="form-control decimal text-right" type="text" name="bendungan_data_teknik_volume" value="{{ $aksi == 'edit'? $data->bendungan_data_teknik_volume: old('bendungan_data_teknik_volume') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Pengukuran Bathimetri</label>
                                    <input class="form-control decimal text-right" type="text" name="bendungan_data_teknik_bathimetri" value="{{ $aksi == 'edit'? $data->bendungan_data_teknik_bathimetri: old('bendungan_data_teknik_bathimetri') }}" autocomplete="off"  />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="note note-danger">
                                <h5>Manfaat</h5>
                                <div class="form-group">
                                    <label class="control-label">Air baku (lt/dt)</label>
                                    <input class="form-control decimal text-right" type="text" name="bendungan_manfaat_air_baku" value="{{ $aksi == 'edit'? $data->bendungan_manfaat_air_baku: old('bendungan_manfaat_air_baku') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Irigasi (Ha)</label>
                                    <input class="form-control decimal text-right" type="text" name="bendungan_manfaat_irigasi" value="{{ $aksi == 'edit'? $data->bendungan_manfaat_irigasi: old('bendungan_manfaat_irigasi') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">PLTA (MW)</label>
                                    <input class="form-control decimal text-right" type="text" name="bendungan_manfaat_plta" value="{{ $aksi == 'edit'? $data->bendungan_manfaat_plta: old('bendungan_manfaat_plta') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Lainnya</label>
                                    <input class="form-control" type="text" name="bendungan_manfaat_lainnya" value="{{ $aksi == 'edit'? $data->bendungan_manfaat_lainnya: old('bendungan_manfaat_lainnya') }}" autocomplete="off"  />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="note note-warning">
                                <h5>Status Kelembagaan</h5>
                                <div class="form-group">
                                    <label class="control-label">UPB</label>
                                    <input class="form-control" type="text" name="bendungan_kelembagaan_upb" value="{{ $aksi == 'edit'? $data->bendungan_kelembagaan_upb: old('bendungan_kelembagaan_upb') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Petugas</label>
                                    <input class="form-control" type="number" name="bendungan_kelembagaan_petugas" value="{{ $aksi == 'edit'? $data->bendungan_kelembagaan_petugas: old('bendungan_kelembagaan_petugas') }}" autocomplete="off"  />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end tab-pane -->
                <!-- begin tab-pane -->
                <div class="tab-pane fade" id="default-tab-2">
                    <div class="row">
                        <div class="col-md-4">
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
                        <div class="col-md-8">
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
	<script src="{{ url('/public/assets/plugins/parsleyjs/dist/parsley.js') }}"></script>
    <script src="{{ url('/public/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
    <script>
        function caridesa(){
            var alamat = $("#kabupaten_kota_id option:selected").text()+", Nusa Tenggara Barat";
            $.get("https://nominatim.openstreetmap.org/?format=json&addressdetails=1&q="+alamat+"&country=Indonesia&limit=1")
            .done(function(data){
                if(data.length > 0){
                    position = [data[0].lat,data[0].lon];
                    map.setView(position,12);
                }
            });
        }

        function initMap() {
            setTimeout(function() {
                map.invalidateSize();
            }, 500);
        }
    </script>
@endpush
