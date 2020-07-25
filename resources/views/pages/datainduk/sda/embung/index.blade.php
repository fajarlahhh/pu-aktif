@extends('pages.datainduk.main')

@section('title', ' | Embung')

@push('css')
	<link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
@endpush

@section('page')
    <li class="breadcrumb-item"><a href="javascript:;">SDA</a></li>
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
                        <th class="align-middle" rowspan="2">No.</th>
                        <th class="align-middle" rowspan="2">Nama Embung</th>
                        <th class="align-middle" rowspan="2">Tahun Pembuatan</th>
                        <th class="align-middle" rowspan="2">Biaya Pembuatan</th>
                        <th colspan="7" class="text-center">Data Teknik</th>
                        <th class="align-middle" rowspan="2"></th>
                        <th colspan="4" class="text-center">Fungsi</th>
                        <th class="align-middle" rowspan="2">Keterangan</th>
                        <th colspan="3" class="text-center">Lokasi</th>
                        <th class="width-90" rowspan="2"></th>
                    </tr>
                    <tr>
                        <th>CA (KM<sup>2</sup>)</th>
                        <th>Luas Genangan (Ha)</th>
                        <th>Tipe Konstruksi</th>
                        <th>Volume (m<sup>3</sup>)</th>
                        <th>L (m)</th>
                        <th>H (m)</th>
                        <th>Lebar Spillway (m)</th>
                        <th>Irigasi (Ha)</th>
                        <th>Ternak (Ekor)</th>
                        <th>Air Baku (KK)</th>
                        <th>PLTM (KVA)</th>
                        <th>Kelurahan/Desa</th>
                        <th>Kecamatan</th>
                        <th>Kabupaten/Kota</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($data as $row)
                    <tr>
                        <td class="align-middle width-10">{{ ++$i }}</td>
                        <td class="align-middle">
                        @if ($row->marker)
                            <a href="#modal-peta" data-toggle="modal" onclick="peta('{{ $row->jalan_id }}')">
                                {{ $row->embung_nama }}
                            </a>
                        @else
                        {{ $row->embung_nama }}
                        @endif
                        </td>
                        <td class="align-middle">{{ $row->embung_tahun_pembuatan }}</td>
                        <td class="align-middle text-right">{{ $row->embung_biaya_pembuatan != 0? number_format($row->embung_biaya_pembuatan, 2): "-" }}</td>
                        <td class="align-middle text-right">{{ $row->embung_data_teknik_ca_km != 0? number_format($row->embung_data_teknik_ca_km): "-" }}</td>
                        <td class="align-middle text-right">{{ $row->embung_data_teknik_luasan_genangan != 0? number_format($row->embung_data_teknik_luasan_genangan): "-" }}</td>
                        <td class="align-middle">{{ $row->embung_data_teknik_tipe_konstruksi }}</td>
                        <td class="align-middle text-right">{{ $row->embung_data_teknik_volume != 0? number_format($row->embung_data_teknik_volume): "-" }}</td>
                        <td class="align-middle text-right">{{ $row->embung_data_teknik_l != 0? number_format($row->embung_data_teknik_l): "-" }}</td>
                        <td class="align-middle text-right">{{ $row->embung_data_teknik_h != 0? number_format($row->embung_data_teknik_h): "-" }}</td>
                        <td class="align-middle text-right">{{ $row->embung_data_teknik_lebar_spillway != 0? number_format($row->embung_data_teknik_lebar_spillway): "-" }}</td>
                        <td class="align-middle width-10"></td>
                        <td class="align-middle text-right">{{ $row->embung_fungsi_irigasi != 0? number_format($row->embung_fungsi_irigasi): "-" }}</td>
                        <td class="align-middle text-right">{{ $row->embung_fungsi_ternak != 0? number_format($row->embung_fungsi_ternak): "-" }}</td>
                        <td class="align-middle text-right">{{ $row->embung_fungsi_air_baku != 0? number_format($row->embung_fungsi_air_baku): "-" }}</td>
                        <td class="align-middle text-right">{{ $row->embung_fungsi_pltm != 0? number_format($row->embung_fungsi_pltm): "-" }}</td>
                        <td class="align-middle">{{ $row->embung_keterangan }}</td>
                        <td class="align-middle">{{ $row->kelurahan_desa? $row->kelurahan_desa->kelurahan_desa_nama: '' }}</td>
                        <td class="align-middle">{{ $row->kelurahan_desa? $row->kelurahan_desa->kecamatan->kecamatan_nama: '' }}</td>
                        <td class="align-middle">{{ $row->kelurahan_desa? $row->kelurahan_desa->kecamatan->kabupaten_kota->kabupaten_kota_nama: '' }}</td>
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
        $("#modal-content").load("{{ url('/embung/peta') }}?id=" + id);
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
