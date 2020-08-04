@extends('pages.main')

@section('title', ' | Tambah Pemeliharaan')

@push('css')
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
	<link href="{{ url('/public/assets/plugins/select2/dist/css/select2.min.css') }}" rel="stylesheet" />
    <link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
	<link href="{{ url('/public/assets/plugins/smartwizard/dist/css/smart_wizard.css') }}" rel="stylesheet" />
@endpush

@section('page')
	<li class="breadcrumb-item">Pemeliharaan</li>
	<li class="breadcrumb-item active">Tambah Data</li>
@endsection

@section('header')
	<h1 class="page-header">Pemeliharaan <small>Tambah Data</small></h1>
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
    <form action="{{ url('pemeliharaan/simpan') }}" name="step" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
        <div class="panel-body">
            <div class="row">
                <div class="col-md-7">
                    @csrf
                    <div class="form-group">
                        <label class="control-label">Uraian</label>
                        <input class="form-control" type="text" name="pemeliharaan_uraian" value="{{ old('pemeliharaan_uraian') }}" autocomplete="off" required />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Tahun</label>
                        <select class="form-control selectpicker cari" name="pemeliharaan_tahun" data-live-search="true" data-size="5" data-style="btn-info" data-width="100%" required>
                            @for($i=2015; $i <= date('Y') + 5; $i++)
                            @php
                                $selected = '';
                                if(old('pemeliharaan_tahun')){
                                    if(old('pemeliharaan_tahun') == $i){
                                        $selected = 'selected';
                                    }
                                }else{
                                    if (date('Y') == $i) {
                                        $selected = 'selected';
                                    }
                                }
                            @endphp
                            <option value="{{ $i }}" {{ $selected }}>{{ $i }}</option>
                            @endfor
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Nilai</label>
                        <input class="form-control decimal text-right" type="text" name="pemeliharaan_nilai" value="{{ old('pemeliharaan_nilai') }}" autocomplete="off"  required/>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Jenis Pembangunan</label>
                        <select class="form-control selectpicker" name="pemeliharaan_jenis" id="pemeliharaan_jenis" data-live-search="true" data-style="btn-success" onchange="jenis_infrastruktur()" data-width="100%" required>
                            <option value="Kewenangan Provinsi" {{ old('pemeliharaan_jenis') == 'Kewenangan Provinsi'? 'selected': ''}}>Kewenangan Provinsi</option>
                            <option value="Pokir" {{ old('pemeliharaan_jenis') == 'Pokir'? 'selected': ''}}>POKIR</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Penanggung Jawab</label>
                        <input class="form-control" type="text" name="pemeliharaan_penanggung_jawab" value="{{ old('pemeliharaan_penanggung_jawab') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Infrastruktur</label>
                        <select class="form-control" name="infrastruktur_id" id="infrastruktur_id" data-width="100%" required>
                        </select>
                        <input type="hidden" name="infrastruktur_jenis" id="infrastruktur_jenis">
                    </div>
                    <div class="form-group">
                        <label class="control-label">Sumber Dana</label>
                        <select class="form-control selectpicker" name="sumber_dana_id" data-live-search="true" data-style="btn-warning" data-width="100%" required>
                            @foreach ($data_sumber_dana as $row)
                            @php
                                $selected = '';
                                if(old('sumber_dana_id') == $row->sumber_dana_id){
                                    $selected = 'selected';
                                }
                            @endphp
                                <option value="{{ $row->sumber_dana_id }}" {{ $selected }}>{{ $row->sumber_dana_nama }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="note note-primary">
                        @include('includes.component.lokasi')
                        <div hidden>
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
    </form>
</div>
@include('includes.error')
@endsection

@push('scripts')
    <script src="{{ url('/public/assets/plugins/parsleyjs/dist/parsley.js') }}"></script>
    <script src="{{ url('/public/assets/plugins/autonumeric/autonumeric.js') }}"></script>
    <script src="{{ url('/public/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
	<script src="{{ url('/public/assets/plugins/select2/dist/js/select2.min.js') }}"></script>
    <script>
        $("#infrastruktur_id").on("change", function(e) {
            $("#infrastruktur_jenis").val($(this).select2('data')[0]['tipe']);
        });

        $('#infrastruktur_id').select2({
            ajax:{
                url: '{{ url('/pemeliharaan/cari') }}',
                dataType: "json",
                delay: 250,
                type : 'GET',
                data: function(params){
                    return{
                        cari : params.term
                    };
                },
                processResults: function(data){
                    var results = [];

                    $.each(data, function(index, item){
                        results.push({
                            id: item.id,
                            tipe: item.jenis,
                            text: item.tipe + ' - ' + item.nama
                        });
                    });
                    return{
                        results: results
                    };
                },
                cache: true,
            },
        });

    </script>
@endpush
