@extends('pages.laporan.main')

@section('title', ' | Rekap Per Infrastruktur')

@push('css')
	<link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
@endpush

@section('page')
	<li class="breadcrumb-item active">Rekap Per Infrastruktur</li>
@endsection

@section('header')
	<h1 class="page-header">Rekap Per Infrastruktur</h1>
@endsection

@section('subcontent')
<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
    <!-- begin panel-heading -->
    <div class="panel-heading">
        <div class="row">
            <div class="col-md-2 col-lg-2 col-xl-2 col-xs-12">
                @role('user|super-admin|supervisor')
                <div class="form-inline">
                    <a href="{{ route('rekapperkabupatenkota.cetak', [ 'tahun' => $tahun, 'jenis' => $jenis, 'dana' => $dana, 'infrastruktur' => $infrastruktur ]) }}" target="_blank" class="btn btn-warning">Cetak</a>
                </div>
                @endrole
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-xs-12">
                <form id="frm-cari" action="{{ route('rekapperkabupatenkota') }}" method="GET">
                    <div class="form-inline pull-right">
                        <div class="form-group">
                            <select class="form-control selectpicker cari" name="tahun" data-live-search="true" data-size="5" data-style="btn-info" data-width="100%">
                                @for($thn=2014; $thn <= date('Y') + 5; $thn++)
                                <option value="{{ $thn }}" {{ $tahun == $thn? 'selected': ''}}>{{ $thn }}</option>
                                @endfor
                            </select>
                        </div>&nbsp;
                        <div class="form-group">
                            <select class="form-control selectpicker cari" name="jenis" data-live-search="true" data-style="btn-warning" data-width="100%">
                                <option value="semua" {{ $jenis == 'semua'? 'selected': ''}}>Semua Jenis Pembangunan</option>
                                <option value="Kewenangan Provinsi" {{ $jenis == 'Kewenangan Provinsi'? 'selected': ''}}>Kewenangan Provinsi</option>
                                <option value="Pokir" {{ $jenis == 'Pokir'? 'selected': ''}}>POKIR</option>
                            </select>
                        </div>&nbsp;
                        <div class="form-group">
                            <select class="form-control selectpicker cari" name="dana" data-live-search="true" data-style="btn-success" data-width="100%">
                                <option value="semua" {{ $dana == 'semua'? 'selected': ''}}>Semua Sumber Dana</option>
                                @foreach ($sumber_dana as $row)
                                    <option value="{{ $row->sumber_dana_id }}" {{ $dana == $row->sumber_dana_id? 'selected': ''}}>{{ $row->sumber_dana_nama }}</option>
                                @endforeach
                            </select>
                        </div>&nbsp;
                        <div class="form-group">
                            <select class="form-control selectpicker cari" name="infrastruktur" data-live-search="true" data-style="btn-primary" data-width="100%">
                                <option value="semua" {{ $infrastruktur == 'semua'? 'selected': ''}}>Semua Infrastruktur</option>
                                <option value="Jalan" {{ $infrastruktur == 'Jalan'? 'selected': ''}}>Jalan</option>
                                <option value="Jembatan" {{ $infrastruktur == 'Jembatan'? 'selected': ''}}>Jembatan</option>
                                <option value="DAS" {{ $infrastruktur == 'DAS'? 'selected': ''}}>Daerah Aliran Sungai</option>
                                <option value="Drainase" {{ $infrastruktur == 'Drainase'? 'selected': ''}}>Drainase</option>
                                <option value="SPAM" {{ $infrastruktur == 'SPAM'? 'selected': ''}}>SPAM</option>
                                <option value="Sumur" {{ $infrastruktur == 'Sumur'? 'selected': ''}}>Sumur</option>
                                <option value="Bendungan" {{ $infrastruktur == 'Bendungan'? 'selected': ''}}>Bendungan</option>
                                <option value="Daerah Irigasi" {{ $infrastruktur == 'Daerah Irigasi'? 'selected': ''}}>Daerah Irigasi</option>
                                <option value="Embung" {{ $infrastruktur == 'Embung'? 'selected': ''}}>Embung</option>
                                <option value="Mata Air" {{ $infrastruktur == 'Mata Air'? 'selected': ''}}>Mata Air</option>
                            </select>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="panel-body">
        <div class="table-responsive">
            <table class="table table-hover table-bordered">
                <thead>
                    <tr>
                        <th class="align-middle" rowspan="2">No.</th>
                        <th class="align-middle" rowspan="2">Kegiatan</th>
                        @foreach ($kabupaten_kota as $row)
                        <th class="align-middle text-center" colspan="2">{{ $row->kabupaten_kota_nama }}</th>
                        @endforeach
                        <th class="align-middle text-center" colspan="2">Total</th>
                    </tr>
                    <tr>
                        @foreach ($kabupaten_kota as $row)
                        <th>Jumlah</th>
                        <th>Biaya</th>
                        @endforeach
                        <th>Jumlah</th>
                        <th>Biaya</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="align-middle">1</td>
                        <td class="align-middle">Pembangunan</td>
                        @foreach ($laporan_pembangunan as $row)
                        <td class="align-middle text-right">{{ number_format($row['jumlah']) }}</td>
                        <td class="align-middle text-right">{{ number_format($row['nilai']) }}</td>
                        @endforeach
                        <td class="align-middle text-right">{{ number_format($laporan_pembangunan->sum('jumlah')) }}</td>
                        <td class="align-middle text-right">{{ number_format($laporan_pembangunan->sum('nilai')) }}</td>
                    </tr>
                    <tr>
                        <td class="align-middle">2</td>
                        <td class="align-middle">Pemeliharaan</td>
                        @foreach ($laporan_pemeliharaan as $row)
                        <td class="align-middle text-right">{{ number_format($row['jumlah']) }}</td>
                        <td class="align-middle text-right">{{ number_format($row['nilai']) }}</td>
                        @endforeach
                        <td class="align-middle text-right">{{ number_format($laporan_pemeliharaan->sum('jumlah')) }}</td>
                        <td class="align-middle text-right">{{ number_format($laporan_pemeliharaan->sum('nilai')) }}</td>
                    </tr>
                    <tr>
                        <td class="align-middle" colspan="2">TOTAL</td>
                        @php
                            $i = 0;
                        @endphp
                        @foreach ($kabupaten_kota as $row)
                        <td class="align-middle text-right">{{ number_format($laporan_pembangunan{$i}['jumlah'] + $laporan_pemeliharaan{$i}['jumlah']) }}</td>
                        <td class="align-middle text-right">{{ number_format($laporan_pembangunan{$i}['nilai'] + $laporan_pemeliharaan{$i}['nilai']) }}</td>
                        @php
                            $i++;
                        @endphp
                        @endforeach
                        <td class="align-middle text-right">{{ number_format($laporan_pembangunan->sum('jumlah') + $laporan_pemeliharaan->sum('jumlah')) }}</td>
                        <td class="align-middle text-right">{{ number_format($laporan_pembangunan->sum('nilai') + $laporan_pemeliharaan->sum('nilai')) }}</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="panel-footer form-inline">
        This page took {{ (microtime(true) - LARAVEL_START) }} seconds to render
    </div>
</div>
@endsection

@push('scripts')
<script src="{{ url('/public/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
<script>
    $(".cari").change(function() {
         $("#frm-cari").submit();
    });
</script>
@endpush
