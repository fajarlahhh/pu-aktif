@extends('pages.infrastruktur.main')

@section('title', ' | Jalan')

@push('css')
	<link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
@endpush

@section('page')
	<li class="breadcrumb-item active">Jalan</li>
@endsection

@section('header')
	<h1 class="page-header">Jalan</h1>
@endsection

@section('subcontent')
<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
    <!-- begin panel-heading -->
    <div class="panel-heading">
        <div class="row">
            <div class="col-md-2 col-lg-2 col-xl-2 col-xs-12">
                @role('user|super-admin|supervisor')
                <div class="form-inline">
                    <a href="{{ route('jalan.tambah') }}" class="btn btn-primary">Tambah</a>
                </div>
                @endrole
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-xs-12">
                <form id="frm-cari" action="{{ route('jalan') }}" method="GET">
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
                        <th rowspan="2">No.</th>
                        <th colspan="4" class="text-center">Nomor Ruas</th>
                        <th rowspan="2">Nama Jalan</th>
                        <th rowspan="2">Tahun Pembuatan</th>
                        <th rowspan="2">Biaya Pembuatan</th>
                        <th rowspan="2">Keterangan</th>
                        <th rowspan="2">Kelas</th>
                        <th rowspan="2">Lokasi</th>
                        <th rowspan="2" class="width-90"></th>
                    </tr>
                    <tr>
                        <th colspan="2">Lama</th>
                        <th colspan="2">Baru</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($data as $row)
                    <tr>
                        <td class="align-middle width-10">{{ ++$i }}</td>
                        <td class="align-middle">{{ $row->jalan_ruas_lama }}</td>
                        <td class="align-middle">{{ $row->jalan_subruas_lama }}</td>
                        <td class="align-middle">{{ $row->jalan_ruas_baru }}</td>
                        <td class="align-middle">{{ $row->jalan_subruas_baru }}</td>
                        <td class="align-middle">{{ $row->jalan_nama }}</td>
                        <td class="align-middle">{{ $row->jalan_tahun_pembuatan }}</td>
                        <td class="align-middle text-right">{{ number_format($row->jalan_biaya_pembuatan, 2) }}</td>
                        <td class="align-middle">{{ $row->jalan_keterangan }}</td>
                        <td class="align-middle">{{ $row->jalan_kelas }}</td>
                        <td class="align-middle">
                        @if ($row->marker)
                            <a href="#modal-peta" data-toggle="modal" onclick="peta('{{ $row->jalan_id }}')">
                                @if ($row->kelurahan_desa)
                                {{ $row->kelurahan_desa->kelurahan_desa_nama.", ".$row->kelurahan_desa->kecamatan->kecamatan_nama.", ".$row->kelurahan_desa->kecamatan->kabupaten_kota->kabupaten_kota_nama }}
                                @else
                                Peta
                                @endif
                            </a>
                        @else
                            @if ($row->kelurahan_desa)
                            {{ $row->kelurahan_desa->kelurahan_desa_nama.", ".$row->kelurahan_desa->kecamatan->kecamatan_nama.", ".$row->kelurahan_desa->kecamatan->kabupaten_kota->kabupaten_kota_nama }}
                            @endif
                        @endif
                        </td>
                        <td class="text-right align-middle">
                            @role('super-admin|supervisor|user')
                            <a href="{{ route('jalan.edit', ['id' => $row->jalan_id]) }}" class="m-2"><i class='fad fa-edit fa-lg text-blue-darker'></i></a>
                            <a href="javascript:;" onclick="hapus('{{ $row->jalan_id }}', '{{ $row->jalan_nama }}')" class="m-2" id='btn-del' data-toggle="tooltip" title="Hapus Data"><i class='fad fa-trash fa-lg text-red-darker'></i></a>
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
        $("#modal-content").load("{{ url('/jalan/peta') }}?id=" + id);
    }

    function hapus(id, ket) {
        Swal.fire({
            title: 'Hapus Data',
            text: 'Anda akan menghapus jalan ' + ket + '',
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
                    url: '{{ url("/jalan/hapus/") }}/' + id,
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
