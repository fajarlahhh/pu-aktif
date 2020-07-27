@extends('pages.datainduk.main')

@section('title', ' | '.ucFirst($aksi).' SPAM')

@push('css')
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
    <link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
@endpush

@section('page')
    <li class="breadcrumb-item"><a href="javascript:;">Cipta Karya</a></li>
	<li class="breadcrumb-item">SPAM</li>
	<li class="breadcrumb-item active">{{ ucFirst($aksi) }} Data</li>
@endsection

@section('header')
	<h1 class="page-header">SPAM <small>{{ ucFirst($aksi) }} Data</small></h1>
@endsection

@section('subcontent')
<form action="{{ route('spam.'.$aksi) }}" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
    @method($aksi == 'tambah'? 'POST': 'PUT')
    @csrf
	<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
        <div class="panel-body p-0">
            <input type="hidden" name="redirect" value="{{ $back }}">
            @if($aksi == 'edit')
            <input type="hidden" name="id" value="{{ $data->spam_id }}">
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
                                <label class="control-label">Nama Unit</label>
                                <input class="form-control" type="text" name="spam_nama_unit" value="{{ $aksi == 'edit'? $data->spam_nama_unit: old('spam_nama_unit') }}" autocomplete="off" required />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Tahun Pembuatan</label>
                                <input class="form-control" type="number" name="spam_tahun_pembuatan" value="{{ $aksi == 'edit'? $data->spam_tahun_pembuatan: old('spam_tahun_pembuatan') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Jumlah SR</label>
                                <input class="form-control decimal text-right" type="text" name="spam_jumlah_sr" value="{{ $aksi == 'edit'? $data->spam_jumlah_sr: old('spam_jumlah_sr') }}" autocomplete="off"  />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Jiwa Terlayani</label>
                                <input class="form-control decimal text-right" type="text" name="spam_jumlah_jiwa_terlayani" value="{{ $aksi == 'edit'? $data->spam_jumlah_jiwa_terlayani: old('spam_jumlah_jiwa_terlayani') }}" autocomplete="off"  />
                            </div>
                            <div class='hakakses checkbox checkbox-css'>
                                <input type='checkbox' id='kewenangan_provinsi' {{ $aksi == 'edit'? ($data->kewenangan_provinsi == 1? 'checked': ''): old('kewenangan_provinsi') }} name='kewenangan_provinsi' value='1'/>
                                <label for='kewenangan_provinsi'>Kewenangan Provinsi</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="note note-primary">
                                <h5>Kapasitas</h5>
                                <div class="form-group">
                                    <label class="control-label">Terpasang</label>
                                    <input class="form-control decimal text-right" type="text" name="spam_kapasitas_terpasang" value="{{ $aksi == 'edit'? $data->spam_kapasitas_terpasang: old('spam_kapasitas_terpasang') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Produksi</label>
                                    <input class="form-control decimal text-right" type="text" name="spam_kapasitas_produksi" value="{{ $aksi == 'edit'? $data->spam_kapasitas_produksi: old('spam_kapasitas_produksi') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Distribusi</label>
                                    <input class="form-control decimal text-right" type="text" name="spam_kapasitas_distribusi" value="{{ $aksi == 'edit'? $data->spam_kapasitas_distribusi: old('spam_kapasitas_distribusi') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Terjual</label>
                                    <input class="form-control decimal text-right" type="text" name="spam_kapasitas_air_terjual" value="{{ $aksi == 'edit'? $data->spam_kapasitas_air_terjual: old('spam_kapasitas_air_terjual') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Idle</label>
                                    <input class="form-control decimal text-right" type="text" name="spam_kapasitas_idle" value="{{ $aksi == 'edit'? $data->spam_kapasitas_idle: old('spam_kapasitas_idle') }}" autocomplete="off"  />
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
<script src="{{ url('/public/assets/plugins/autonumeric/autonumeric.js') }}"></script>
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