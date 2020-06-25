@extends('pages.infrastruktur.main')

@section('title', ' | '.ucFirst($aksi).' Jalan')

@push('css')
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
    <link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
@endpush

@section('page')
	<li class="breadcrumb-item">Jalan</li>
	<li class="breadcrumb-item active">{{ ucFirst($aksi) }} Data</li>
@endsection

@section('header')
	<h1 class="page-header">Jalan <small>{{ ucFirst($aksi) }} Data</small></h1>
@endsection

@section('subcontent')
<form action="{{ route('jalan.'.$aksi) }}" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
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
            <input type="hidden" name="id" value="{{ $data->jalan_id }}">
            @endif
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label class="control-label">No. Ruas Jalan Lama</label>
                        <input class="form-control" type="text" name="jalan_ruas_lama" value="{{ $aksi == 'edit'? $data->jalan_ruas_lama: old('jalan_ruas_lama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                    </div>
                    <div class="form-group">
                        <label class="control-label">No. Sub Ruas Jalan Lama</label>
                        <input class="form-control" type="text" name="jalan_subruas_lama" value="{{ $aksi == 'edit'? $data->jalan_subruas_lama: old('jalan_subruas_lama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                    </div>
                    <div class="form-group">
                        <label class="control-label">No. Ruas Jalan Baru</label>
                        <input class="form-control" type="text" name="jalan_ruas_baru" value="{{ $aksi == 'edit'? $data->jalan_ruas_baru: old('jalan_ruas_baru') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                    </div>
                    <div class="form-group">
                        <label class="control-label">No. Sub Ruas Jalan Baru</label>
                        <input class="form-control" type="text" name="jalan_subruas_baru" value="{{ $aksi == 'edit'? $data->jalan_subruas_baru: old('jalan_subruas_baru') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Nama Jalan</label>
                        <input class="form-control" type="text" name="jalan_nama" value="{{ $aksi == 'edit'? $data->jalan_nama: old('jalan_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Tahun Pembuatan</label>
                        <select class="form-control selectpicker" name="jalan_tahun_pembuatan" id="jalan_tahun_pembuatan" data-live-search="true" data-style="btn-info" data-width="100%">
                            @for ($i = date('Y'); $i >= 1900; $i--)
                            <option value="{{ $i }}" {{ $aksi == 'edit' && $data->jalan_tahun_pembuatan == $i? 'selected': '' }}>{{ $i }}</option>
                            @endfor
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Biaya Pembuatan</label>
                        <input class="form-control numbering" type="text" name="jalan_biaya_pembuatan" value="{{ $aksi == 'edit'? $data->jalan_biaya_pembuatan: (old('jalan_biaya_pembuatan')?? 0) }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                    </div>
                    <div class="form-group" id="catatan">
                        <label class="control-label">Keterangan</label>
                        <textarea class="form-control" rows="3" id="jalan_keterangan" name="jalan_keterangan">{{ $aksi == 'edit'? $data->jalan_keterangan: old('jalan_keterangan') }}</textarea>
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
                        @include('includes.component.leaflet')
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
	</div>
</form>
@include('includes.error')
@endsection

@push('scripts')
	<script src="{{ url('/public/assets/plugins/parsleyjs/dist/parsley.js') }}"></script>
    <script src="{{ url('/public/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
    <script>
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
