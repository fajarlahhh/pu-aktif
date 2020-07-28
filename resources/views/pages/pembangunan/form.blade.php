@extends('pages.main')

@section('title', ' | Tambah Pembangunan')

@push('css')
	<link href="{{ url('/public/assets/plugins/parsleyjs/src/parsley.css') }}" rel="stylesheet" />
	<link href="{{ url('/public/assets/plugins/select2/dist/css/select2.min.css') }}" rel="stylesheet" />
    <link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
	<link href="{{ url('/public/assets/plugins/smartwizard/dist/css/smart_wizard.css') }}" rel="stylesheet" />
@endpush

@section('page')
	<li class="breadcrumb-item">Pembangunan</li>
	<li class="breadcrumb-item active">Tambah Data</li>
@endsection

@section('header')
	<h1 class="page-header">Pembangunan <small>Tambah Data</small></h1>
@endsection

@section('subcontent')
<div id="wizard">
    <ul>
        <li class="col-md-3 col-sm-4 col-6">
            <a href="#step-1">
                <span class="number">1</span>
                <span class="info text-ellipsis">
                    Detail Pembangunan
                    <small class="text-ellipsis">Uraian, Tahun, Nilai, Penanggung Jawab</small>
                </span>
            </a>
        </li>
        <li class="col-md-3 col-sm-4 col-6">
            <a href="#step-2">
                <span class="number">2</span>
                <span class="info text-ellipsis">
                    Detail Infrastruktur
                    <small class="text-ellipsis">Data Teknis, Lokasi</small>
                </span>
            </a>
        </li>
    </ul>
    <div>
        @switch($step)
            @case(0)
                @include('pages.pembangunan.satu')
                @break
            @case(1)
                @include('pages.pembangunan.dua')
                @break
            @default
        @endswitch
    </div>
</div>
@include('includes.error')
@endsection

@push('scripts')
    <script src="{{ url('/public/assets/plugins/parsleyjs/dist/parsley.js') }}"></script>
    <script src="{{ url('/public/assets/plugins/autonumeric/autonumeric.js') }}"></script>
    <script src="{{ url('/public/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
	<script src="{{ url('/public/assets/plugins/select2/dist/js/select2.min.js') }}"></script>
	<script src="{{ url('/public/assets/plugins/smartwizard/dist/js/jquery.smartWizard.js') }}"></script>
    <script>
        $('#wizard').smartWizard({
            selected: '{{ $step }}',
            theme: 'default',
            transitionEffect:'',
            transitionSpeed: 0,
            useURLhash: false,
            showStepURLhash: false,
            keyNavigation:false,
            autoAdjustHeight:true,
            cycleSteps: false,
            backButtonSupport: false,
            toolbarSettings: {
                toolbarPosition: 'bottom',
                showNextButton: false,
                showPreviousButton: false,
                toolbarExtraButtons: [
                    $('<a></a>').text('Back').addClass('btn btn-grey').on('click', function(){
                        window.history.back();
                    }),
                    $('<a></a>').text('{{ $step == 1? 'Simpan': 'Next' }}').addClass('btn btn-success').on('click', function(){
                        $('form[name="step"]').submit();
                    })
                ]
            },
            anchorSettings: {
                anchorClickable: false, // Enable/Disable anchor navigation
                enableAllAnchors: false, // Activates all anchors clickable all times
                markDoneStep: true, // add done css
                enableAnchorOnDoneStep: true // Enable/Disable the done steps navigation
            },
        });
    </script>
@endpush
