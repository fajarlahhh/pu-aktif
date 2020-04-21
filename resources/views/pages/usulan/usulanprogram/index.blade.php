@extends('pages.usulan.main')

@section('title', ' | Usulan Program')

@push('css')
	<link href="/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" />
	<link href="/assets/plugins/parsleyjs/src/parsley.css" rel="stylesheet" />
@endpush

@section('page')
	<li class="breadcrumb-item active">Usulan Program</li>
@endsection

@section('header')
	<h1 class="page-header">Usulan <small>Program</small></h1>
@endsection

@section('subcontent')
<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
    <!-- begin panel-heading -->
    <div class="panel-heading">
        <div class="row">
            <div class="col-md-2 col-lg-2 col-xl-2 col-xs-12">
                @role('user|administrator')
                <div class="form-inline">
                    <a href="{{ route('usulanprogram.tambah') }}" class="btn btn-primary"><i class="fad fa-plus"></i> Tambah</a>
                </div>
                @endrole
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-xs-12">
                <form id="frm-cari" action="{{ route('usulanprogram') }}" method="GET">
                    <div class="form-inline pull-right">
                        <div class="form-group">
                            <select class="form-control selectpicker cari" name="bidang" data-live-search="true" data-style="btn-success" data-width="100%">
                                <option value="semua" {{ $bidang == 'semua'? 'selected': '' }}>Semua Bidang</option>
                                @foreach ($data_bidang as $row)
                                <option value="{{ $row->nm_bagian }}" {{ $bidang == $row->nm_bagian? 'selected': '' }}>{{ $row->nm_bagian }}</option>
                                @endforeach
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
                        <th>Program</th>
                        <th>Deskripsi</th>
                        <th>Tujuan/Sasaran</th>
                        <th>Bidang</th>
                        <th>Nilai</th>
                        <th class="width-90"></th>
                    </tr>
                </thead>
                <tbody>
                    @php
                        $total = 0;
                    @endphp
                    @foreach ($data as $index => $row)
                    @php
                        $nilai = $row->kegiatan->map(function ($q) {
                            return [
                                'detail' => $q->detail->sum('usulan_kegiatan_detail_nilai_total'),
                            ];
                        })->sum('detail');
                        $total += $nilai;
                    @endphp
                    <tr>
                        <td class="align-middle">{{ ++$i }}</td>
                        <td class="align-middle">
                            <label data-toggle="tooltip" data-container="body" data-placement="left" data-html="true" data-placement="top" title="{{ $row->pegawai->nm_pegawai.", ".$row->updated_at }}">{{ $row->akun->akun_kode }} {{ $row->akun->akun_keterangan }}</label>
                        </td>
                        <td class="align-middle">{{ $row->usulan_program_deskripsi }}</td>
                        <td class="align-middle">{{ $row->usulan_program_tujuan }}</td>
                        <td class="align-middle">{{ $row->usulan_program_bidang }}</td>
                        <td class="align-middle text-right">Rp. {{ number_format($nilai, 2) }}</td>
                        <td class="with-btn-group align-middle" nowrap>
                            <div class="btn-group">
                                <a href="{{ $row->trashed()? 'javascript:;': route('usulankegiatan', array('program' => $row->usulan_program_id_encrypt)) }}" class="btn btn-default btn-sm">Kegiatan</a>
                                <a href="#" class="btn btn-default btn-sm dropdown-toggle width-30 no-caret" data-toggle="dropdown">
                                    <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu pull-right">
                                    <li>
                                        <a href="javascript:;" class="m-2 btn-preview" data-toggle="modal" data-target="#modal-detail" class="btn-preview" data-id="{{ $row->usulan_program_id_encrypt }}"> Preview</a>
                                    </li>
                                    @if ($periode_aktif->contains($row->periode_tahun))
                                    @role('administrator|supervisor|user')
                                    @if (!$row->trashed())
                                    <li>
                                        <a href="{{ route('usulanprogram.edit', array('id' => $row->usulan_program_id_encrypt)) }}" class="m-2"> Edit</a>
                                    </li>
                                    <li class="divider"></li>
                                    @endif
                                    <li>
                                        @if ($row->trashed())
                                        <a href="javascript:;" onclick="restore('{{ $row->usulan_program_id_encrypt }}', '{{ $row->akun->akun_keterangan." tahun ".$row->periode_tahun." bidang ".$row->usulan_program_bidang }}')" class="m-2" id="btn-restore"> Restore</a>
                                        @else
                                        <a href="javascript:;" onclick="hapus('{{ $row->usulan_program_id_encrypt }}', '{{ $row->akun->akun_keterangan." tahun ".$row->periode_tahun." bidang ".$row->usulan_program_bidang }}')" class="m-2" id="btn-del" > Hapus</a>
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
                <h4 class="modal-title">Pratinjau Usulan Program</h4>
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
        $("#modal-detail-form").load("/usulanprogram/detail?id=" + $(this).data("id") + "&jenis=pratinjau");
    });

    function restore(id, ket) {
        Swal.fire({
            title: 'Restore Data',
            text: 'Anda akan mengembalikan data usulan program ' + ket,
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
                    url: "/usulanprogram/restore?id=" + id,
                    type: "POST",
                    data: {
                        "_method": 'PATCH'
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
            text: 'Anda akan menghapus data usulan program ' + ket + '',
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
                    url: "/usulanprogram/hapus?id=" + id,
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
