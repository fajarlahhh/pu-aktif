@extends('pages.infrastruktur.main')

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
                <label class="control-label">Infrastruktur</label>
                <select class="form-control selectpicker" name="infrastruktur_id" id="infrastruktur_id" data-live-search="true" data-style="btn-danger" onchange="jenis_infrastruktur()" data-width="100%">
                    @foreach ($infrastruktur as $row)
                    @php
                        $selected = '';
                        if ($aksi == 'edit') {
                            if($data->infrastruktur_id == $row->id && $data->kewenangan_provinsi_jenis_infrastruktur == $row->jenis){
                                $selected = 'selected';
                            }
                        }else{
                            if(old('infrastruktur_id')){
                                if(old('infrastruktur_id') == $row->id && old('kewenangan_provinsi_jenis_infrastruktur') == $row->jenis){
                                    $selected = 'selected';
                                }
                            }
                        }
                    @endphp
                        <option value="{{ $row->id }}" data-id="{{ $row->id }}" data-jenis="{{ $row->jenis }}" {{ $selected }}>
                            {{ strtoupper($row->alias) }}
                        </option>
                    @endforeach
                </select>
                <input type="hidden" id="kewenangan_provinsi_jenis_infrastruktur" name="kewenangan_provinsi_jenis_infrastruktur" value="{{ $aksi == 'edit'? $data->kewenangan_provinsi_jenis_infrastruktur: old('kewenangan_provinsi_jenis_infrastruktur') }}" readonly />
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
                            if(old('sumber_dana_nama')){
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
        $('document').ready(function(){
            jenis_infrastruktur();
        });

        function jenis_infrastruktur() {
            $("#kewenangan_provinsi_jenis_infrastruktur").val($("#infrastruktur_id option:selected").data('jenis'));
        }

        AutoNumeric.multiple('.decimal', {
            modifyValueOnWheel : false,
            minimumValue: "0"
        });
    </script>
@endpush
