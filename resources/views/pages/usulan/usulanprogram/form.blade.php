@extends('pages.usulan.main')

@section('title', ' | '.ucfirst($aksi).' Usulan Program')

@push('css')
	<link href="/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" />
	<link href="/assets/plugins/parsleyjs/src/parsley.css" rel="stylesheet" />
	<link href="/assets/plugins/bootstrap3-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" />
@endpush

@section('page')
    <li class="breadcrumb-item active">Usulan Program</li>
	<li class="breadcrumb-item active">{{ ucfirst($aksi) }} Data</li>
@endsection

@section('header')
    <h1 class="page-header">Usulan <small>Program <small>{{ ucfirst($aksi) }} Data</small></small></h1>
@endsection

@section('subcontent')
<form action="{{ route('usulanprogram.'.strtolower($aksi)) }}" method="POST" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
    @if ($aksi == 'edit')
    <input type="hidden" name="id" value="{{ $data->usulan_program_id_encrypt }}">
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
                <label class="control-label">Tahun</label>
                <select class="form-control selectpicker" name="periode_tahun" data-live-search="true" data-style="btn-purple" data-width="100%">
                    @foreach ($periode as $row)
                    @php
                        $selected = '';
                        if(old('periode_tahun')){
                            $selected =  old('periode_tahun') == $row->periode_tahun? 'selected': '';
                        }else{
                            if($aksi == 'edit'){
                                $selected =  $data->periode_tahun == $row->periode_tahun? 'selected': '';
                            }else{
                                $selected =  date('Y') == $row->periode_tahun? 'selected': '';
                            }
                        }
                    @endphp
                    <option value="{{ $row->periode_tahun }}" {{ $selected }}>{{ $row->periode_tahun }}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group input-group-sm">
                <label class="control-label">Bidang</label>
                <select class="form-control selectpicker" name="usulan_program_bidang" data-live-search="true" data-style="btn-warning" data-width="100%" required>
                    @foreach($bidang as $row)
                    @php
                        $selected = '';
                        if(old('nm_bagian')){
                            $selected =  old('nm_bagian') == $row->nm_bagian? 'selected': '';
                        }else{
                            if($aksi == 'edit'){
                                $selected =  $data->usulan_program_bidang == $row->nm_bagian? 'selected': '';
                            }else{
                                $selected =  $bagian_pegawai == $row->nm_bagian? 'selected': '';
                            }
                        }
                    @endphp
                    <option value="{{ $row->nm_bagian }}" {{ $selected }}>{{ $row->nm_bagian }}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label class="control-label">Program</label>
                <select class="form-control selectpicker" name="akun_kode" id="akun_kode" data-live-search="true" data-style="btn-primary" data-width="100%" required>
                    @foreach($program as $row)
                    @php
                        $selected = '';
                        if(old('akun_kode')){
                            $selected =  old('akun_kode') == $row->akun_kode? 'selected': '';
                        }else{
                            if($aksi == 'edit')
                                $selected =  $data->akun_kode == $row->akun_kode? 'selected': '';

                        }
                    @endphp
                    <option value="{{ $row->akun_kode }}" {{ $selected }}>{{ $row->akun_keterangan }}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label class="control-label">Deskripsi</label>
                <input class="form-control" type="text" name="usulan_program_deskripsi" value="{{ old('usulan_program_deskripsi')? old('usulan_program_deskripsi'): ($aksi == 'edit'? $data->usulan_program_deskripsi: '') }}" autocomplete="off" required/>
            </div>
            <div class="form-group">
                <label class="control-label">Tujuan/Sasaran</label>
                <input class="form-control" type="text" name="usulan_program_tujuan" value="{{ old('usulan_program_tujuan')? old('usulan_program_tujuan'): ($aksi == 'edit'? $data->usulan_program_tujuan: '') }}" autocomplete="off" required/>
            </div>
            <div class="note note-secondary m-b-15">
                <h4><b>Rincian</b></h4>
                <div class="form-group">
                    <textarea class="textarea form-control wysihtml5" name="usulan_program_rincian" rows="12">
                        {{ old('usulan_program_rincian')? old('usulan_program_rincian'): ($aksi == 'edit'? $data->usulan_program_rincian: '') }}
                    </textarea>
                </div>
            </div>
            @include('includes.error')
        </div>
        <div class="panel-footer">
            @role('user|administrator')
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
	<script src="/assets/plugins/bootstrap3-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<script>
        $('.wysihtml5').wysihtml5({
            selected: 0,
            theme: 'default',
            transitionEffect:'',
            transitionSpeed: 0,
            useURLhash: false,
            showStepURLhash: false,
            toolbarSettings: {
                toolbarPosition: 'bottom'
            }
        });
	</script>
@endpush
