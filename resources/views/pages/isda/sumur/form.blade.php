@extends('pages.isda.main')

@section('title', ' | '.ucFirst($aksi).' Sumur')

@push('css')
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
    <link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
    <link href="{{ url('/public/assets/plugins/leaflet/dist/leaflet.css') }}" rel="stylesheet">
@endpush

@section('page')
	<li class="breadcrumb-item">Sumur</li>
	<li class="breadcrumb-item active">{{ ucFirst($aksi) }} Data</li>
@endsection

@section('header')
	<h1 class="page-header">Sumur <small>{{ ucFirst($aksi) }} Data</small></h1>
@endsection

@section('subcontent')
	<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
		<!-- begin panel-heading -->
		<div class="panel-heading">
			<div class="panel-heading-btn">
                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
            </div>
			<h4 class="panel-title">Form</h4>
		</div>
		<form action="{{ route('sumur.'.$aksi) }}" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
			@method($aksi == 'tambah'? 'POST': 'PUT')
			@csrf
			<div class="panel-body">
				<input type="hidden" name="redirect" value="{{ $back }}">
                @if($aksi == 'edit')
                <input type="hidden" name="id" value="{{ $data->sumur_id }}">
                @endif
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label">Kode Sumur</label>
                            <input class="form-control" type="text" name="sumur_kode" value="{{ $aksi == 'edit'? $data->sumur_kode: old('sumur_kode') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Tahun Pembuatan</label>
                            <select class="form-control selectpicker" name="sumur_tahun_pembuatan" id="sumur_tahun_pembuatan" data-live-search="true" data-style="btn-info" data-width="100%">
                                @for ($i = date('Y'); $i >= 1970; $i--)
                                <option value="{{ $i }}" {{ $aksi == 'edit' && $data->sumur_tahun_pembuatan == $i? 'selected': '' }}>{{ $i }}</option>
                                @endfor
                            </select>
                        </div>
                        <div class="form-group" id="catatan">
                            <label class="control-label">Keterangan</label>
                            <textarea class="form-control" rows="3" id="sumur_keterangan" name="sumur_keterangan">{{ $aksi == 'edit'? $data->sumur_keterangan: old('sumur_keterangan') }}</textarea>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Kelurahan/Desa</label>
                            <select class="form-control selectpicker" name="kelurahan_desa_id" id="kelurahan_desa_id" data-live-search="true" data-style="btn-info" data-width="100%" data-size="5" onchange="caridesa()">
                                <option value="">Pilih Kelurahan/Desa</option>
                                @foreach ($desa as $row)
                                <option value="{{ $row->kelurahan_desa_id }}" {{ $aksi == 'edit' && $data->kelurahan_desa_id == $row->kelurahan_desa_id? 'selected': '' }}>{{ $row->kelurahan_desa_nama.", ".$row->kecamatan->kecamatan_nama.", ".$row->kecamatan->kabupaten_kota->kabupaten_kota_nama }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="note note-primary">
                            <h5>Peta</h5>
                            <div id="map" style="height:350px; background-color: #000;"></div>
                            <input type="hidden" id="longitude" name="longitude" value="{{ $aksi == "edit" && $data->koordinat? $data->koordinat->getLat(): '' }}">
                            <input type="hidden" id="latitude" name="latitude" value="{{ $aksi == "edit" && $data->koordinat? $data->koordinat->getLng(): '' }}">
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
		</form>
	</div>
    @if ($errors->any())
	<div class="alert alert-danger">
		<ul>
		    @foreach ($errors->all() as $error)
	      	<li>{{ $error }}</li>
		    @endforeach
		</ul>
	</div>
    @endif
@endsection

@push('scripts')
	<script src="{{ url('/public/assets/plugins/parsleyjs/dist/parsley.js') }}"></script>
	<script src="{{ url('/public/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
    <script src="{{ url('/public/assets/plugins/leaflet/dist/leaflet.js') }}"></script>
    <script>
        var map;
        var marker;
        var position = [-8.5783,117.5098];

        function initMap() {

            map = L.map('map').setView(position, 8);
            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
            }).addTo(map);

            if('{{ $aksi }}' == 'edit'){
                var lat = parseFloat('{{ $aksi == "edit" && $data->koordinat? $data->koordinat->getLat(): 0 }}');
                var long = parseFloat('{{ $aksi == "edit" && $data->koordinat? $data->koordinat->getLng(): 0 }}');
                marker = L.marker([lat,long]).addTo(map);
                map.setView([lat,long],14);
            }

            map.on('click',function(e){
                if (marker) {
                    map.removeLayer(marker);
                }
                marker = L.marker(e.latlng).addTo(map);
                $("#latitude").val(e.latlng.lat);
                $("#longitude").val(e.latlng.lng);
            });

        }

        initMap();


        function caridesa(){
            var alamat = $("#kelurahan_desa_id option:selected").text()+", Nusa Tenggara Barat";
            $.get("https://nominatim.openstreetmap.org/?format=json&addressdetails=1&q="+alamat+"&country=Indonesia&limit=1")
            .done(function(data){
                if(data.length > 0){
                    position = [data[0].lat,data[0].lon];
                    map.setView(position,14);
                }
            });
        }
    </script>
@endpush
