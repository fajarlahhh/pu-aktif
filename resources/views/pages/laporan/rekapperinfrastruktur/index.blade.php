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
                    <a href="{{ route('rekapperinfrastruktur.cetak', [ 'tahun' => $tahun, 'dana' => $dana, 'wilayah' => $wilayah ]) }}" target="_blank" class="btn btn-warning">Cetak</a>
                </div>
                @endrole
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-xs-12">
                <form id="frm-cari" action="{{ route('rekapperinfrastruktur') }}" method="GET">
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
                                @foreach ($sumber_dana as $row)
                                    <option value="{{ $row->sumber_dana_id }}" {{ $dana == $row->sumber_dana_id? 'selected': ''}}>{{ $row->sumber_dana_nama }}</option>
                                @endforeach
                            </select>
                        </div>&nbsp;
                        <div class="form-group">
                            <select class="form-control selectpicker cari" name="wilayah" data-live-search="true" data-style="btn-primary" data-width="100%">
                                <option value="semua" {{ $wilayah == 'semua'? 'selected': ''}}>Semua Kabupaten/Kota</option>
                                @foreach ($kabupaten_kota as $row)
                                    <option value="{{ $row->kabupaten_kota_id }}" {{ $wilayah == $row->kabupaten_kota_id? 'selected': ''}}>{{ $row->kabupaten_kota_nama }}</option>
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
            <table class="table table-hover table-bordered">
                <thead>
                    <tr>
                        <th class="align-middle" rowspan="2">No.</th>
                        <th class="align-middle" rowspan="2">Kegiatan</th>
                        @foreach ($infrastruktur as $row)
                        <th class="align-middle text-center" colspan="2">{{ $row }}</th>
                        @endforeach
                        <th class="align-middle text-center" colspan="2">Total</th>
                    </tr>
                    <tr>
                        @foreach ($infrastruktur as $row)
                        <th>Jumlah</th>
                        <th>Biaya</th>
                        @endforeach
                        <th>Jumlah</th>
                        <th>Biaya</th>
                    </tr>
                </thead>
                <tbody>
                    @php
                        $jumlah_jalan = 0;
                        $nilai_jalan = 0;
                        $jumlah_jembatan = 0;
                        $nilai_jembatan = 0;
                        $jumlah_das = 0;
                        $nilai_das = 0;
                        $jumlah_drainase = 0;
                        $nilai_drainase = 0;
                        $jumlah_spam = 0;
                        $nilai_spam = 0;
                        $jumlah_sumur = 0;
                        $nilai_sumur = 0;
                        $jumlah_bendungan = 0;
                        $nilai_bendungan = 0;
                        $jumlah_daerahirigasi = 0;
                        $nilai_daerahirigasi = 0;
                        $jumlah_embung = 0;
                        $nilai_embung = 0;
                        $jumlah_mataair = 0;
                        $nilai_mataair = 0;
                    @endphp
                    <tr>
                        <td class="align-middle">1</td>
                        <td class="align-middle">Pembangunan</td>
                        @foreach ($laporan_pembangunan as $row)
                        <td class="align-middle text-right">{{ number_format($row['jumlah']) }}</td>
                        <td class="align-middle text-right">{{ number_format($row['nilai']) }}</td>
                        @php
                        switch ($row['infrastruktur']) {
                            case 'Jalan' :
                                $jumlah_jalan += $row['jumlah'];
                                $nilai_jalan += $row['nilai'];
                            break;
                            case 'Jembatan' :
                                $jumlah_jembatan += $row['jumlah'];
                                $nilai_jembatan += $row['nilai'];
                            break;
                            case 'DAS' :
                                $jumlah_das += $row['jumlah'];
                                $nilai_das += $row['nilai'];
                            break;
                            case 'Drainase' :
                                $jumlah_drainase += $row['jumlah'];
                                $nilai_drainase += $row['nilai'];
                            break;
                            case 'SPAM' :
                                $jumlah_spam += $row['jumlah'];
                                $nilai_spam += $row['nilai'];
                            break;
                            case 'Sumur' :
                                $jumlah_sumur += $row['jumlah'];
                                $nilai_sumur += $row['nilai'];
                            break;
                            case 'Bendungan' :
                                $jumlah_bendungan += $row['jumlah'];
                                $nilai_bendungan += $row['nilai'];
                            break;
                            case 'Daerah Irigasi' :
                                $jumlah_daerahirigasi += $row['jumlah'];
                                $nilai_daerahirigasi += $row['nilai'];
                            break;
                            case 'Embung' :
                                $jumlah_embung += $row['jumlah'];
                                $nilai_embung += $row['nilai'];
                            break;
                            case 'Mata Air' :
                                $jumlah_mataair += $row['jumlah'];
                                $nilai_mataair += $row['nilai'];
                            break;
                        }
                        @endphp
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
                        @php
                        switch ($row['infrastruktur']) {
                            case 'Jalan' :
                                $jumlah_jalan += $row['jumlah'];
                                $nilai_jalan += $row['nilai'];
                            break;
                            case 'Jembatan' :
                                $jumlah_jembatan += $row['jumlah'];
                                $nilai_jembatan += $row['nilai'];
                            break;
                            case 'DAS' :
                                $jumlah_das += $row['jumlah'];
                                $nilai_das += $row['nilai'];
                            break;
                            case 'Drainase' :
                                $jumlah_drainase += $row['jumlah'];
                                $nilai_drainase += $row['nilai'];
                            break;
                            case 'SPAM' :
                                $jumlah_spam += $row['jumlah'];
                                $nilai_spam += $row['nilai'];
                            break;
                            case 'Sumur' :
                                $jumlah_sumur += $row['jumlah'];
                                $nilai_sumur += $row['nilai'];
                            break;
                            case 'Bendungan' :
                                $jumlah_bendungan += $row['jumlah'];
                                $nilai_bendungan += $row['nilai'];
                            break;
                            case 'Daerah Irigasi' :
                                $jumlah_daerahirigasi += $row['jumlah'];
                                $nilai_daerahirigasi += $row['nilai'];
                            break;
                            case 'Embung' :
                                $jumlah_embung += $row['jumlah'];
                                $nilai_embung += $row['nilai'];
                            break;
                            case 'Mata Air' :
                                $jumlah_mataair += $row['jumlah'];
                                $nilai_mataair += $row['nilai'];
                            break;
                        }
                        @endphp
                        @endforeach
                        <td class="align-middle text-right">{{ number_format($laporan_pemeliharaan->sum('jumlah')) }}</td>
                        <td class="align-middle text-right">{{ number_format($laporan_pemeliharaan->sum('nilai')) }}</td>
                    </tr>
                    <tr>
                        <td class="align-middle" colspan="2">TOTAL</td>
                        <td class="align-middle text-right">{{ number_format($jumlah_jalan) }}</td>
                        <td class="align-middle text-right">{{ number_format($nilai_jalan) }}</td>
                        <td class="align-middle text-right">{{ number_format($jumlah_jembatan) }}</td>
                        <td class="align-middle text-right">{{ number_format($nilai_jembatan) }}</td>
                        <td class="align-middle text-right">{{ number_format($jumlah_das) }}</td>
                        <td class="align-middle text-right">{{ number_format($nilai_das) }}</td>
                        <td class="align-middle text-right">{{ number_format($jumlah_drainase) }}</td>
                        <td class="align-middle text-right">{{ number_format($nilai_drainase) }}</td>
                        <td class="align-middle text-right">{{ number_format($jumlah_spam) }}</td>
                        <td class="align-middle text-right">{{ number_format($nilai_spam) }}</td>
                        <td class="align-middle text-right">{{ number_format($jumlah_sumur) }}</td>
                        <td class="align-middle text-right">{{ number_format($nilai_sumur) }}</td>
                        <td class="align-middle text-right">{{ number_format($jumlah_bendungan) }}</td>
                        <td class="align-middle text-right">{{ number_format($nilai_bendungan) }}</td>
                        <td class="align-middle text-right">{{ number_format($jumlah_daerahirigasi) }}</td>
                        <td class="align-middle text-right">{{ number_format($nilai_daerahirigasi) }}</td>
                        <td class="align-middle text-right">{{ number_format($jumlah_embung) }}</td>
                        <td class="align-middle text-right">{{ number_format($nilai_embung) }}</td>
                        <td class="align-middle text-right">{{ number_format($jumlah_mataair) }}</td>
                        <td class="align-middle text-right">{{ number_format($nilai_mataair) }}</td>
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
