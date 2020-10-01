@extends('pages.main')

@section('title', ' | Pemeliharaan')

@push('css')
	<link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
@endpush

@section('page')
	<li class="breadcrumb-item active">Pemeliharaan</li>
@endsection

@section('header')
	<h1 class="page-header">Pemeliharaan</h1>
@endsection

@section('subcontent')
<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
    <!-- begin panel-heading -->
    <div class="panel-heading">
        <div class="row">
            <div class="col-md-2 col-lg-2 col-xl-2 col-xs-12">
                @role('user|super-admin|supervisor')
                <div class="form-inline">
                    <a href="{{ route('pemeliharaan.tambah') }}" class="btn btn-primary">Tambah</a>
                </div>
                @endrole
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-xs-12">
                <form id="frm-cari" action="{{ route('pemeliharaan') }}" method="GET">
                    <div class="form-inline pull-right">
                        <div class="form-group">
                            <select class="form-control selectpicker cari" name="tahun" data-live-search="true" data-size="5" data-style="btn-info" data-width="100%">
                                @for($thn=2015; $thn <= date('Y') + 5; $thn++)
                                <option value="{{ $thn }}" {{ $tahun == $thn? 'selected': ''}}>{{ $thn }}</option>
                                @endfor
                            </select>
                        </div>&nbsp;
                        <div class="form-group">
                            <select class="form-control selectpicker cari" name="pemeliharaan" data-live-search="true" data-style="btn-warning" data-width="100%">
                                <option value="semua" {{ $pemeliharaan == 'semua'? 'selected': ''}}>Semua Jenis Pemeliharaan</option>
                                <option value="Kewenangan Provinsi" {{ $pemeliharaan == 'Kewenangan Provinsi'? 'selected': ''}}>Kewenangan Provinsi</option>
                                <option value="Pokir" {{ $pemeliharaan == 'Pokir'? 'selected': ''}}>POKIR</option>
                            </select>
                        </div>&nbsp;
                        <div class="form-group">
                            <select class="form-control selectpicker cari" name="infrastruktur" data-live-search="true" data-style="btn-danger" data-width="100%">
                                <option value="semua" {{ $infrastruktur == 'semua'? 'selected': ''}}>Semua Infrastruktur</option>
                                <option value="Jalan" {{ $infrastruktur == 'Jalan'? 'selected': ''}}>Bina Marga - Jalan</option>
                                <option value="Jembatan" {{ $infrastruktur == 'Jembatan'? 'selected': ''}}>Bina Marga - Jembatan</option>
                                <option value="DAS" {{ $infrastruktur == 'DAS'? 'selected': ''}}>Cipta Karya - Daerah Aliran Sungai</option>
                                <option value="Drainase" {{ $infrastruktur == 'Drainase'? 'selected': ''}}>Cipta Karya - Drainase</option>
                                <option value="SPAM" {{ $infrastruktur == 'SPAM'? 'selected': ''}}>Cipta Karya - SPAM</option>
                                <option value="Sumur" {{ $infrastruktur == 'Sumur'? 'selected': ''}}>Cipta Karya - Sumur</option>
                                <option value="Bendungan" {{ $infrastruktur == 'Bendungan'? 'selected': ''}}>SDA - Bendungan</option>
                                <option value="Daerah Irigasi" {{ $infrastruktur == 'Daerah Irigasi'? 'selected': ''}}>SDA - Daerah Irigasi</option>
                                <option value="Embung" {{ $infrastruktur == 'Embung'? 'selected': ''}}>SDA - Embung</option>
                                <option value="Mata Air" {{ $infrastruktur == 'Mata Air'? 'selected': ''}}>SDA - Mata Air</option>
                            </select>
                        </div>&nbsp;
                        <div class="form-group">
                            <select class="form-control selectpicker cari" name="dana" data-live-search="true" data-style="btn-success" data-width="100%">
                                <option value="semua" {{ $dana == 'semua'? 'selected': ''}}>Semua Sumber Dana</option>
                                @foreach ($data_sumber_dana as $row)
                                    <option value="{{ $row->sumber_dana_id }}" {{ $dana == $row->sumber_dana_id? 'selected': ''}}>{{ $row->sumber_dana_nama }}</option>
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
                        <th class="align-middle" rowspan="2">Uraian</th>
                        <th colspan="2" class="text-center">Infrastruktur</th>
                        <th class="align-middle" rowspan="2">Tahun</th>
                        <th class="align-middle" rowspan="2">Biaya</th>
                        <th class="align-middle" rowspan="2">Jenis Pemeliharaan</th>
                        <th class="align-middle" rowspan="2">Sumber Anggaran</th>
                        <th class="align-middle" rowspan="2">Penanggung Jawab</th>
                        <th colspan="3" class="text-center">Lokasi</th>
                        <th class="width-90" rowspan="2"></th>
                    </tr>
                    <tr>
                        <th>Jenis</th>
                        <th>Nama</th>
                        <th>Kelurahan/Desa</th>
                        <th>Kecamatan</th>
                        <th>Kabupaten/Kota</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($data as $row)
                    @php
                    $infrastruktur_nama = '';
                        $link = $row->pemeliharaan_uraian;
                    @endphp
                    @if ($row->infrastruktur_id)
                    @switch ($row->infrastruktur_jenis)
                        @case ('Jalan')
                            @php
                                $infrastruktur_nama =  $row->jalan->jalan_nama;
                                $link = $row->jalan->marker? "<a href='#modal-peta' data-toggle='modal' onclick='peta(\"".$row->infrastruktur_jenis."\",".$row->infrastruktur_id.")'>".$row->pemeliharaan_uraian."</a>": $row->pemeliharaan_uraian;
                            @endphp
                        @break
                        @case ('Jembatan')
                            @php
                                $infrastruktur_nama =  $row->jembatan->jembatan_nama;
                                $link = $row->jembatan->marker? "<a href='#modal-peta' data-toggle='modal' onclick='peta(\"".$row->infrastruktur_jenis."\",".$row->infrastruktur_id.")'>".$row->pemeliharaan_uraian."</a>": $row->pemeliharaan_uraian;
                            @endphp
                        @break
                        @case ('DAS')
                            @php
                                $infrastruktur_nama =  $row->das->das_nama;
                                $link = $row->das->marker? "<a href='#modal-peta' data-toggle='modal' onclick='peta(\"".$row->infrastruktur_jenis."\",".$row->infrastruktur_id.")'>".$row->pemeliharaan_uraian."</a>": $row->pemeliharaan_uraian;
                            @endphp
                        @break
                        @case ('Drainase')
                            @php
                                $infrastruktur_nama =  $row->drainase->drainase_nama;
                                $link = $row->drainase->marker? "<a href='#modal-peta' data-toggle='modal' onclick='peta(\"".$row->infrastruktur_jenis."\",".$row->infrastruktur_id.")'>".$row->pemeliharaan_uraian."</a>": $row->pemeliharaan_uraian;
                            @endphp
                        @break
                        @case ('SPAM')
                            @php
                                $infrastruktur_nama =  $row->spam->spam_nama_unit;
                                $link = $row->spam->marker? "<a href='#modal-peta' data-toggle='modal' onclick='peta(\"".$row->infrastruktur_jenis."\",".$row->infrastruktur_id.")'>".$row->pemeliharaan_uraian."</a>": $row->pemeliharaan_uraian;
                            @endphp
                        @break
                        @case ('Sumur')
                            @php
                                $infrastruktur_nama =  $row->sumur->sumur_kode;
                                $link = $row->sumur->marker? "<a href='#modal-peta' data-toggle='modal' onclick='peta(\"".$row->infrastruktur_jenis."\",".$row->infrastruktur_id.")'>".$row->pemeliharaan_uraian."</a>": $row->pemeliharaan_uraian;
                            @endphp
                        @break
                        @case ('Bendungan')
                            @php
                                $infrastruktur_nama =  $row->bendungan->bendungan_nama;
                                $link = $row->bendungan->marker? "<a href='#modal-peta' data-toggle='modal' onclick='peta(\"".$row->infrastruktur_jenis."\",".$row->infrastruktur_id.")'>".$row->pemeliharaan_uraian."</a>": $row->pemeliharaan_uraian;
                            @endphp
                        @break
                        @case ('Daerah Irigasi')
                            @php
                                $infrastruktur_nama =  $row->daerah_irigasi->daerah_irigasi_nama;
                                $link = $row->daerah_irigasi->marker? "<a href='#modal-peta' data-toggle='modal' onclick='peta(\"".$row->infrastruktur_jenis."\",".$row->infrastruktur_id.")'>".$row->pemeliharaan_uraian."</a>": $row->pemeliharaan_uraian;
                            @endphp
                        @break
                        @case ('Embung')
                            @php
                                $infrastruktur_nama =  $row->embung->embung_nama;
                                $link = $row->embung->marker? "<a href='#modal-peta' data-toggle='modal' onclick='peta(\"".$row->infrastruktur_jenis."\",".$row->infrastruktur_id.")'>".$row->pemeliharaan_uraian."</a>": $row->pemeliharaan_uraian;
                            @endphp
                        @break
                        @case ('Mata Air')
                            @php
                                $infrastruktur_nama =  $row->mata_air->mata_air_nama;
                                $link = $row->mata_air->marker? "<a href='#modal-peta' data-toggle='modal' onclick='peta(\"".$row->infrastruktur_jenis."\",".$row->infrastruktur_id.")'>".$row->pemeliharaan_uraian."</a>": $row->pemeliharaan_uraian;
                            @endphp
                        @break
                    @endswitch
                    @endif
                    <tr>
                        <td class="align-middle width-10">{{ ++$i }}</td>
                        <td class="align-middle">{!! $link !!}</td>
                        <td class="align-middle">{{ $row->infrastruktur_jenis }}</td>
                        <td class="align-middle">{{ $infrastruktur_nama }}</td>
                        <td class="align-middle">{{ $row->pemeliharaan_tahun }}</td>
                        <td class="align-middle text-right">{{ $row->pemeliharaan_nilai != 0? number_format($row->pemeliharaan_nilai, 2): "-" }}</td>
                        <td class="align-middle">{{ $row->pemeliharaan_jenis }}</td>
                        <td class="align-middle">{{ $row->sumber_dana->sumber_dana_nama }}</td>
                        <td class="align-middle">{{ $row->pemeliharaan_penanggung_jawab }}</td>
                        <td class="align-middle">{{ $row->kelurahan_desa_id? $row->kelurahan_desa->kelurahan_desa_nama: '' }}</td>
                        <td class="align-middle">{{ $row->kecamatan_id? $row->kecamatan->kecamatan_nama: '' }}</td>
                        <td class="align-middle">{{ $row->kabupaten_kota_id? $row->kabupaten_kota->kabupaten_kota_nama: '' }}</td>
                        <td class="text-right align-middle">
                            @role('super-admin|supervisor|user')
                            <a href="javascript:;" onclick="hapus('{{ $row->pemeliharaan_id }}', '{{ $row->pemeliharaan_uraian.' '.strtolower($row->infrastruktur_jenis).' '.$infrastruktur_nama.' tahun '.$row->pemeliharaan_tahun }}')" class="m-2" id='btn-del' data-toggle="tooltip" title="Hapus Data"><i class='fad fa-trash fa-lg text-red-darker'></i></a>
                            @endrole
                        </td>
                    </tr>
                    @endforeach
                    <tr class="bg-grey-transparent-2">
                        <th colspan="11">
                            TOTAL
                        </th>
                        <th colspan="12" class="text-right">
                            {{ number_format($data->sum('pemeliharaan_nilai') ) }}
                        </th>
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
@include('includes.component.modal', ['judul' => 'Peta Lokasi'])
@endsection

@push('scripts')
<script src="{{ url('/public/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
<script>
    $(".cari").change(function() {
         $("#frm-cari").submit();
    });

    function peta(tipe, id){
        switch (tipe) {
            case 'Jalan' :
                $("#modal-content").load("{{ url('/jalan/peta') }}?id=" + id);
            break;
            case 'Jembatan' :
                $("#modal-content").load("{{ url('/jembatan/peta') }}?id=" + id);
            break;
            case 'DAS' :
                $("#modal-content").load("{{ url('/das/peta') }}?id=" + id);
            break;
            case 'Drainase' :
                $("#modal-content").load("{{ url('/drainase/peta') }}?id=" + id);
            break;
            case 'SPAM' :
                $("#modal-content").load("{{ url('/spam/peta') }}?id=" + id);
            break;
            case 'Sumur' :
                $("#modal-content").load("{{ url('/sumur/peta') }}?id=" + id);
            break;
            case 'Bendungan' :
                $("#modal-content").load("{{ url('/bendungan/peta') }}?id=" + id);
            break;
            case 'Daerah Irigasi' :
                $("#modal-content").load("{{ url('/daerahirigasi/peta') }}?id=" + id);
            break;
            case 'Embung' :
                $("#modal-content").load("{{ url('/embung/peta') }}?id=" + id);
            break;
            case 'Mata Air' :
                $("#modal-content").load("{{ url('/mataair/peta') }}?id=" + id);
            break;
        }
    }

    function hapus(id, ket) {
        Swal.fire({
            title: 'Hapus Data',
            text: 'Anda akan menghapus pemeliharaan ' + ket,
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
                    url: '{{ url("/pemeliharaan/hapus/") }}/' + id,
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
