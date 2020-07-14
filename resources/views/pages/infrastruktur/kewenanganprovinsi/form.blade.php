@extends('pages.datamaster.main')

@section('title', ' | '.ucFirst($aksi).' Kewenangan Provinsi')

@push('css')
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
    <link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
@endpush

@section('page')
	<li class="breadcrumb-item">Kewenangan Provinsi</li>
	<li class="breadcrumb-item active">{{ ucFirst($aksi) }} Data</li>
@endsection

@section('header')
	<h1 class="page-header">Kewenangan Provinsi <small>{{ ucFirst($aksi) }} Data</small></h1>
@endsection

@section('subcontent')
<form action="{{ route('kewenanganprovinsi.'.$aksi) }}" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
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
            <input type="hidden" name="id" value="{{ $data->kewenangan_provinsi_id }}">
            @endif
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label class="control-label">Deskripsi Kegiatan</label>
                        <input class="form-control" type="text" name="kewenangan_provinsi_deskripsi_kegiatan" value="{{ $aksi == 'edit'? $data->kewenangan_provinsi_deskripsi_kegiatan: old('kewenangan_provinsi_deskripsi_kegiatan') }}" autocomplete="off"  />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Tahun</label>
                        <select class="form-control selectpicker cari" name="kewenangan_provinsi_tahun" data-live-search="true" data-size="5" data-style="btn-info" data-width="100%">
                            @for($i=2015; $i <= date('Y') + 5; $i++)
                            @php
                                $selected = '';
                                if ($aksi == 'edit') {
                                    if($data->kewenangan_provinsi_tahun == $i){
                                        $selected = 'selected';
                                    }
                                }else{
                                    if(old('kewenangan_provinsi_tahun')){
                                        if(old('kewenangan_provinsi_tahun') == $i){
                                            $selected = 'selected';
                                        }
                                    }else{
                                        if (date('Y') == $i) {
                                            $selected = 'selected';
                                        }
                                    }
                                }
                            @endphp
                            <option value="{{ $i }}" {{ $selected }}>{{ $i }}</option>
                            @endfor
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Nilai</label>
                        <input class="form-control decimal text-right" type="text" name="kewenangan_provinsi_nilai" value="{{ $aksi == 'edit'? $data->kewenangan_provinsi_nilai: old('kewenangan_provinsi_nilai') }}" autocomplete="off"  />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Penanggung Jawab</label>
                        <input class="form-control" type="text" name="kewenangan_provinsi_penanggung_jawab" value="{{ $aksi == 'edit'? $data->kewenangan_provinsi_penanggung_jawab: old('kewenangan_provinsi_penanggung_jawab') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                    </div>
                    <div class="form-group" id="catatan">
                        <label class="control-label">Spesifikasi Teknis</label>
                        <textarea class="form-control" rows="6" id="kewenangan_provinsi_spesifikasi" name="kewenangan_provinsi_spesifikasi">{{ $aksi == 'edit'? $data->kewenangan_provinsi_spesifikasi: old('kewenangan_provinsi_spesifikasi') }}</textarea>
                    </div>
                    <div class="form-group" id="catatan">
                        <label class="control-label">Keterangan</label>
                        <textarea class="form-control" rows="3" name="kewenangan_provinsi_keterangan">{{ $aksi == 'edit'? $data->kewenangan_provinsi_keterangan: old('kewenangan_provinsi_keterangan') }}</textarea>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Jenis Infrastruktur</label>
                        <select class="form-control selectpicker cari" name="infrastruktur_nama" data-live-search="true" data-style="btn-danger" data-width="100%">
                            @foreach ($data_infrastruktur as $row)
                            @php
                                $selected = '';
                                if ($aksi == 'edit') {
                                    if($data->infrastruktur_nama == $row->infrastruktur_nama){
                                        $selected = 'selected';
                                    }
                                }else{
                                    if(old('kelurahan_desa_id')){
                                        if(old('infrastruktur_nama') == $row->infrastruktur_nama){
                                            $selected = 'selected';
                                        }
                                    }
                                }
                            @endphp
                                <option value="{{ $row->infrastruktur_nama }}" {{ $selected }}>{{ $row->infrastruktur_nama }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Sumber Dana</label>
                        <select class="form-control selectpicker" name="sumber_dana_nama" data-live-search="true" data-style="btn-success" data-width="100%">
                            @foreach ($data_sumber_dana as $row)
                            @php
                                $selected = '';
                                if ($aksi == 'edit') {
                                    if($data->sumber_dana_nama == $row->sumber_dana_nama){
                                        $selected = 'selected';
                                    }
                                }else{
                                    if(old('kelurahan_desa_id')){
                                        if(old('sumber_dana_nama') == $row->sumber_dana_nama){
                                            $selected = 'selected';
                                        }
                                    }
                                }
                            @endphp
                                <option value="{{ $row->sumber_dana_nama }}" {{ $selected }}>{{ $row->sumber_dana_nama }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Kelurahan/Desa</label>
                        <select class="form-control selectpicker" name="kelurahan_desa_id" id="kelurahan_desa_id" data-live-search="true" data-style="btn-purple" data-width="100%" data-size="5" onchange="caridesa()">
                            <option value="">Pilih Kelurahan/Desa</option>
                            @foreach ($desa as $row)
                            @php
                                $selected = '';
                                if ($aksi == 'edit') {
                                    if($data->kelurahan_desa_id == $row->kelurahan_desa_id){
                                        $selected = 'selected';
                                    }
                                }else{
                                    if(old('kelurahan_desa_id')){
                                        if(old('kelurahan_desa_id') == $row->kelurahan_desa_id){
                                            $selected = 'selected';
                                        }
                                    }
                                }
                            @endphp
                            <option value="{{ $row->kelurahan_desa_id }}" {{ $selected }}>{{ $row->kelurahan_desa_nama.", ".$row->kecamatan->kecamatan_nama.", ".$row->kecamatan->kabupaten_kota->kabupaten_kota_nama }}</option>
                            @endforeach
                        </select>
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
        $(document).ready(function(){
            if ('{{ $aksi }}' == 'tambah') {
                caridesa();
            }
        });

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

        AutoNumeric.multiple('.decimal', {
            modifyValueOnWheel : false,
            minimumValue: "0"
        });
    </script>
@endpush
