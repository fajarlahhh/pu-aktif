@extends('pages.datamaster.main')

@section('title', ' | '.ucFirst($aksi).' Jembatan')

@push('css')
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
    <link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
@endpush

@section('page')
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
	<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
        <div class="panel-body p-0">
            <input type="hidden" name="redirect" value="{{ $back }}">
            @if($aksi == 'edit')
            <input type="hidden" name="id" value="{{ $data->jembatan_id }}">
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
                                <label class="control-label">Panjang</label>
                                <input class="form-control decimal text-right" type="text" name="jembatan_dimensi_panjang" value="{{ $aksi == 'edit'? $data->jembatan_dimensi_panjang: old('jembatan_dimensi_panjang') }}" autocomplete="off"  />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Lebar</label>
                                <input class="form-control decimal text-right" type="text" name="jembatan_dimensi_lebar" value="{{ $aksi == 'edit'? $data->jembatan_dimensi_lebar: old('jembatan_dimensi_lebar') }}" autocomplete="off"  />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Bentang</label>
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
                            
                        </div>
                        <div class="col-md-4">
                            <div class="note note-primary">
                                <h5>Bangunan Atas</h5>
                                <div class="form-group">
                                    <label class="control-label">Tipe</label>
                                    <input class="form-control" type="text" name="jembatan_bangunan_atas_tipe" value="{{ $aksi == 'edit'? $data->jembatan_bangunan_atas_tipe: old('jembatan_bangunan_atas_tipe') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Kondisi</label>
                                    <input class="form-control decimal text-right" type="text" name="jembatan_bangunan_atas_kondisi" value="{{ $aksi == 'edit'? $data->jembatan_bangunan_atas_kondisi: old('jembatan_bangunan_atas_kondisi') }}" autocomplete="off"  />
                                </div>
                            </div>
                            <div class="note note-danger">
                                <h5>Bangunan Bawah</h5>
                                <div class="form-group">
                                    <label class="control-label">Tipe</label>
                                    <input class="form-control" type="text" name="jembatan_bangunan_bawah_tipe" value="{{ $aksi == 'edit'? $data->jembatan_bangunan_bawah_tipe: old('jembatan_bangunan_bawah_tipe') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Kondisi</label>
                                    <input class="form-control decimal text-right" type="text" name="jembatan_bangunan_bawah_kondisi" value="{{ $aksi == 'edit'? $data->jembatan_bangunan_bawah_kondisi: old('jembatan_bangunan_bawah_kondisi') }}" autocomplete="off"  />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="note note-warning">
                                <h5>Pondasi</h5>
                                <div class="form-group">
                                    <label class="control-label">Tipe</label>
                                    <input class="form-control" type="text" name="jembatan_bangunan_pondasi_tipe" value="{{ $aksi == 'edit'? $data->jembatan_bangunan_pondasi_tipe: old('jembatan_bangunan_pondasi_tipe') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Kondisi</label>
                                    <input class="form-control decimal text-right" type="text" name="jembatan_bangunan_pondasi_kondisi" value="{{ $aksi == 'edit'? $data->jembatan_bangunan_pondasi_kondisi: old('jembatan_bangunan_pondasi_kondisi') }}" autocomplete="off"  />
                                </div>
                            </div>
                            <div class="note note-success">
                                <h5>Lantai</h5>
                                <div class="form-group">
                                    <label class="control-label">Tipe</label>
                                    <input class="form-control" type="text" name="jembatan_bangunan_lantai_tipe" value="{{ $aksi == 'edit'? $data->jembatan_bangunan_lantai_tipe: old('jembatan_bangunan_lantai_tipe') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Kondisi</label>
                                    <input class="form-control decimal text-right" type="text" name="jembatan_bangunan_lantai_kondisi" value="{{ $aksi == 'edit'? $data->jembatan_bangunan_lantai_kondisi: old('jembatan_bangunan_lantai_kondisi') }}" autocomplete="off"  />
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
<script src="{{ url('/public/assets/plugins/autonumeric/autonumeric.js') }}"></script>
    <script src="{{ url('/public/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
    <script>
        function initMap() {
            setTimeout(function() {
                map.invalidateSize();
            }, 500);
        }

        AutoNumeric.multiple('.decimal', {
            modifyValueOnWheel : false,
            minimumValue: "0"
        });
    </script>
@endpush
