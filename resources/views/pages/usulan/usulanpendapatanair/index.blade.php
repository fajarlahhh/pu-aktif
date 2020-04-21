@extends('pages.usulan.main')

@section('title', ' | Usulan Pendapatan Air')

@push('css')
	<link href="/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" />
	<link href="/assets/plugins/parsleyjs/src/parsley.css" rel="stylesheet" />
@endpush

@section('page')
	<li class="breadcrumb-item active">Usulan <small>Pendapatan Air</small></li>
@endsection

@section('header')
	<h1 class="page-header">Usulan <small>Pendapatan Air</small></h1>
@endsection

@section('subcontent')
<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
    <!-- begin panel-heading -->
    <div class="panel-heading">
        <div class="row">
            <div class="col-md-2 col-lg-2 col-xl-2 col-xs-12">
                @role('user|administrator')
                <div class="form-inline">
                    <a href="/usulanpendapatanair/tambah" class="btn btn-primary"><i class="fad fa-plus"></i> Tambah</a>
                </div>
                @endrole
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-xs-12">
                <form id="frm-cari" action="{{ route('usulanpendapatanair') }}" method="GET">
                    <div class="form-inline pull-right">
                        <div class="form-group">
                            <select class="form-control selectpicker cari" name="verifikasi" data-live-search="true" data-style="btn-danger" data-width="100%">
                                <option value="0" {{ $verifikasi == '0'? 'selected': '' }}>Belum Verifikasi</option>
                                <option value="1" {{ $verifikasi == '1'? 'selected': '' }}>Terverifikasi</option>
                                <option value="2" {{ $verifikasi == '2'? 'selected': '' }}>Semua Data</option>
                            </select>
                        </div>&nbsp;
                        <div class="form-group">
                            <select class="form-control selectpicker cari" name="tahun" data-live-search="true" data-style="btn-info" data-width="100%">
                                @foreach ($periode as $row)
                                <option value="{{ $row->periode_tahun }}" {{ $row->periode_tahun == $tahun? 'selected': '' }}>{{ $row->periode_tahun }}</option>
                                @endforeach
                            </select>
                        </div>&nbsp;
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
                        <th>Akun</th>
                        <th>Golongan</th>
                        <th>Wilayah</th>
                        <th>Keterangan</th>
                        <th>Nilai</th>
                        <th>Status</th>
                        <th class="width-90"></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($data as $index => $row)
                    <tr>
                        <td>{{ ++$i }}</td>
                        <td>
                            <label data-toggle="tooltip" data-container="body" data-placement="right" data-html="true" data-placement="top" title="{!! $row->pegawai->nm_pegawai.", <br><small>".$row->updated_at."</small>" !!}">{{ $row->akun->akun_kode }} {{ $row->akun->akun_keterangan }}</label>
                        </td>
                        <td>{{ $row->golongan_id }} - {{ $row->golongan->golongan_nama }}</td>
                        <td>{{ $row->wilayah_nama }}</td>
                        <td>{{ $row->usulan_pendapatan_air_keterangan }}</td>
                        <td class="text-right">Rp. {{ $row->jumlah_total }}</td>
                        <td>
                            @if ($row->verifikasi == 0)
                            <span class="badge badge-danger">Belum Verifikasi</span>
                            @else
                            <span class="badge badge-success">Sudah Verifikasi</span>
                            @endif
                        </td>
                        <td class="text-center">
                            <span data-toggle="modal" data-target="#modal-detail" class="btn-preview" data-id="{{ $row->usulan_pendapatan_air_id_encrypt }}">
                                <a href="javascript:;" class="m-2" data-toggle="tooltip" title="Preview Data"><i class='fad fa-info-square fa-lg text-green-darker'></i></a>
                            </span>
                            @if ($periode_aktif != null)
                            @role('administrator|supervisor|user')
                            @if (!$row->trashed())
                            @if ($row->verifikasi == 0)
                            <a href="/usulanpendapatanair/edit?id={{ $row->usulan_pendapatan_air_id_encrypt }}" id='btn-edit' class="m-2" data-toggle="tooltip" title="Edit Data"><i class='fad fa-edit fa-lg text-blue-darker'></i></a>
                            @endif
                            <a href="javascript:;" onclick="hapus('{{ $row->usulan_pendapatan_air_id_encrypt }}', '{{ $row->golongan_id." - ".$row->golongan->golongan_nama." wilayah ".$row->wilayah_nama." tahun ".$row->periode_tahun }}')" class="m-2" id='btn-del' data-toggle="tooltip" title="Hapus Data"><i class='fad fa-trash fa-lg text-red-darker'></i></a>
                            @else
                            <a href="javascript:;" onclick="restore('{{ $row->usulan_pendapatan_air_id_encrypt }}', '{{ $row->golongan_id." - ".$row->golongan->golongan_nama." wilayah ".$row->wilayah_nama." tahun ".$row->periode_tahun }}')" class="m-2" id='btn-restore' data-toggle="tooltip" title="Restore Data"><i class='fad fa-trash-undo-alt fa-lg text-teal-darker'></i></a>
                            @endif
                            @endrole
                            @endif
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
<div class="modal fade" id="modal-detail">
	<div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Pratinjau Usulan Pendapatan Air</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div id="modal-detail-form"></div>
        </div>
	</div>
</div>

@endsection

@push('scripts')
<script src="/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
<script>
    $(".cari").change(function() {
         $("#frm-cari").submit();
    });

    $(".btn-preview").click(function(){
        $("#modal-detail-form").load("/usulanpendapatanair/detail?id=" + $(this).data("id") + "&jenis=pratinjau");
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

    function restore(id, ket) {
        Swal.fire({
            title: 'Restore Data',
            text: 'Anda akan mengembalikan data usulan pendapatan air ' + ket + '',
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
                    url: "/usulanpendapatanair/restore?id=" + id,
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

    function hapus(id, ket) {
        Swal.fire({
            title: 'Hapus Data',
            text: 'Anda akan menghapus data usulan pendapatan air ' + ket + '',
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
                    url: "/usulanpendapatanair/hapus?id=" + id,
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
