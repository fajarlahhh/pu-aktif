@extends('pages.isda.main')

@section('title', ' | Embung')

@push('css')
	<link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
@endpush

@section('page')
	<li class="breadcrumb-item active">Embung</li>
@endsection

@section('header')
	<h1 class="page-header">Embung</h1>
@endsection

@section('subcontent')
<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
    <!-- begin panel-heading -->
    <div class="panel-heading">
        <div class="row">
            <div class="col-md-2 col-lg-2 col-xl-2 col-xs-12">
                @role('user|super-admin|supervisor')
                <div class="form-inline">
                    <a href="{{ route('embung.tambah') }}" class="btn btn-primary">Tambah</a>
                </div>
                @endrole
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-xs-12">
                <form id="frm-cari" action="{{ route('embung') }}" method="GET">
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
                        <th>No.</th>
                        <th>Nama Embung</th>
                        <th>Tahun Pembuatan</th>
                        <th>Keterangan</th>
                        <th>Kelas</th>
                        <th>Lokasi</th>
                        <th class="width-90"></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($data as $row)
                    <tr>
                        <td class="align-middle width-10">{{ ++$i }}</td>
                        <td class="align-middle">{{ $row->embung_nama }}</td>
                        <td class="align-middle">{{ $row->embung_tahun_pembuatan }}</td>
                        <td class="align-middle">{{ $row->embung_keterangan }}</td>
                        <td class="align-middle">{{ $row->embung_kelas }}</td>
                        <td class="align-middle">
                            @if ($row->koordinat)
                            <a href="#modal-peta" data-toggle="modal" onclick="peta('{{ $row->koordinat->getLng() }}', '{{ $row->koordinat->getLat() }}')">{{ $row->kelurahan_desa->kelurahan_desa_nama.", ".$row->kelurahan_desa->kecamatan->kecamatan_nama.", ".$row->kelurahan_desa->kecamatan->kabupaten_kota->kabupaten_kota_nama }}</a>
                            @else
                            {{ $row->kelurahan_desa->kelurahan_desa_nama.", ".$row->kelurahan_desa->kecamatan->kecamatan_nama.", ".$row->kelurahan_desa->kecamatan->kabupaten_kota->kabupaten_kota_nama }}
                            @endif
                        </td>
                        <td class="text-right align-middle">
                            @role('super-admin|supervisor|user')
                            <a href="{{ route('embung.edit', ['id' => $row->embung_id]) }}" class="m-2"><i class='fad fa-edit fa-lg text-blue-darker'></i></a>
                            <a href="javascript:;" onclick="hapus('{{ $row->embung_id }}', '{{ $row->embung_nama }}')" class="m-2" id='btn-del' data-toggle="tooltip" title="Hapus Data"><i class='fad fa-trash fa-lg text-red-darker'></i></a>
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
        </div>
        <div class="col-md-6 col-lg-2 col-xl-2 col-xs-12">
            <label class="pull-right">Jumlah Data : </label>
        </div>
        This page took {{ (microtime(true) - LARAVEL_START) }} seconds to render
    </div>
</div>
@include('includes.component.modal', ['judul' => 'Peta Lokasi'])
@endsection

@push('scripts')
<script src="{{ url('/public/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
<script>
    $(".cari").change(function() {
         $("#frm-cari").submit();
    });
    function peta(long, lat){
        $("#modal-content").load("{{ url('/peta/lokasi') }}?long=" + long + "&lat=" + lat);
        $.getScript("{{ url('/public/assets/plugins/leaflet/dist/leaflet.js') }}");
    }

    function hapus(id, ket) {
        Swal.fire({
            title: 'Hapus Data',
            text: 'Anda akan menghapus embung ' + ket + '',
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
                    url: '{{ url("/embung/hapus/") }}/' + id,
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
