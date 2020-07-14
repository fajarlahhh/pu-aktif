@extends('pages.datamaster.main')

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
        <div class="panel-body p-0">
            <input type="hidden" name="redirect" value="{{ $back }}">
            @if($aksi == 'edit')
            <input type="hidden" name="id" value="{{ $data->jalan_id }}">
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
                                <label class="control-label">Ruas Jalan</label>
                                <input class="form-control" type="number" name="jalan_ruas" value="{{ $aksi == 'edit'? $data->jalan_ruas: old('jalan_ruas') }}" autocomplete="off"  />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Sub Ruas Jalan</label>
                                <input class="form-control" type="number" name="jalan_subruas" value="{{ $aksi == 'edit'? $data->jalan_subruas: old('jalan_subruas') }}" autocomplete="off"  />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Nama Jalan</label>
                                <input class="form-control" type="text" name="jalan_nama" value="{{ $aksi == 'edit'? $data->jalan_nama: old('jalan_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Panjang</label>
                                <input class="form-control decimal text-right" type="text" name="jalan_panjang" value="{{ $aksi == 'edit'? $data->jalan_panjang: old('jalan_panjang') }}" autocomplete="off"  />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Lebar</label>
                                <input class="form-control decimal text-right" type="text" name="jalan_lebar" value="{{ $aksi == 'edit'? $data->jalan_lebar: old('jalan_lebar') }}" autocomplete="off"  />
                            </div>
                            <div class="form-group">
                                <label class="control-label">LHR</label>
                                <input class="form-control" type="text" name="jalan_lhr" value="{{ $aksi == 'edit'? $data->jalan_lhr: old('jalan_lhr') }}" autocomplete="off"  />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Akses Ke N/P/K</label>
                                <input class="form-control" type="text" name="jalan_akses_ke_npk" value="{{ $aksi == 'edit'? $data->jalan_akses_ke_npk: old('jalan_akses_ke_npk') }}" autocomplete="off"  />
                            </div>
                            <div class="form-group" id="catatan">
                                <label class="control-label">Keterangan</label>
                                <textarea class="form-control" rows="3" id="jalan_keterangan" name="jalan_keterangan">{{ $aksi == 'edit'? $data->jalan_keterangan: old('jalan_keterangan') }}</textarea>
                            </div>
                            @include('includes.error')
                        </div>
                        <div class="col-md-3">
                            <div class="note note-primary">
                                <h5>Panjang Tiap Jenis Permukaan</h5>
                                <div class="form-group">
                                    <label class="control-label">Aspal/Penetrasi/Makadam</label>
                                    <input class="form-control decimal text-right" type="text" name="jalan_aspal_penetrasi_makadam" value="{{ $aksi == 'edit'? $data->jalan_aspal_penetrasi_makadam: old('jalan_aspal_penetrasi_makadam') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Perkerasan Beton</label>
                                    <input class="form-control decimal text-right" type="text" name="jalan_perkerasan_beton" value="{{ $aksi == 'edit'? $data->jalan_perkerasan_beton: old('jalan_perkerasan_beton') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Telford/Kerikil</label>
                                    <input class="form-control decimal text-right" type="text" name="jalan_telford_kerikil" value="{{ $aksi == 'edit'? $data->jalan_telford_kerikil: old('jalan_telford_kerikil') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Tanah/Belum Tembus</label>
                                    <input class="form-control decimal text-right" type="text" name="jalan_tanah_belum_tembus" value="{{ $aksi == 'edit'? $data->jalan_tanah_belum_tembus: old('jalan_tanah_belum_tembus') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Baik (KM)</label>
                                    <input class="form-control decimal text-right" type="text" name="jalan_baik_km" value="{{ $aksi == 'edit'? $data->jalan_baik_km: old('jalan_baik_km') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Baik (%)</label>
                                    <input class="form-control decimal text-right" type="text" name="jalan_baik_persen" value="{{ $aksi == 'edit'? $data->jalan_baik_persen: old('jalan_baik_persen') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Sedang (KM)</label>
                                    <input class="form-control decimal text-right" type="text" name="jalan_sedang_km" value="{{ $aksi == 'edit'? $data->jalan_sedang_km: old('jalan_sedang_km') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Sedang (%)</label>
                                    <input class="form-control decimal text-right" type="text" name="jalan_sedang_persen" value="{{ $aksi == 'edit'? $data->jalan_sedang_persen: old('jalan_sedang_persen') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Rusak Ringan (KM)</label>
                                    <input class="form-control decimal text-right" type="text" name="jalan_rusak_ringan_km" value="{{ $aksi == 'edit'? $data->jalan_rusak_ringan_km: old('jalan_rusak_ringan_km') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Rusak Ringan (%)</label>
                                    <input class="form-control decimal text-right" type="text" name="jalan_rusak_ringan_persen" value="{{ $aksi == 'edit'? $data->jalan_rusak_ringan_persen: old('jalan_rusak_ringan_persen') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Rusak Berat (KM)</label>
                                    <input class="form-control decimal text-right" type="text" name="jalan_rusak_berat_km" value="{{ $aksi == 'edit'? $data->jalan_rusak_berat_km: old('jalan_rusak_berat_km') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Rusak Berat (%)</label>
                                    <input class="form-control decimal text-right" type="text" name="jalan_rusak_berat_persen" value="{{ $aksi == 'edit'? $data->jalan_rusak_berat_persen: old('jalan_rusak_berat_persen') }}" autocomplete="off"  />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="note note-danger">
                                <h5>Fungsi</h5>
                                <div class="form-group">
                                    <label class="control-label">KP-2</label>
                                    <input class="form-control decimal text-right" type="text" name="jalan_fungsi_kp_2" value="{{ $aksi == 'edit'? $data->jalan_fungsi_kp_2: old('jalan_fungsi_kp_2') }}" autocomplete="off"  />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">KP-3</label>
                                    <input class="form-control decimal text-right" type="text" name="jalan_fungsi_kp_3" value="{{ $aksi == 'edit'? $data->jalan_fungsi_kp_3: old('jalan_fungsi_kp_3') }}" autocomplete="off"  />
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
