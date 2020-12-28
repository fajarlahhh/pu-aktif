@extends('layouts.default')

@section('title', ' | Dashboard')

@push('css')
<link href="{{ url('/public/assets/plugins/leaflet/dist/leaflet.css') }}" rel="stylesheet">
<link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
@endpush

@section('content')
	<!-- begin breadcrumb -->
	<ol class="breadcrumb pull-right">
		<li class="breadcrumb-item"><a href="{{ url('jalan') }}">Home</a></li>
		<li class="breadcrumb-item active">Dashboard</li>
	</ol>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Dashboard</h1>
	<!-- end page-header -->
	<div class="row">
        <div class="col-xs-12">
            <form id="frm-cari" action="{{ route('dashboard') }}" class="form-inline" method="GET">
                <label for="">Data tahun : &nbsp;</label>
                <div class="form-group">
                    <select class="form-control selectpicker cari" name="tahun" data-live-search="true" data-size="5" data-style="btn-info" data-width="100%">
                        @for($thn=2014; $thn <= date('Y') + 5; $thn++)
                        <option value="{{ $thn }}" {{ $tahun == $thn? 'selected': ''}}>{{ $thn }}</option>
                        @endfor
                    </select>
                </div>
            </form>
        </div>
    </div>
    <br>
    <div class="row">
		<div class="col-lg-4 col-md-6">
			<div class="widget widget-stats bg-red">
				<div class="stats-icon"><i class="fad fa-digging"></i></div>
				<div class="stats-info">
					<h4>Pembangunan {{ $tahun }}</h4>
					<p class="f-s-12">Jumlah Infrastruktur : {{ number_format($pembangunan->count())  }}</p>
					<p class="f-s-12">Total Biaya : Rp. {{ number_format($pembangunan->sum('pembangunan_nilai'), 2) }}</p>
                </div>
                <div class="stats-link">
                    <a href="{{ url('/pembangunan')}}">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
                </div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="widget widget-stats bg-primary">
				<div class="stats-icon"><i class="fad fa-tools"></i></div>
				<div class="stats-info">
					<h4>Pemeliharaan {{ $tahun }}</h4>
					<p class="f-s-12">Jumlah Infrastruktur : {{ number_format($pemeliharaan->count())  }}</p>
					<p class="f-s-12">Total Biaya : Rp. {{ number_format($pemeliharaan->sum('pemeliharaan_nilai'), 2) }}</p>
                </div>
                <div class="stats-link">
                    <a href="{{ url('/pemeliharaan')}}">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
                </div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="widget widget-stats bg-success">
				<div class="stats-icon"><i class="fad fa-tools"></i></div>
				<div class="stats-info">
					<h4>Total Biaya {{ $tahun}}</h4>
                    <p class="f-s-24">{{ number_format($pembangunan->sum('pembangunan_nilai') + $pemeliharaan->sum('pemeliharaan_nilai'), 2) }}</p>
                </div>
                <div class="stats-link">
                    <a href="{{ url('/pemeliharaan')}}">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
                </div>
			</div>
		</div>
	</div>
    <div class="row">
        <div class="col-xl-7 col-lg-12 ui-sortable">
            <div id="rekap_biaya_perkabupaten" class="height-300"></div><br>
            <div class="panel panel-inverse" data-sortable-id="index-1">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        Peta Sebaran Infrastruktur
                    </h4>
                </div>
                <div id="map" class="height-300" style="border: 1px solid rgb(204, 204, 204);" tabindex="0"></div>
                <div class="row bg-black m-r-0 m-l-0">
                    <div class="col-xl-4">
                        <h6 class="text-white m-t-2">BINA MARGA</h6>
                        <div class="list-group">
                            <a href="{{ url('jalan') }}" class="list-group-item list-group-item-inverse d-flex justify-content-between align-items-center text-ellipsis">
                                Jalan
                            <span class="badge f-w-500 bg-gradient-{{ $jalan->count() > 0? $jalan->first()->warna: '' }} f-s-10">{{ $jalan->count() }}</span>
                            </a>
                            <a href="{{ url('jembatan') }}" class="list-group-item list-group-item-inverse d-flex justify-content-between align-items-center text-ellipsis">
                                Jembatan
                                <span class="badge f-w-500 bg-{{ $jembatan->count() > 0? $jembatan->first()->warna: '' }}-blue f-s-10">{{ $jembatan->count() }}</span>
                            </a>
                        </div>
                        <br>
                    </div>
                    <div class="col-xl-4">
                        <h6 class="text-white m-t-2">CIPTA KARYA</h6>
                        <div class="list-group">
                            <a href="{{ url('das') }}" class="list-group-item list-group-item-inverse d-flex justify-content-between align-items-center text-ellipsis">
                                Daerah Aliran Sungai
                            <span class="badge f-w-500 bg-gradient-{{ $das->count() > 0? $das->first()->warna: '' }} f-s-10">{{ $das->count() }}</span>
                            </a>
                            <a href="{{ url('drainase') }}" class="list-group-item list-group-item-inverse d-flex justify-content-between align-items-center text-ellipsis">
                                Drainase
                            <span class="badge f-w-500 bg-gradient-{{ $drainase->count() > 0? $drainase->first()->warna: '' }} f-s-10">{{ $drainase->count() }}</span>
                            </a>
                            <a href="{{ url('spam') }}" class="list-group-item list-group-item-inverse d-flex justify-content-between align-items-center text-ellipsis">
                                SPAM
                            <span class="badge f-w-500 bg-gradient-{{ $spam->count() > 0? $spam->first()->warna: '' }} f-s-10">{{ $spam->count() }}</span>
                            </a>
                            <a href="{{ url('sumur') }}" class="list-group-item list-group-item-inverse d-flex justify-content-between align-items-center text-ellipsis">
                                Sumur
                            <span class="badge f-w-500 bg-gradient-{{ $sumur->count() > 0? $sumur->first()->warna: '' }} f-s-10">{{ $sumur->count() }}</span>
                            </a>
                        </div>
                        <br>
                    </div>
                    <div class="col-xl-4">
                        <h6 class="text-white m-t-2">SUMBER DAYA AIR</h6>
                        <div class="list-group">
                            <a href="{{ url('bendungan') }}" class="list-group-item list-group-item-inverse d-flex justify-content-between align-items-center text-ellipsis">
                                Bendungan
                            <span class="badge f-w-500 bg-gradient-{{ $bendungan? $bendungan->first()->warna: '' }} f-s-10">{{ $bendungan->count() }}</span>
                            </a>
                            <a href="{{ url('daerahirigasi') }}" class="list-group-item list-group-item-inverse d-flex justify-content-between align-items-center text-ellipsis">
                                Daerah Irigasi
                            <span class="badge f-w-500 bg-gradient-{{ $di->count() > 0? $di->first()->warna: '' }} f-s-10">{{ $di->count() }}</span>
                            </a>
                            <a href="{{ url('embung') }}" class="list-group-item list-group-item-inverse d-flex justify-content-between align-items-center text-ellipsis">
                                Embung
                            <span class="badge f-w-500 bg-gradient-{{ $embung->count() > 0? $embung->first()->warna: '' }} f-s-10">{{ $embung->count() }}</span>
                            </a>
                            <a href="{{ url('mataair') }}" class="list-group-item list-group-item-inverse d-flex justify-content-between align-items-center text-ellipsis">
                                Mata Air
                            <span class="badge f-w-500 bg-gradient-{{ $mataair->count() > 0? $mataair->first()->warna: '' }} f-s-10">{{ $mataair->count() }}</span>
                            </a>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-5 col-lg-12 ui-sortable">
            <div id="rekap_pembangunan" class="width-full"></div>
            <br>
            <div id="rekap_pemeliharaan" class="width-full"></div>
        </div>
    </div>
@endsection

@push('scripts')
<script src="{{ url('/public/assets/plugins/leaflet/dist/leaflet.js') }}"></script>
	<script src="{{ url('/public/assets/plugins/highcharts/highcharts.js') }}"></script>
	<script src="{{ url('/public/assets/plugins/highcharts/modules/exporting.js') }}"></script>
    <script src="{{ url('/public/assets/plugins/highcharts/modules/export-data.js') }}"></script>
    <script src="{{ url('/public/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
    <script>
        $(".cari").change(function() {
             $("#frm-cari").submit();
        });
        var osmUrl = 'http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',

        osmAttrib = '&copy; <a href="http://openstreetmap.org/copyright">OpenStreetMap</a> contributors',
        osm = L.tileLayer(osmUrl, { maxZoom: 18, attribution: osmAttrib }),
        map = new L.Map('map', { center: new L.LatLng(-8.5783,117.5098), zoom: 8 }),
        drawnItems = L.featureGroup().addTo(map);
        L.control.layers({
            'osm': osm.addTo(map),
            "google": L.tileLayer('http://www.google.cn/maps/vt?lyrs=s@189&gl=cn&x={x}&y={y}&z={z}', {
                attribution: 'google'
            })
        }).addTo(map);

        var point = {!! json_encode($point) !!};
        point.forEach(element => {
            if(element.longitude && element.latitude){
                var marker = L.marker([element.longitude, element.latitude], {
                    icon: L.divIcon({
                        className: '',
                        html : '<div style="font-size: 2em;"><i class="text-' + element.warna + '-darker fa fa-map-marker-alt"></i></div>'
                    })
                }).addTo(map);
                marker.bindPopup('<b>Infrastruktur : </b>' + element.jenis + '<br><b>Nama : </b>' + element.nama);
            }
        });

        Highcharts.chart('rekap_pembangunan', {
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false,
				type: 'pie'
			},
			title: {
				text: 'Porsi Biaya Pembangunan per Infrastruktur tahun {{ $tahun }}'
			},
			tooltip: {
				pointFormat: '<b>Total Biaya : Rp.{point.nilai}<br>{point.percentage:.1f}%</b>'
			},
			plotOptions: {
				pie: {
					size: 240,
					allowPointSelect: true,
					cursor: 'pointer',
				}
			},
			series: [{
				name: 'Pembangunan',
				colorByPints: true,
				data: @php
                        echo json_encode($rekap_pembangunan, JSON_NUMERIC_CHECK)
                    @endphp
			}]
		});

        Highcharts.chart('rekap_pemeliharaan', {
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false,
				type: 'pie'
			},
			title: {
				text: 'Porsi Biaya Pemeliharaan per Infrastruktur tahun {{ $tahun }}'
			},
			tooltip: {
				pointFormat: '<b>Total Biaya : Rp.{point.nilai}<br>{point.percentage:.1f}%</b>'
			},
			plotOptions: {
				pie: {
					size: 240,
					allowPointSelect: true,
					cursor: 'pointer',
				}
			},
			series: [{
				name: 'Pemeliharaan',
				colorByPints: true,
				data: @php
                        echo json_encode($rekap_pemeliharaan, JSON_NUMERIC_CHECK)
                    @endphp
			}]
		});

        Highcharts.chart('rekap_biaya_perkabupaten', {
            chart: {
                type: 'column'
            },
            title: {
                text: 'Porsi Pembiayaan Per Kabupaten tahun {{ $tahun }}'
            },
            accessibility: {
                announceNewData: {
                    enabled: true
                }
            },
            xAxis: {
                type: 'category'
            },
            yAxis: {
                title: {
                    text: 'Total Biaya'
                }

            },
            legend: {
                enabled: false
            },
            plotOptions: {
                series: {
                    borderWidth: 0,
                    dataLabels: {
                        enabled: true,
                        format: '{point.nilai}'
                    }
                }
            },

            tooltip: {
                headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
                pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.nilai}</b><br/>'
            },

            series: [
                {
                    name: "Kabupaten/Kota",
                    colorByPoint: true,
                    data: @php
                        echo json_encode($rekap_biaya_perkabupaten, JSON_NUMERIC_CHECK)
                    @endphp
                }
            ]
        });
    </script>
@endpush
