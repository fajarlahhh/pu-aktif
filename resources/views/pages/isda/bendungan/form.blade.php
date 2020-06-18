@extends('pages.usulan.main')

@section('title', ' | '.ucfirst($aksi).' Data Barang dan Pekerjaan')

@push('css')
	<link href="/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" />
	<link href="/assets/plugins/parsleyjs/src/parsley.css" rel="stylesheet" />
@endpush

@section('page')
    <li class="breadcrumb-item active">Data Barang dan Pekerjaan</li>
	<li class="breadcrumb-item active">{{ ucfirst($aksi) }} Data</li>
@endsection

@section('header')
    <h1 class="page-header">Data Barang dan Pekerjaan <small>{{ ucfirst($aksi) }} Data</small></h1>
@endsection

@section('subcontent')
<form action="{{ route('barangdanpekerjaan.'.strtolower($aksi)) }}" method="POST" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
    @if ($aksi == 'edit')
    <input type="hidden" name="id" value="{{ $data->barang_dan_pekerjaan_id }}">
    @method('PUT')
    @endif
    @csrf
    <div class="panel panel-inverse" data-sortable-id="form-stuff-1">
        <div class="panel-heading">
            <div class="panel-heading-btn">
                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
            </div>
            <h4 class="panel-title"><i class="far fa-file-alt"></i> Form</h4>
        </div>
        <div class="panel-body">
            <input type="hidden" name="redirect" value="{{ $back }}">
            <div class="form-group">
                <label class="control-label">Nama</label>
                <input class="form-control" type="text" name="barang_dan_pekerjaan_nama" value="{{ old('barang_dan_pekerjaan_nama')? old('barang_dan_pekerjaan_nama'): ($aksi == 'edit'? $data->barang_dan_pekerjaan_nama: '') }}" autocomplete="off" required/>
            </div>
            <div class="form-group">
                <label class="control-label">Satuan</label>
                <input class="form-control" type="text" name="barang_dan_pekerjaan_satuan" value="{{ old('barang_dan_pekerjaan_satuan')? old('barang_dan_pekerjaan_satuan'): ($aksi == 'edit'? $data->barang_dan_pekerjaan_satuan: '') }}" autocomplete="off" required/>
            </div>
            <div class="form-group">
                <label class="control-label">Harga</label>
                <input class="form-control decimal text-right" type="text" name="barang_dan_pekerjaan_harga" value="{{ old('barang_dan_pekerjaan_harga')? old('barang_dan_pekerjaan_harga'): ($aksi == 'edit'? $data->barang_dan_pekerjaan_harga: '') }}" autocomplete="off" required/>
            </div>
            <div class="form-group">
                <label class="control-label">Jenis</label>
                <select class="form-control selectpicker" name="barang_dan_pekerjaan_jenis" data-live-search="true" data-style="btn-info" data-width="100%">
                    <option value="Barang" {{ $aksi == 'tambah'? (old('barang_dan_pekerjaan_jenis') == 'Barang'? 'selected': '') : ($data->barang_dan_pekerjaan_jenis == 'Barang'? 'selected': '') }}>Barang</option>
                    <option value="Pekerjaan" {{ $aksi == 'tambah'? (old('barang_dan_pekerjaan_jenis') == 'Pekerjaan'? 'selected': '') : ($data->barang_dan_pekerjaan_jenis == 'Pekerjaan'? 'selected': '') }}>Pekerjaan</option>
                </select>
            </div>
            @include('includes.error')
        </div>
        <div class="panel-footer">
            @role('user|super-admin')
            <input type="submit" value="Simpan" class="btn btn-sm btn-success m-r-3"  />
            @endrole
            <a href="{{ $back }}" class="btn btn-sm btn-danger">Batal</a>
            <div class="pull-right">
                This page took {{ (microtime(true) - LARAVEL_START) }} seconds to render
            </div>
        </div>
    </div>
</form>
@endsection

@push('scripts')
	<script src="/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
	<script src="/assets/plugins/parsleyjs/dist/parsley.js"></script>
	<script src="/assets/plugins/autonumeric/autoNumeric.js"></script>
	<script>
        AutoNumeric.multiple('.decimal', {
            modifyValueOnWheel : false,
            minimumValue: "0"
        });
	</script>
@endpush
