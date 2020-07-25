@extends('pages.datainduk.main')

@section('title', ' | Jembatan')

@push('css')
	<link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
@endpush

@section('page')
    <li class="breadcrumb-item"><a href="javascript:;">Bina Marga</a></li>
	<li class="breadcrumb-item active">Jembatan</li>
@endsection

@section('header')
	<h1 class="page-header">Jembatan</h1>
@endsection

@section('subcontent')
<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
    <!-- begin panel-heading -->
    <div class="panel-heading">
        <div class="row">
            <div class="col-md-2 col-lg-2 col-xl-2 col-xs-12">
                @role('user|super-admin|supervisor')
                <div class="form-inline">
                    <a href="{{ route('jembatan.tambah') }}" class="btn btn-primary">Tambah</a>
                </div>
                @endrole
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-xs-12">
                <form id="frm-cari" action="{{ route('jembatan') }}" method="GET">
                    <div class="form-inline pull-right">
                        <div class="input-group">
                            <input type="text" class="form-control cari" name="cari" placeholder="Pencarian" aria-label="Sizing example input" autocomplete="off" aria-describedby="basic-addon2" value="{{ $cari }}">
                            <div class="input-group-append">
                                <span class="input-group-text" id="basic-addon2"><i class="fas fa-search"></i></span>
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
                        <th class="align-middle" rowspan="3">No.</th>
                        <th class="align-middle" rowspan="3">Nomor Jembatan</th>
                        <th class="align-middle" rowspan="3">Nama Jembatan</th>
                        <th class="align-middle" rowspan="3">Nama Ruas Jalan</th>
                        <th colspan="3" class="text-center">Dimensi</th>
                        <th rowspan="3">&nbsp;</th>
                        <th colspan="8" class="text-center">Tipe/Kondisi</th>
                        <th class="align-middle" rowspan="3">Keterangan</th>
                        <th class="align-middle" rowspan="3">Kabupaten/ Kota</th>
                        <th class="align-middle" rowspan="3" class="width-90"></th>
                    </tr>
                    <tr>                        
                        <th class="align-middle" rowspan="2">Panjang (M)</th>
                        <th class="align-middle" rowspan="2">Lebar (M)</th>
                        <th class="align-middle" rowspan="2">Jumlah Bentang</th>
                        <th class="text-center" colspan="2">Bangunan Atas</th>
                        <th class="text-center" colspan="2">Bangunan Bawah</th>
                        <th class="text-center" colspan="2">Pondasi</th>
                        <th class="text-center" colspan="2">Lantai</th>
                    </tr>
                    <tr>
                        <th>Tipe</th>
                        <th>Kondisi</th>
                        <th>Tipe</th>
                        <th>Kondisi</th>
                        <th>Tipe</th>
                        <th>Kondisi</th>
                        <th>Tipe</th>
                        <th>Kondisi</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($data as $row)
                    <tr>
                        <td class="align-middle width-10">{{ ++$i }}</td>
                        <td class="align-middle">{{ $row->jembatan_nomor }}</td>
                        <td>
                        @if ($row->marker)
                            <a href="#modal-peta" data-toggle="modal" onclick="peta('{{ $row->jalan_id }}')">
                                {{ $row->jembatan_nama }}
                            </a>
                        @else
                        {{ $row->jembatan_nama }}
                        @endif
                        </td>
                        <td>{{ $row->jalan? $row->jalan->jalan_nama: '' }}</td>
                        <td class="align-middle text-right">{{ $row->jembatan_dimensi_panjang != 0? number_format($row->jembatan_dimensi_panjang, 2): "-" }}</td>
                        <td class="align-middle text-right">{{ $row->jembatan_dimensi_lebar != 0? number_format($row->jembatan_dimensi_lebar, 2): "-" }}</td>
                        <td class="align-middle text-right">{{ $row->jembatan_dimensi_bentang != 0? number_format($row->jembatan_dimensi_bentang, 2): "-" }}</td>
                        <td></td>
                        <td class="align-middle">{{ $row->jembatan_bangunan_atas_tipe }}</td>
                        <td class="align-middle text-right">{{ $row->jembatan_bangunan_atas_kondisi != 0? number_format($row->jembatan_bangunan_atas_kondisi, 2): "-" }}</td>
                        <td class="align-middle">{{ $row->jembatan_bangunan_bawah_tipe }}</td>
                        <td class="align-middle text-right">{{ $row->jembatan_bangunan_bawah_kondisi != 0? number_format($row->jembatan_bangunan_bawah_kondisi, 2): "-" }}</td>
                        <td class="align-middle">{{ $row->jembatan_bangunan_pondasi_tipe }}</td>
                        <td class="align-middle text-right">{{ $row->jembatan_bangunan_pondasi_kondisi != 0? number_format($row->jembatan_bangunan_pondasi_kondisi, 2): "-" }}</td>
                        <td class="align-middle">{{ $row->jembatan_bangunan_lantai_tipe }}</td>
                        <td class="align-middle text-right">{{ $row->jembatan_bangunan_lantai_kondisi != 0? number_format($row->jembatan_bangunan_lantai_kondisi, 2): "-" }}</td>
                        <td class="align-middle">{{ $row->jembatan_keterangan }}</td>
                        <td>{{ $row->kabupaten_kota? $row->kabupaten_kota->kabupaten_kota_nama: '' }}</td>
                        <td class="text-right align-middle">
                            @role('super-admin|supervisor|user')
                            <a href="{{ route('jembatan.edit', ['id' => $row->jembatan_id]) }}" class="m-2"><i class='fad fa-edit fa-lg text-blue-darker'></i></a>
                            <a href="javascript:;" onclick="hapus('{{ $row->jembatan_id }}', '{{ $row->jembatan_nama }}')" class="m-2" id='btn-del' data-toggle="tooltip" title="Hapus Data"><i class='fad fa-trash fa-lg text-red-darker'></i></a>
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
@include('includes.component.modal', ['judul' => 'Peta Lokasi'])
@endsection

@push('scripts')
<script src="{{ url('/public/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
<script>
    $(".cari").change(function() {
         $("#frm-cari").submit();
    });

    function peta(id){
        $("#modal-content").load("{{ url('/jembatan/peta') }}?id=" + id);
    }

    function hapus(id, ket) {
        Swal.fire({
            title: 'Hapus Data',
            text: 'Anda akan menghapus jembatan ' + ket + '',
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
                    url: '{{ url("/jembatan/hapus/") }}/' + id,
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
