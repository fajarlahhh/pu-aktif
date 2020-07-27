@extends('pages.setup.main')

@section('title', ' | Pengguna')

@push('css')
	<link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
	<link href="{{ url('/public/assets/plugins/switchery/switchery.min.css') }}" rel="stylesheet" />
@endpush

@section('page')
	<li class="breadcrumb-item active">Pengguna</li>
@endsection

@section('header')
	<h1 class="page-header">Pengguna</h1>
@endsection

@section('subcontent')
<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
    <!-- begin panel-heading -->
    <div class="panel-heading">
        <div class="row">
            <div class="col-md-6 col-lg-6 col-xl-6 col-xs-12">
                @role('user|super-admin')
                <div class="form-inline">
                    <a href="{{ route('pengguna.tambah') }}" class="btn btn-primary"><i class="fad fa-plus"></i> Tambah</a>
                </div>
                @endrole
            </div>
            <div class="col-md-6 col-lg-6 col-xl-6 col-xs-12">
                <form id="frm-cari" action="{{ route('pengguna') }}" method="GET">
                    <div class="form-inline pull-right">
                        <div class="form-group">
                            <select class="form-control selectpicker cari" name="tipe" data-live-search="true" data-style="btn-warning" data-width="100%">
                                <option value="0" {{ $tipe == '0'? 'selected': '' }}>Exist</option>
                                <option value="1" {{ $tipe == '1'? 'selected': '' }}>Deleted</option>
                                <option value="2" {{ $tipe == '2'? 'selected': '' }}>All</option>
                            </select>
                        </div>&nbsp;
                        <div class="input-group">
                            <input type="text" class="form-control cari" name="cari" placeholder="Cari" aria-label="Sizing example input" autocomplete="off" aria-describedby="basic-addon2" value="{{ $cari }}">
                            <div class="input-group-append">
                                <span class="input-group-text" id="basic-addon2"><i class="fad fa-search"></i></span>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </div>
    <div class="panel-body">
        <div class="table-responsive">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>ID</th>
                        <th>Nama</th>
                        <th>Level</th>
                        <th>Status</th>
                        <th class="width-90"></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($data as $index => $row)
                    <tr>
                        <td>{{ ++$i }}</td>
                        <td>{{ $row->pengguna_id }}</td>
                        <td>{{ $row->pengguna_nama }}</td>
                        <td>{{ ucFirst($row->getRoleNames()[0]) }}</td>
                        <td>
                            @if (!in_array($row->pengguna_id, config('admin.nip')))
                            <input type="checkbox" data-render="switchery" {{ $row->pengguna_status == 1? 'checked': '' }} data-theme="yellow" data-id="{{ $row->pengguna_id }}" data-status="{{ $row->pengguna_status == 1? 0: 1 }}" data-change="check-switchery-state-text"
                            @if($row->trashed())
                            data-disabled="true"
                            @endif />
                            @endif
                        </td>
                        <td class="text-center align-middle">
                            @role('super-admin|supervisor|user')
                            @if (!in_array($row->pengguna_id, config('admin.nip')))
                            @if(!$row->trashed())
                            <a href="{{ route('pengguna.edit', ['id' => $row->pengguna_id]) }}" id='btn-edit' class="m-2" data-toggle="tooltip" title="Edit Data"><i class='fad fa-edit fa-lg text-blue-darker'></i></a>
                            <a href="javascript:;" onclick="hapus('{{ $row->pengguna_id }}')" class="m-2" id='btn-del' data-toggle="tooltip" title="Hapus Data"><i class='fad fa-trash fa-lg text-red-darker'></i></a>
                            @else
                            <a href="javascript:;" onclick="restore('{{ $row->pengguna_id }}')" class="m-2" id='btn-restore' data-toggle="tooltip" title="Restore Data"><i class='fad fa-trash-undo-alt fa-lg text-teal-darker'></i></a>
                            @endif
                            @else
                            <a href="{{ route('pengguna.edit', ['id' => $row->pengguna_id]) }}" id='btn-edit' class="m-2" data-toggle="tooltip" title="Edit Data"><i class='fad fa-edit fa-lg text-blue-darker'></i></a>
                            @endif
                            @endrole
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
    <div class="panel-footer form-inline">
        <div class="col-md-6 col-lg-10 col-xl-10 col-xs-12">
            {{ $data->links() }}
        </div>
        <div class="col-md-6 col-lg-2 col-xl-2 col-xs-12">
            <label class="pull-right">Jumlah Data : {{ $data->total() }}</label>
        </div>
        This page took {{ (microtime(true) - LARAVEL_START) }} seconds to render
    </div>
</div>
@endsection

@push('scripts')
<script src="{{ url('/public/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
<script src="{{ url('/public/assets/plugins/switchery/switchery.min.js') }}"></script>
<script>
    $(".cari").change(function() {
         $("#frm-cari").submit();
    });

	$(document).on('change', '[data-change="check-switchery-state-text"]', function() {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        var id = $(this).data("id");
        $.ajax({
            url: "/pengguna/status/" + id + "/" + ($(this).prop('checked') == true? 1: 0),
            type: "POST",
            success: function(data){
                if(data == 1 || data == 0)
                    Toast.fire({ icon: 'success', title: 'Berhasil ' + (data == 1? 'MENGAKTIFKAN': 'MENONTAKTIFKAN') + ' pengguna dengan ID ' + id });
                else
                    Swal.fire({ icon: 'error', title: (data == 1? 'Mengaktifkan': 'Menonaktifkan') + ' Data', text: data });
            },
            error: function (xhr, ajaxOptions, thrownError) {
                Swal.fire({ icon: 'error', title: (data == 1? 'Mengaktifkan': 'Menonaktifkan') + ' Data', text: xhr.status });
            }
        });
	});

    if ($('[data-render=switchery]').length !== 0) {
		$('[data-render=switchery]').each(function() {
			var themeColor = COLOR_GREEN;
			if ($(this).attr('data-theme')) {
				switch ($(this).attr('data-theme')) {
					case 'red':
						themeColor = COLOR_RED;
						break;
					case 'blue':
						themeColor = COLOR_BLUE;
						break;
					case 'purple':
						themeColor = COLOR_PURPLE;
						break;
					case 'orange':
						themeColor = COLOR_ORANGE;
						break;
					case 'black':
						themeColor = COLOR_BLACK;
						break;
				}
			}
			var option = {};
			option.color = themeColor;
			option.secondaryColor = ($(this).attr('data-secondary-color')) ? $(this).attr('data-secondary-color') : '#dfdfdf';
			option.className = ($(this).attr('data-classname')) ? $(this).attr('data-classname') : 'switchery';
			option.disabled = ($(this).attr('data-disabled')) ? true : false;
			option.disabledOpacity = ($(this).attr('data-disabled-opacity')) ? parseFloat($(this).attr('data-disabled-opacity')) : 0.5;
			option.speed = ($(this).attr('data-speed')) ? $(this).attr('data-speed') : '0.5s';
			var switchery = new Switchery(this, option);
		});
	}

    function restore(id) {
        Swal.fire({
            title: 'Restore Data',
            text: 'Anda akan mengembalikan pengguna dengan ID: ' + id + '',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Ya',
            cancelButtonText: 'Tidak'
        }).then((result) => {
            if (result.value == true) {
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                $.ajax({
                    url: "/pengguna/restore/" + id,
                    type: "POST",
                    data: {
                        "_method": 'DELETE'
                    },
                    success: function(data){
                        location.reload(true);
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        Swal.fire({
                            icon: 'error',
                            title: 'Restore data',
                            text: xhr.status
                        })
                    }
                });
            }
        });
    }

    function hapus(id) {
        Swal.fire({
            title: 'Hapus Data',
            text: 'Anda akan menghapus pengguna dengan ID: ' + id + '',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Ya',
            cancelButtonText: 'Tidak'
        }).then((result) => {
            if (result.value == true) {
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                $.ajax({
                    url: "/pengguna/hapus/" + id,
                    type: "POST",
                    data: {
                        "_method": 'DELETE'
                    },
                    success: function(data){
                        location.reload(true);
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        Swal.fire({
                            icon: 'error',
                            title: 'Hapus data',
                            text: xhr.status
                        })
                    }
                });
            }
        });
    }
</script>
@endpush
