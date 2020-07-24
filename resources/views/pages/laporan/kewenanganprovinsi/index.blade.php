
@extends('pages.infrastruktur.main')

@section('title', ' | Aspirasi Masyarakat')

@push('css')
	<link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
@endpush

@section('page')
	<li class="breadcrumb-item active">Aspirasi Masyarakat</li>
@endsection

@section('header')
	<h1 class="page-header">Aspirasi Masyarakat</h1>
@endsection

@section('subcontent')
<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
    <!-- begin panel-heading -->
    <div class="panel-heading">
        <div class="row">
            <div class="col-md-2 col-lg-2 col-xl-2 col-xs-12">
                @role('user|super-admin|supervisor')
                <div class="form-inline">
                    <a href="{{ route('laporankewenanganprovinsi.cetak', [ 'tahun' => $tahun, 'dana' => $dana ]) }}" target="_blank" class="btn btn-warning">Cetak</a>
                </div>
                @endrole
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-xs-12">
                <form id="frm-cari" action="{{ route('laporankewenanganprovinsi') }}" method="GET">
                    <div class="form-inline pull-right">
                        <div class="form-group">
                            <select class="form-control selectpicker cari" name="tahun" data-live-search="true" data-size="5" data-style="btn-info" data-width="100%">
                                @for($thn=2015; $thn <= date('Y') + 5; $thn++)
                                <option value="{{ $thn }}" {{ $tahun == $thn? 'selected': ''}}>{{ $thn }}</option>
                                @endfor
                            </select>
                        </div>&nbsp;
                        <div class="form-group">
                            <select class="form-control selectpicker cari" name="dana" data-live-search="true" data-style="btn-success" data-width="100%">
                                <option value="semua" {{ $dana == 'semua'? 'selected': ''}}>Semua Sumber Dana</option>
                                @foreach ($data_sumber_dana as $row)
                                    <option value="{{ $row->sumber_dana_nama }}" {{ $dana == $row->sumber_dana_nama? 'selected': ''}}>{{ $row->sumber_dana_nama }}</option>
                                @endforeach
                            </select>
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
                        <th>Infrastruktur</th>
                        <th>Jumlah</th>
                        <th>Biaya</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($laporan as $row)
                    <tr>
                        <td class="align-middle width-10">{{ ++$i }}</td>
                        <td class="align-middle">{{ $row->kewenangan_provinsi_jenis_infrastruktur }}</td>
                        <td class="align-middle text-right">{{number_format($row->jumlah) }}</td>
                        <td class="align-middle text-right">{{ $row->nilai != 0? number_format($row['nilai'], 2): "-" }}</td>
                    </tr>
                    @php
                    $total_infrastruktur += $row->jumlah;
                    $total_biaya += $row->nilai;
                    @endphp
                    @endforeach
                    <tr>
                        <th class="align-middle" colspan="2">Total</th>
                        <th class="align-middle text-right">{{ number_format($total_infrastruktur) }}</th>
                        <th class="align-middle text-right">{{ $total_biaya != 0? number_format($total_biaya, 2): "-" }}</th>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="panel-footer form-inline">
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

    function peta(id){
        $("#modal-content").load("{{ url('/aspirasimasyarakat/peta') }}?id=" + id);
    }

    function hapus(id, ket) {
        Swal.fire({
            title: 'Hapus Data',
            text: 'Anda akan menghapus aspirasimasyarakat ' + ket + '',
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
                    url: '{{ url("/aspirasimasyarakat/hapus/") }}/' + id,
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
