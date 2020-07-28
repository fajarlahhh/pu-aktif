@extends('pages.datainduk.main')

@section('title', ' | '.ucFirst($aksi).' Jembatan')

@push('css')
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
    <link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
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
    <div class="panel-heading">
        <div class="panel-heading-btn">
            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
        </div>
        <h4 class="panel-title">Form</h4>
    </div>
	<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
        <div class="panel-body">
            <input type="hidden" name="redirect" value="{{ $back }}">
            @if($aksi == 'edit')
            <input type="hidden" name="id" value="{{ $data->jembatan_id }}">
            @endif
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label class="control-label">Nomor Jembatan</label>
                        <input class="form-control" type="text" name="jembatan_nomor" value="{{ $aksi == 'edit'? $data->jembatan_nomor: old('jembatan_nomor') }}" autocomplete="off"  />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Nama Jembatan</label>
                        <input class="form-control" type="text" name="jembatan_nama" value="{{ $aksi == 'edit'? $data->jembatan_nama: old('jembatan_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Panjang (M)</label>
                        <input class="form-control decimal text-right" type="text" name="jembatan_dimensi_panjang" value="{{ $aksi == 'edit'? $data->jembatan_dimensi_panjang: old('jembatan_dimensi_panjang') }}" autocomplete="off"  />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Lebar (M)</label>
                        <input class="form-control decimal text-right" type="text" name="jembatan_dimensi_lebar" value="{{ $aksi == 'edit'? $data->jembatan_dimensi_lebar: old('jembatan_dimensi_lebar') }}" autocomplete="off"  />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Bentang (M)</label>
                        <input class="form-control decimal text-right" type="text" name="jembatan_dimensi_bentang" value="{{ $aksi == 'edit'? $data->jembatan_dimensi_bentang: old('jembatan_dimensi_bentang') }}" autocomplete="off"  />
                    </div>
                    <div class="form-group" id="catatan">
                        <label class="control-label">Keterangan</label>
                        <textarea class="form-control" rows="3" id="jembatan_keterangan" name="jembatan_keterangan">{{ $aksi == 'edit'? $data->jembatan_keterangan: old('jembatan_keterangan') }}</textarea>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Ruas Jalan</label>
                        <select class="form-control selectpicker" name="jalan_id" id="jalan_id" data-live-search="true" data-style="btn-info" data-width="100%" data-size="5" onchange="caridesa()">
                            <option value="">Pilih Jalan</option>
                            @foreach ($jalan as $row)
                            <option value="{{ $row->jalan_id }}" {{ $aksi == 'edit' && $data->jalan_id == $row->jalan_id? 'selected': '' }}>{{ $row->jalan_nama }}</option>
                            @endforeach
                        </select>
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
                    <div class='hakakses checkbox checkbox-css'>
                        <input type='checkbox' id='kewenangan_provinsi' {{ $aksi == 'edit'? ($data->kewenangan_provinsi == 1? 'checked': ''): old('kewenangan_provinsi') }} name='kewenangan_provinsi' value='1'/>
                        <label for='kewenangan_provinsi'>Kewenangan Provinsi</label>
                    </div>
                </div>
                <div class="col-md-8">
                    @include('includes.component.leaflet')
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
