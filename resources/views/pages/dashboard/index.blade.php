@extends('layouts.default')

@section('title', ' | Dashboard')

@section('content')
	<!-- begin breadcrumb -->
	<ol class="breadcrumb pull-right">
		<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
		<li class="breadcrumb-item active">Dashboard</li>
	</ol>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Dashboard</h1>
	<!-- end page-header -->
	<div class="row">
		<div class="col-lg-6 col-md-6">
			<div class="widget widget-stats bg-red">
				<div class="stats-icon"><i class="fad fa-digging"></i></div>
				<div class="stats-info">
					<h4>Pembangunan {{ date ('Y')}}</h4>
					<p class="f-s-12">Jumlah Infrastruktur : {{ number_format($pembangunan->sum('infrastruktur_jumlah'))  }}</p>
					<p class="f-s-12">Total Biaya : Rp. {{ number_format($pembangunan->sum('pembangunan_nilai'), 2) }}</p>
                </div>
                <div class="stats-link">
                    <a href="{{ url('/pembangunan')}}">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
                </div>
			</div>
		</div>
		<div class="col-lg-6 col-md-6">
			<div class="widget widget-stats bg-success">
				<div class="stats-icon"><i class="fad fa-tools"></i></div>
				<div class="stats-info">
					<h4>Pemeliharaan {{ date ('Y')}}</h4>
					<p class="f-s-12">Jumlah Infrastruktur : {{ number_format($pemeliharaan->sum('infrastruktur_jumlah'))  }}</p>
					<p class="f-s-12">Total Biaya : Rp. {{ number_format($pemeliharaan->sum('pemeliharaan_nilai'), 2) }}</p>
                </div>
                <div class="stats-link">
                    <a href="{{ url('/pemeliharaan')}}">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
                </div>
			</div>
		</div>
	</div>
    <div class="row">
        <div class="col-lg-7 ui-sortable">
            <div class="panel panel-inverse" data-sortable-id="index-1">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        Visitors Origin
                    </h4>
                </div>
                @include('includes.component.leaflet', [ 'y' => 300, 'preview' => 1 ])
                <div class="list-group">
                    <a href="javascript:;" class="list-group-item list-group-item-inverse d-flex justify-content-between align-items-center text-ellipsis">
                        1. United State
                        <span class="badge f-w-500 bg-gradient-teal f-s-10">20.95%</span>
                    </a>
                    <a href="javascript:;" class="list-group-item list-group-item-inverse d-flex justify-content-between align-items-center text-ellipsis">
                        2. India
                        <span class="badge f-w-500 bg-gradient-blue f-s-10">16.12%</span>
                    </a>
                    <a href="javascript:;" class="list-group-item list-group-item-inverse d-flex justify-content-between align-items-center text-ellipsis">
                        3. Mongolia
                        <span class="badge f-w-500 bg-gradient-grey f-s-10">14.99%</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="col-lg-5 ui-sortable">
            <div class="panel bg-red-transparent-3">
                <div class="panel-body">
                    <div id="rekap_pembangunan" class="width-full"></div>
                </div>
            </div>
            <div class="panel bg-green-transparent-3">
                <div class="panel-body">
                    <div id="daerahirigasi" class="width-full"></div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('scripts')
	<script src="{{ url('/public/assets/plugins/highcharts/highcharts.js') }}"></script>
	<script src="{{ url('/public/assets/plugins/highcharts/modules/exporting.js') }}"></script>
    <script src="{{ url('/public/assets/plugins/highcharts/modules/export-data.js') }}"></script>
    <script>
        Highcharts.chart('rekap_pembangunan', {
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false,
				type: 'pie'
			},
			title: {
				text: 'Porsi Biaya Pembangunan per Infrastruktur'
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

        Highcharts.chart('daerahirigasi', {
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false,
				type: 'pie'
			},
			title: {
				text: 'Porsi Biaya Pemeliharaan per Infrastruktur'
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
    </script>
@endpush
