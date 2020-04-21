@extends('pages.usulan.main')

@section('title', ' | Usulan Kegiatan')

@push('css')
	<link href="/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" />
	<link href="/assets/plugins/parsleyjs/src/parsley.css" rel="stylesheet" />
@endpush

@section('page')
<li class="breadcrumb-item">Usulan Program</li>
<li class="breadcrumb-item active">Kegiatan</li>
@endsection

@section('header')
	<h1 class="page-header">Kegiatan<small> Program {{ $program->usulan_program_deskripsi }}</small></h1>
@endsection

@section('subcontent')
<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
    <!-- begin panel-heading -->
    <div class="panel-heading">
        <div class="row">
            <div class="col-md-3 col-lg-3 col-xl-3 col-xs-12">
                @role('user|administrator')
                <div class="form-inline">
                    <a href="{{ route('usulankegiatan.tambah', array('program' => $program->usulan_program_id_encrypt)) }}" class="btn btn-primary"><i class="fad fa-plus"></i> Tambah</a>&nbsp;
                </div>
                @endrole
            </div>
            <div class="col-md-9 col-lg-9 col-xl-9 col-xs-12">
                <form id="frm-cari" action="{{ route('usulankegiatan') }}" method="GET">
                    <input type="hidden" name="program" value="{{ $program->usulan_program_id_encrypt }}">
                    <input type="hidden" name="akun" value="{{ $program->akun_kode }}">
                    <div class="form-inline pull-right">
                        <div class="form-group">
                            <select class="form-control selectpicker cari" name="verifikasi" data-live-search="true" data-style="btn-danger" data-width="100%">
                                <option value="0" {{ $verifikasi == '0'? 'selected': '' }}>Belum Verifikasi</option>
                                <option value="1" {{ $verifikasi == '1'? 'selected': '' }}>Terverifikasi</option>
                                <option value="2" {{ $verifikasi == '2'? 'selected': '' }}>Semua Data</option>
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
                        <th>Kegiatan</th>
                        <th>Deskripsi</th>
                        <th>Penanggung Jawab</th>
                        <th>Nilai</th>
                        <th>Status</th>
                        <th class="width-90"></th>
                    </tr>
                </thead>
                <tbody>
                    @php
                        $total = 0;
                    @endphp
                    @foreach ($data as $index => $row)
                    @php
                        $nilai = $row->detail->count() > 0? $row->detail->sum('usulan_kegiatan_detail_nilai_total'): 0;
                        $total += $nilai;
                    @endphp
                    <tr>
                        <td class="align-middle">{{ ++$i }}</td>
                        <td class="align-middle">
                            <label data-toggle="tooltip" data-container="body" data-placement="left" data-html="true" data-placement="top" title="{{ $row->pegawai->nm_pegawai.", ".$row->updated_at }}">{{ $row->akun->akun_kode }} {{ $row->akun->akun_keterangan }}</label>
                        </td>
                        <td class="align-middle">{{ $row->usulan_kegiatan_deskripsi }}</td>
                        <td class="align-middle">{{ $row->usulan_kegiatan_penanggung_jawab }}</td>
                        <td class="align-middle text-right">Rp. {{ number_format($nilai, 2) }}</td>
                        <td class="align-middle">
                            @if ($row->verifikasi == 0)
                            <span class="badge badge-danger">Belum Verifikasi</span>
                            @else
                            <span class="badge badge-success">Sudah Verifikasi</span>
                            @endif
                        </td>
                        <td class="with-btn-group" nowrap>
                            <div class="btn-group">
                                <a href="javascript:;" class="btn btn-default btn-sm btn-preview" data-toggle="modal" data-target="#modal-detail" class="btn-preview" data-id="{{ $row->usulan_kegiatan_id_encrypt }}"> Preview</a>
                                <a href="#" class="btn btn-default btn-sm dropdown-toggle width-30 no-caret" data-toggle="dropdown">
                                    <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu pull-right">
                                    @if ($periode_aktif->contains($row->program->periode_tahun))
                                    @role('administrator|supervisor|user')
                                    @if (!$row->trashed())
                                    <li>
                                        <a href="{{ route('usulankegiatan.edit', array('program' => $row->usulan_program_id_encrypt, 'kegiatan' => $row->usulan_kegiatan_id_encrypt)) }}" class="m-2"> Edit</a>
                                    </li>
                                    <li class="divider"></li>
                                    @endif
                                    <li>
                                        @if ($row->trashed())
                                        <a href="javascript:;" onclick="restore('{{ $row->usulan_kegiatan_id_encrypt }}', '{{ $row->akun->akun_keterangan." penanggung jawab ".$row->usulan_kegiatan_penanggung_jawab }}')" class="m-2" id="btn-restore"> Restore</a>
                                        @else
                                        <a href="javascript:;" onclick="hapus('{{ $row->usulan_kegiatan_id_encrypt }}', '{{ $row->akun->akun_keterangan." penanggung jawab ".$row->usulan_kegiatan_penanggung_jawab }}')" class="m-2" id="btn-del" > Hapus</a>
                                        @endif
                                    </li>
                                    @endrole
                                    @endif
                                </ul>
                            </div>
                        </td>
                    </tr>
                    @php
                        $total += $row->usulan_program_nilai;
                    @endphp
                    @endforeach
                    <tr class="bg-black-transparent-1">
                        <th colspan="5">TOTAL NILAI</th>
                        <th colspan="3" class="text-right">Rp. {{ number_format($total, 2) }}</th>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="text-center">
            <a href="{{ route('usulanprogram') }}" class="btn-inverse btn f-w-700 btn-sm">Kembali ke Data Program</a>
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
                <h4 class="modal-title">Pratinjau Usulan Kegiatan</h4>
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
        $("#modal-detail-form").load("/usulanprogram/kegiatan/detail?id=" + $(this).data("id") + "&jenis=pratinjau");
    });


    function restore(id, ket) {
        Swal.fire({
            title: 'Restore Data',
            text: 'Anda akan mengembalikan data usulan kegiatan ' + ket + '',
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
                    url: "/usulanprogram/kegiatan/restore?id=" + id,
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
            text: 'Anda akan menghapus data usulan kegiatan ' + ket + '',
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
                    url: "/usulanprogram/kegiatan/hapus?id=" + id,
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
