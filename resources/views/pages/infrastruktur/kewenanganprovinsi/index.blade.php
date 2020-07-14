@extends('pages.datamaster.main')

@section('title', ' | Kewenangan Provinsi')

@push('css')
	<link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
@endpush

@section('page')
	<li class="breadcrumb-item active">Kewenangan Provinsi</li>
@endsection

@section('header')
	<h1 class="page-header">Kewenangan Provinsi</h1>
@endsection

@section('subcontent')
<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
    <!-- begin panel-heading -->
    <div class="panel-heading">
        <div class="row">
            <div class="col-md-2 col-lg-2 col-xl-2 col-xs-12">
                @role('user|super-admin|supervisor')
                <div class="form-inline">
                    <a href="{{ route('kewenanganprovinsi.tambah') }}" class="btn btn-primary">Tambah</a>
                </div>
                @endrole
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-xs-12">
                <form id="frm-cari" action="{{ route('kewenanganprovinsi') }}" method="GET">
                    <div class="form-inline pull-right">
                        <div class="form-group">
                            <select class="form-control selectpicker cari" name="tahun" data-live-search="true" data-size="5" data-style="btn-info" data-width="100%">
                                @for($thn=2015; $thn <= date('Y') + 5; $thn++)
                                <option value="{{ $thn }}" {{ $tahun == $thn? 'selected': ''}}>{{ $thn }}</option>
                                @endfor
                            </select>
                        </div>&nbsp;
                        <div class="form-group">
                            <select class="form-control selectpicker cari" name="infrastruktur" data-live-search="true" data-style="btn-danger" data-width="100%">
                                <option value="semua" {{ $infrastruktur == 'semua'? 'selected': ''}}>Semua Jenis Infrastruktur</option>
                                <option value="Daerah Irigasi" {{ $infrastruktur == 'Daerah Irigasi'? 'selected': ''}}>Daerah Irigasi</option>
                                <option value="Embung" {{ $infrastruktur == 'Embung'? 'selected': ''}}>Embung</option>
                                <option value="Jalan" {{ $infrastruktur == 'Jalan'? 'selected': ''}}>Jalan</option>
                                <option value="Jembatan" {{ $infrastruktur == 'Jembatan'? 'selected': ''}}>Jembatan</option>
                            </select>
                        </div>&nbsp;
                        <div class="form-group">
                            <select class="form-control selectpicker cari" name="dana" data-live-search="true" data-style="btn-success" data-width="100%">
                                <option value="semua" {{ $dana == 'semua'? 'selected': ''}}>Semua Sumber Dana</option>
                                @foreach ($data_sumber_dana as $row)
                                    <option value="{{ $row->sumber_dana_nama }}" {{ $dana == $row->sumber_dana_nama? 'selected': ''}}>{{ $row->sumber_dana_nama }}</option>
                                @endforeach
                            </select>
                        </div>&nbsp;
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
                        <th class="align-middle" rowspan="2">No.</th>
                        <th class="align-middle" rowspan="2">Deskripsi Kegiatan</th>
                        <th colspan="2" class="text-center">Infrastruktur</th>
                        <th class="align-middle" rowspan="2">Tahun</th>
                        <th class="align-middle" rowspan="2">Biaya</th>
                        <th class="align-middle" rowspan="2">Sumber Anggaran</th>
                        <th class="align-middle" rowspan="2">Penanggung Jawab</th>
                        <th class="align-middle" rowspan="2">Keterangan</th>
                        <th class="width-90" rowspan="2"></th>
                    </tr>
                    <tr>
                        <th>Jenis</th>
                        <th>Nama</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($data as $row)
                    <tr>
                        <td class="align-middle width-10">{{ ++$i }}</td>
                        <td class="align-middle">
                        @if ($row->marker)
                            <a href="#modal-peta" data-toggle="modal" onclick="peta('{{ $row->jalan_id }}')">
                                {{ $row->kewenangan_provinsi_deskripsi_kegiatan }}
                            </a>
                        @else
                        {{ $row->kewenangan_provinsi_deskripsi_kegiatan }}
                        @endif
                        </td>
                        <td class="align-middle">{{ $row->kewenangan_provinsi_jenis_infrastruktur }}</td>
                        <td>
                            @switch($row->kewenangan_provinsi_jenis_infrastruktur)
                                @case('Jalan')
                                    {{ $row->jalan->jalan_nama }}
                                    @break
                                @case('Jembatan')
                                    {{ $row->jembatan->jembatan_nama }}
                                    @break
                                @case('Embung')
                                    {{ $row->embung->embung_nama }}
                                    @break
                                @case('Daerah Irigasi')
                                    {{ $row->daerah_irigasi->daerah_irigasi_nama }}
                                    @break
                                    
                            @endswitch
                        </td>
                        <td class="align-middle">{{ $row->kewenangan_provinsi_tahun }}</td>
                        <td class="align-middle text-right">{{ $row->kewenangan_provinsi_nilai != 0? number_format($row->kewenangan_provinsi_nilai, 2): "-" }}</td>
                        <td class="align-middle">{{ $row->sumber_dana_nama }}</td>
                        <td class="align-middle">{{ $row->kewenangan_provinsi_penanggung_jawab }}</td>
                        <td class="align-middle">{{ $row->kewenangan_provinsi_keterangan }}</td>
                        <td class="text-right align-middle">
                            @role('super-admin|supervisor|user')
                            <a href="{{ route('kewenanganprovinsi.edit', ['id' => $row->kewenangan_provinsi_id]) }}" class="m-2"><i class='fad fa-edit fa-lg text-blue-darker'></i></a>
                            <a href="javascript:;" onclick="hapus('{{ $row->kewenangan_provinsi_id }}', '{{ $row->kewenangan_provinsi_deskripsi_kegiatan.' tahun '.$row->kewenangan_provinsi_tahun }}')" class="m-2" id='btn-del' data-toggle="tooltip" title="Hapus Data"><i class='fad fa-trash fa-lg text-red-darker'></i></a>
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
@include('includes.component.modal', ['judul' => 'Peta Lokasi'])
@endsection

@push('scripts')
<script src="{{ url('/public/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
<script>
    $(".cari").change(function() {
         $("#frm-cari").submit();
    });

    function peta(id){
        $("#modal-content").load("{{ url('/kewenanganprovinsi/peta') }}?id=" + id);
    }

    function hapus(id, ket) {
        Swal.fire({
            title: 'Hapus Data',
            text: 'Anda akan menghapus kewenangan provinsi ' + ket + '',
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
                    url: '{{ url("/kewenanganprovinsi/hapus/") }}/' + id,
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
