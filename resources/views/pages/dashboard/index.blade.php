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
		<div class="col-lg-3 col-md-6">
			<div class="widget widget-stats bg-red">
				<div class="stats-icon"><i class="fad fa-road"></i></div>
				<div class="stats-info">
					<h4>Data Jalan per {{ date ('Y')}}</h4>
					<p class="f-s-16">{{ $jalan }}</p>
                </div>
                <div class="stats-link">
                    <a href="{{ url('/jalan')}}">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
                </div>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="widget widget-stats bg-green">
				<div class="stats-icon"><i class="fad fa-archway"></i></div>
				<div class="stats-info">
					<h4>Data Jembatan per {{ date ('Y')}}</h4>
					<p class="f-s-16">{{ $jembatan }}</p>
                </div>
                <div class="stats-link">
                    <a href="{{ url('/jembatan') }}">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
                </div>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="widget widget-stats bg-warning">
				<div class="stats-icon"><i class="fad fa-house-flood"></i></div>
				<div class="stats-info">
					<h4>Data Embung per {{ date ('Y')}}</h4>
					<p class="f-s-16">{{ collect($embung)->sum('y') }}</p>
                </div>
                <div class="stats-link">
                    <a href="{{ url('/embung') }}">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
                </div>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="widget widget-stats bg-blue">
				<div class="stats-icon"><i class="fad fa-globe-asia"></i></div>
				<div class="stats-info">
					<h4>Data Daerah Irigasi per {{ date ('Y')}}</h4>
					<p class="f-s-16">{{ collect($daerahirigasi)->sum('y') }}</p>
                </div>
                <div class="stats-link">
                    <a href="{{ url('/daerahirigasi') }}">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
                </div>
			</div>
		</div>
	</div>
    <div class="row">
        <div class="col-lg-6 ui-sortable">
            <div class="panel bg-yellow-transparent-3">
                <div class="panel-body">
                    <div id="embung" class="width-full"></div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 ui-sortable">
            <div class="panel bg-blue-transparent-3">
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
        Highcharts.chart('embung', {
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false,
				type: 'pie'
			},
			title: {
				text: 'Porsi Data Embung per Kabupaten/Kota'
			},
			tooltip: {
				pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
			},
			plotOptions: {
				pie: {
					size: 240,
					allowPointSelect: true,
					cursor: 'pointer',
				}
			},
			series: [{
				name: 'Embung',
				colorByPints: true,
				data: @php
                        echo json_encode($embung, JSON_NUMERIC_CHECK)
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
				text: 'Porsi Data Daerah Irigasi per Kabupaten/Kota'
			},
			tooltip: {
				pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
			},
			plotOptions: {
				pie: {
					size: 240,
					allowPointSelect: true,
					cursor: 'pointer',
				}
			},
			series: [{
				name: 'DaerahIrigasi',
				colorByPints: true,
				data: @php
                        echo json_encode($daerahirigasi, JSON_NUMERIC_CHECK)
                    @endphp
			}]
		});
    </script>
@endpush
