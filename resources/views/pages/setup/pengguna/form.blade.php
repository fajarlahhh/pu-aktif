@extends('pages.setup.main')

@section('title', ' | '.ucFirst($aksi).' Pengguna')

@push('css')
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
	<link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
@endpush

@section('page')
	<li class="breadcrumb-item">Pengguna</li>
	<li class="breadcrumb-item active">{{ ucFirst($aksi) }} Data</li>
@endsection

@section('header')
	<h1 class="page-header">Pengguna <small>{{ ucFirst($aksi) }} Data</small></h1>
@endsection

@section('subcontent')
<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
    <!-- begin panel-heading -->
    <div class="panel-heading">
        <div class="panel-heading-btn">
            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
        </div>
        <h4 class="panel-title"><i class="far fa-file-alt"></i> Form</h4>
    </div>
    <form action="{{ route('pengguna.'.$aksi.'.simpan') }}" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
        @method($aksi == 'tambah'? 'POST': 'PUT')
        @csrf
        <div class="panel-body">
            <input type="hidden" name="redirect" value="{{ $back }}">
            <div class="row">
                @if($aksi == 'edit')
                <input type="hidden" name="ID" value="{{ $data->pengguna_id }}">
                @endif
                <div class="col-md-4">
                    <div class="form-group">
                        <label class="control-label">ID</label>
                        <input class="form-control" type="text" name="pengguna_id" value="{{ $aksi == "edit"? $data->pengguna_id: old("pengguna_id") }}" required {{ $aksi == "edit"? ($data->pengguna_id != "admin"? "": "readonly"): "" }}/>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Nama</label>
                        <input  class="form-control" type="text" name="pengguna_nama" value="{{ $aksi == "edit"? $data->pengguna_nama: old("pengguna_nama") }}" required />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Kata Sandi</label>
                        <input class="form-control" type="password" name="pengguna_sandi" autocomplete="off" id="pengguna_sandi" data-parsley-minlength="5" {{ $aksi == "edit"? "": "required" }} />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Level</label>
                        <select class="form-control selectpicker" style="width : 100%" name="pengguna_level" id="pengguna_level" data-live-search="true" data-style="btn-info" onchange="hakakses()" data-width="100%">
                            @foreach($level as $lvl)
                            <option value="{{ $lvl->id }}" {{ ($aksi == 'edit' && $data->getRoleNames()[0] == $lvl->name? 'selected': (old('pengguna_level') == $lvl->id? 'selected': '')) }}>{{ ucfirst($lvl->name) }}</option>
                            @endforeach
                        </select>
                    </div>
                    @include('includes.error')
                </div>
                <div class="col-md-8">
                    <div class="note note-primary">
                        <h5>Hak Akses</h5>
                        <hr>
                        <div class="note-content">
                            <div class="row p-l-10 p-r-10">
                                {!! $menu !!}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            @role('supervisor|super-admin')
            <input type="submit" value="Simpan" class="btn btn-sm btn-success m-r-3"  />
            @endrole
            <a href="{{ $back }}" class="btn btn-sm btn-danger">Batal</a>
            <div class="pull-right">
                This page took {{ (microtime(true) - LARAVEL_START) }} seconds to render
            </div>
        </div>
    </form>
</div>
@endsection

@push('scripts')
	<script src="{{ url('/public/assets/plugins/bootstrap-show-password/dist/bootstrap-show-password.min.js') }}"></script>
	<script src="{{ url('/public/assets/plugins/parsleyjs/dist/parsley.js') }}"></script>
    <script src="{{ url('/public/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
	<script>
		$(document).ready(function() {
			hakakses();
    		$('#pengguna_sandi').password();
        });

		function child(elmt) {
            $('.' + $(elmt).attr('id')).each(function() {
                $('#' + $(this).attr('id')).prop('checked', $(elmt).is(':checked'))
            });

            var parent = $(elmt).attr('class');
            if (parent){
                parent = parent.split(' ').pop();
            }
            var i = 0;
            $('.' + parent).each(function() {
                if ($(this).is(':checked')){
                    i++;
                }
            });

            if(i > 0){
                $('#' + parent).prop('checked', true);
            } else {
                $('#' + parent).prop('checked', false);
            }
		}

		function hakakses() {
			if ($('#pengguna_level').val() == 1) {
				$('.hakakses input').prop('disabled', true);
				$('.hakakses input').prop('checked', true);
  				$(".hakakses").addClass("disabled");
			}else{
				$('.hakakses input').prop('disabled', false);
				if ('{{ ucFirst($aksi) }}' == 'tambah') {
					$('.hakakses input').prop('checked', false);
				}
  				$(".hakakses").removeClass("disabled");
			}
		}
	</script>
@endpush
