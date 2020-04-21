@extends('pages.usulan.main')

@section('title', ' | '.$aksi.' Usulan')

@push('css')
	<link href="/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" />
	<link href="/assets/plugins/parsleyjs/src/parsley.css" rel="stylesheet" />
	<link href="/assets/plugins/smartwizard/dist/css/smart_wizard.css" rel="stylesheet" />
@endpush

@section('page')
    <li class="breadcrumb-item active">Usulan <small>Pendapatan Air</small></li>
	<li class="breadcrumb-item active">{{ $aksi }} Data</li>
@endsection

@section('header')
    <h1 class="page-header">Usulan <small>Pendapatan Air <small>{{ $aksi }} Data</small></small></h1>
@endsection

@section('subcontent')
@if ($aksi == 'Tambah')
<div id="wizard">
    <ul>
        <li class="col-md-3 col-sm-4 col-6">
            <a href="#step-1">
                <span class="number">1</span>
                <span class="info text-ellipsis">
                    Pencarian Data
                    <small class="text-ellipsis">Tahun, Wilayah, Akun, Golongan</small>
                </span>
            </a>
        </li>
        <li class="col-md-3 col-sm-4 col-6">
            <a href="#step-2">
                <span class="number">2</span>
                <span class="info text-ellipsis">
                    Jumlah Pelanggan
                    <small class="text-ellipsis">Pelanggan s/d Akhir Periode</small>
                </span>
            </a>
        </li>
        <li class="col-md-3 col-sm-4 col-6">
            <a href="#step-3">
                <span class="number">3</span>
                <span class="info text-ellipsis">
                    Rata-rata Harga Air
                    <small class="text-ellipsis">Rata-rata Harga Air/m<sup>3</sup></small>
                </span>
            </a>
        </li>
        <li class="col-md-3 col-sm-4 col-6">
            <a href="#step-4">
                <span class="number">4</span>
                <span class="info text-ellipsis">
                    Hasil
                    <small class="text-ellipsis">Pembagian Target Per Bulan</small>
                </span>
            </a>
        </li>
    </ul>
    <div>
        @switch($step)
            @case(0)
                @include('pages.usulan.usulanpendapatanair.satu')
                @break
            @case(1)
                @include('pages.usulan.usulanpendapatanair.dua')
                @break
            @case(2)
                @include('pages.usulan.usulanpendapatanair.tiga')
                @break
            @case(3)
                @include('pages.usulan.usulanpendapatanair.empat')
                @break
            @default
        @endswitch
    </div>
</div>
@else
<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
    <!-- begin panel-heading -->
    <div class="panel-heading">
        <div class="panel-heading-btn">
            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
        </div>
        <h4 class="panel-title"><i class="far fa-file-alt"></i> Form</h4>
    </div>
    <form action="{{ route('usulanpendapatanair.edit') }}" name="step" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
        @method('PUT')
        @csrf
        <input type="hidden" name="ID" value="{{ $data->usulan_pendapatan_air_id }}" required/>
        <input type="hidden" name="redirect" value="{{ $back }}">
        <div class="panel-body">
            <div class="form-group">
                <label class="control-label">Tahun</label>
                <select class="form-control selectpicker" name="periode_tahun" data-live-search="true" data-style="btn-warning" data-width="100%">
                    @foreach ($periode as $row)
                    @php
                        $selected = '';
                        if(old('periode_tahun')){
                            $selected =  old('periode_tahun') == $row? 'selected': '';
                        }else{
                            if($aksi == 'Edit')
                                $selected =  $data->periode_tahun == $row? 'selected': '';
                        }
                    @endphp
                    <option value="{{ $row }}" {{ $selected }}>{{ $row }}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label class="control-label">Wilayah</label>
                <input type="text" class="form-control" name="wilayah_nama" value="{{ $data->wilayah_nama }}" autocomplete="off" required readonly/>
            </div>
            <div class="form-group">
                <label class="control-label">Akun</label>
                <select class="form-control selectpicker" name="akun_kode" id="akun_kode" data-size="5" data-live-search="true" data-style="btn-primary" data-width="100%" required>
                    @foreach($pendapatan as $row)
                    @php
                        $selected = '';
                        if(old('akun_kode')){
                            $selected =  old('akun_kode') == $row->akun_kode? 'selected': '';
                        }else{
                            if($aksi == 'Edit')
                                $selected =  $data->akun_kode == $row->akun_kode? 'selected': '';
                        }
                    @endphp
                    <option value="{{ $row->akun_kode }}" {{ $selected }}>{{ $row->akun_keterangan }}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label class="control-label">Golongan</label>
                <input type="text" class="form-control" name="golongan_keterangan" value="{{ $data->golongan_id }} - {{ $data->golongan->golongan_nama }}" autocomplete="off" required readonly/>
                <input type="hidden" name="golongan_id" value="{{ $data->golongan_id }}" required/>
            </div>
            <div class="form-group">
                <label class="control-label">Keterangan</label>
                <textarea class="form-control" rows="3" name="usulan_pendapatan_air_keterangan">{{ old('usulan_pendapatan_air_keterangan')?  old('usulan_pendapatan_air_keterangan'): $data->usulan_pendapatan_air_keterangan }}</textarea>
            </div>
            <div class="table-responsive">
                <table class="table table-hover" style="min-width: 1200px">
                    <thead>
                        <tr>
                            <th class="f-s-11">Bulan</th>
                            <th class="width-100 f-s-11">Sambungan Aktif Awal Bulan</th>
                            <th class="width-100 f-s-11">Rekening Baru</th>
                            <th class="width-100 f-s-11">Sambungan Pasif</th>
                            <th class="width-100">Sambung Kembali</th>
                            <th class="width-100 f-s-11">Sambungan Aktif Akhir Bulan</th>
                            <th class="width-100 f-s-11">Rata-rata Konsumsi /Pelanggan (m<sup>3</sup>)</th>
                            <th class="width-200 f-s-11">Jumlah Air Terjual (m<sup>3</sup>)</th>
                            <th class="width-200 f-s-11">Rata-rata Harga Air/m<sup>3</sup> (Rp.)</th>
                            <th class="width-200 f-s-11">Rencana Penjualan Air (Rp.)</th>
                        </tr>
                    </thead>
                    <tbody>
                        @for ($i = 0; $i < count($bulan); $i++)
                        @php
                        $jumlah_sambung_baru = $data->periode[$i]->usulan_pendapatan_air_periode_jumlah_pelanggan;
                        @endphp
                        <tr>
                            <td>
                                <label class="m-t-10 f-s-11">{{ $bulan[$i] }}</label>
                            </td>
                            <td>
                                <div class="form-group m-b-0">
                                    <input class="form-control integer text-right f-s-11 total" type="text" id="usulan_pendapatan_air_periode_jumlah_pelanggan{{ $i }}" name="usulan_pendapatan_air_periode_jumlah_pelanggan[]" value="{{ $data->periode[$i]->usulan_pendapatan_air_periode_jumlah_pelanggan }}" autocomplete="off" required />
                                </div>
                            </td>
                            <td>
                                <div class="form-group m-b-0">
                                    <input class="form-control integer text-right f-s-11 total" type="text" id="usulan_pendapatan_air_periode_sambung_baru{{ $i }}" name="usulan_pendapatan_air_periode_sambung_baru[]" value="{{ $data->periode[$i]->usulan_pendapatan_air_periode_sambung_baru }}" autocomplete="off" />
                                </div>
                            </td>
                            <td>
                                <div class="form-group m-b-0">
                                    <input class="form-control integer text-right f-s-11 total" type="text" id="usulan_pendapatan_air_periode_sambung_pasif{{ $i }}" name="usulan_pendapatan_air_periode_sambung_pasif[]" value="{{ $data->periode[$i]->usulan_pendapatan_air_periode_sambung_pasif }}" onchange="set_pasif({{ $i }})" onkeyup="set_pasif({{ $i }})" autocomplete="off" />
                                </div>
                            </td>
                            <td>
                                <div class="form-group m-b-0">
                                    <input class="form-control integer text-right f-s-11 total" type="text" id="usulan_pendapatan_air_periode_sambung_kembali{{ $i }}" name="usulan_pendapatan_air_periode_sambung_kembali[]" value="{{ $data->periode[$i]->usulan_pendapatan_air_periode_sambung_kembali }}" onchange="set_sambung_kembali({{ $i }})" onkeyup="set_sambung_kembali({{ $i }})" autocomplete="off" />
                                </div>
                            </td>
                            <td>
                                <div class="form-group m-b-0">
                                    <input class="form-control integer text-right f-s-11" type="text" id="usulan_pendapatan_air_periode_sambung_aktif_akhir_bulan{{ $i }}" name="usulan_pendapatan_air_periode_sambung_aktif_akhir_bulan[]" value="{{ $data->periode[$i]->usulan_pendapatan_air_periode_sambung_aktif_akhir_bulan }}" autocomplete="off" readonly required/>
                                </div>
                            </td>
                            <td>
                                <div class="form-group m-b-0">
                                    <input class="form-control decimal text-right f-s-11 total" type="text" id="usulan_pendapatan_air_periode_rata_konsumsi{{ $i }}" name="usulan_pendapatan_air_periode_rata_konsumsi[]" value="{{ $data->periode[$i]->usulan_pendapatan_air_periode_rata_konsumsi }}" autocomplete="off" onchange="set_rata_konsumsi({{ $i }})" onkeyup="set_rata_konsumsi({{ $i }})" required/>
                                </div>
                            </td>
                            <td>
                                <div class="form-group m-b-0">
                                    <input class="form-control decimal text-right f-s-11" type="text" id="usulan_pendapatan_air_periode_jumlah_terjual{{ $i }}" name="usulan_pendapatan_air_periode_jumlah_terjual[]" value="{{ $data->periode[$i]->usulan_pendapatan_air_periode_jumlah_terjual }}" autocomplete="off" readonly required/>
                                </div>
                            </td>
                            <td>
                                <div class="form-group m-b-0">
                                    <input class="form-control decimal text-right f-s-11 total" type="text" id="usulan_pendapatan_air_periode_rata_harga_air{{ $i }}" name="usulan_pendapatan_air_periode_rata_harga_air[]" onchange="set_rata_harga_air({{ $i }})" onkeyup="set_rata_harga_air({{ $i }})" value="{{ $data->periode[$i]->usulan_pendapatan_air_periode_rata_harga_air }}" autocomplete="off" required/>
                                </div>
                            </td>
                            <td>
                                <div class="form-group m-b-0">
                                    <input class="form-control decimal text-right f-s-11" type="text" id="usulan_pendapatan_air_periode_rencana_penjualan{{ $i }}" name="usulan_pendapatan_air_periode_rencana_penjualan[]" value="{{ $data->periode[$i]->usulan_pendapatan_air_periode_rencana_penjualan }}" autocomplete="off" readonly required/>
                                </div>
                            </td>
                        </tr>
                        @php
                            $sambung_baru += $jumlah_sambung_baru;
                            $sambung_pasif += 0;
                            $sambung_kembali += 0;
                            $jumlah_terjual += $data->periode[$i]->usulan_pendapatan_air_periode_rata_konsumsi * $data->periode[$i]->usulan_pendapatan_air_periode_jumlah_pelanggan;
                            $rencana_penjualan += $data->periode[$i]->usulan_pendapatan_air_periode_rata_konsumsi * $data->periode[$i]->usulan_pendapatan_air_periode_jumlah_pelanggan * $data->periode[$i]->usulan_pendapatan_air_periode_rata_harga_air;
                        @endphp
                        @endfor
                    </tbody>
                    <tfoot>
                        <tr>
                            <td>
                                <label class="m-t-10">JUMLAH</label>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                <div class="form-group m-b-0">
                                    <input class="form-control f-w-700 integer f-s-11 text-right" type="text" id="usulan_pendapatan_air_sambung_baru" value="{{ $sambung_baru }}" autocomplete="off" readonly required/>
                                </div>
                            </td>
                            <td>
                                <div class="form-group m-b-0">
                                    <input class="form-control f-w-700 integer f-s-11 text-right" type="text" id="usulan_pendapatan_air_sambung_pasif" value="{{ $sambung_pasif }}" autocomplete="off" readonly required/>
                                </div>
                            </td>
                            <td>
                                <div class="form-group m-b-0">
                                    <input class="form-control f-w-700 integer f-s-11 text-right" type="text" id="usulan_pendapatan_air_sambung_kembali" value="{{ $sambung_kembali }}" autocomplete="off" readonly required/>
                                </div>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                <div class="form-group m-b-0">
                                    <input class="form-control f-w-700 decimal f-s-11 text-right" type="text" id="usulan_pendapatan_air_jumlah_terjual" value="{{ $jumlah_terjual }}" autocomplete="off" readonly required/>
                                </div>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                <div class="form-group m-b-0">
                                    <input class="form-control f-w-700 decimal f-s-11 text-right" type="text" id="usulan_pendapatan_air_rencana_penjualan" value="{{ $rencana_penjualan }}" autocomplete="off" readonly required/>
                                </div>
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
        <div class="panel-footer">
            @role('user|administrator')
            <input type="submit" value="Simpan" class="btn btn-sm btn-success m-r-3"  />
            @endrole
            <a href="{{ $back }}" class="btn btn-sm btn-danger">Batal</a>
            <div class="pull-right">
                This page took {{ (microtime(true) - LARAVEL_START) }} seconds to render
            </div>
        </div>
    </form>
</div>
@endif
@endsection

@push('scripts')
	<script src="/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
	<script src="/assets/plugins/parsleyjs/dist/parsley.js"></script>
    @if ($aksi == 'Tambah')
	<script src="/assets/plugins/smartwizard/dist/js/jquery.smartWizard.js"></script>
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
                    $('<a></a>').text('{{ $step == 3? 'Simpan': 'Next' }}').addClass('btn btn-success').on('click', function(){
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
    @else
	<script src="/assets/plugins/autonumeric/autoNumeric.js"></script>
	<script>
        function set_pasif(id) {
            if(id == 0){
                for (let i = 1; i < 12; i++) {
                    AutoNumeric.getAutoNumericElement('#usulan_pendapatan_air_periode_sambung_pasif' + i).set($("#usulan_pendapatan_air_periode_sambung_pasif" + id).val());
                }
            }
        }
        function set_sambung_kembali(id) {
            if(id == 0){
                for (let i = 1; i < 12; i++) {
                    AutoNumeric.getAutoNumericElement('#usulan_pendapatan_air_periode_sambung_kembali' + i).set($("#usulan_pendapatan_air_periode_sambung_kembali" + id).val());
                }
            }
        }
        function set_rata_konsumsi(id) {
            if(id == 0){
                for (let i = 1; i < 12; i++) {
                    AutoNumeric.getAutoNumericElement('#usulan_pendapatan_air_periode_rata_konsumsi' + i).set($("#usulan_pendapatan_air_periode_rata_konsumsi" + id).val());
                }
            }
        }
        function set_rata_harga_air(id) {
            if(id == 0){
                for (let i = 1; i < 12; i++) {
                    AutoNumeric.getAutoNumericElement('#usulan_pendapatan_air_periode_rata_harga_air' + i).set($("#usulan_pendapatan_air_periode_rata_harga_air" + id).val());
                }
            }
        }

        AutoNumeric.multiple('.decimal', {
            modifyValueOnWheel : false,
            minimumValue: "0"
        });

        AutoNumeric.multiple('.integer', {
            decimalPlaces : 0,
            modifyValueOnWheel : false,
            minimumValue: "0"
        });

        function total(){
            var sambung_baru = 0;
            var sambung_pasif = 0;
            var sambung_kembali = 0;
            var jumlah_terjual = 0;
            var rencana_penjualan = 0;

            for (let i = 0; i < 12; i++) {
                var periode_jumlah_pelanggan = parseFloat($("#usulan_pendapatan_air_periode_jumlah_pelanggan" + i).val()? $("#usulan_pendapatan_air_periode_jumlah_pelanggan" + i).val().split(',').join(''): 0);
                var periode_sambung_baru = parseFloat($("#usulan_pendapatan_air_periode_sambung_baru" + i).val()? $("#usulan_pendapatan_air_periode_sambung_baru" + i).val().split(',').join(''): 0);
                var periode_sambung_pasif = parseFloat($("#usulan_pendapatan_air_periode_sambung_pasif" + i).val()? $("#usulan_pendapatan_air_periode_sambung_pasif" + i).val().split(',').join(''): 0);
                var periode_sambung_kembali = parseFloat($("#usulan_pendapatan_air_periode_sambung_kembali" + i).val()? $("#usulan_pendapatan_air_periode_sambung_kembali" + i).val().split(',').join(''): 0);

                var periode_sambung_aktif_akhir_bulan = periode_jumlah_pelanggan + periode_sambung_baru - periode_sambung_pasif + periode_sambung_kembali;
                AutoNumeric.getAutoNumericElement('#usulan_pendapatan_air_periode_sambung_aktif_akhir_bulan' + i).set(periode_sambung_aktif_akhir_bulan);

                if(i < 11)
                    AutoNumeric.getAutoNumericElement('#usulan_pendapatan_air_periode_jumlah_pelanggan' + (i + 1)).set(periode_sambung_aktif_akhir_bulan);

                var periode_rata_konsumsi = parseFloat($("#usulan_pendapatan_air_periode_rata_konsumsi" + i).val()? $("#usulan_pendapatan_air_periode_rata_konsumsi" + i).val().split(',').join(''): 0);
                var periode_jumlah_terjual = periode_sambung_aktif_akhir_bulan * periode_rata_konsumsi;
                AutoNumeric.getAutoNumericElement('#usulan_pendapatan_air_periode_jumlah_terjual' + i).set(periode_jumlah_terjual);

                var periode_rata_harga = parseFloat($("#usulan_pendapatan_air_periode_rata_harga_air" + i).val()? $("#usulan_pendapatan_air_periode_rata_harga_air" + i).val().split(',').join(''): 0);
                var periode_rencana_penjualan = periode_rata_harga * periode_jumlah_terjual;
                AutoNumeric.getAutoNumericElement('#usulan_pendapatan_air_periode_rencana_penjualan' + i).set(periode_rencana_penjualan);

                sambung_baru += periode_sambung_baru;
                sambung_pasif += periode_sambung_pasif;
                sambung_kembali += periode_sambung_kembali;
                jumlah_terjual += periode_jumlah_terjual;
                rencana_penjualan += periode_rencana_penjualan;
            }
            AutoNumeric.getAutoNumericElement('#usulan_pendapatan_air_sambung_baru').set(sambung_baru);
            AutoNumeric.getAutoNumericElement('#usulan_pendapatan_air_sambung_pasif').set(sambung_pasif);
            AutoNumeric.getAutoNumericElement('#usulan_pendapatan_air_sambung_kembali').set(sambung_kembali);
            AutoNumeric.getAutoNumericElement('#usulan_pendapatan_air_jumlah_terjual').set(jumlah_terjual);
            AutoNumeric.getAutoNumericElement('#usulan_pendapatan_air_rencana_penjualan').set(rencana_penjualan);
        }

        $(".total").on('change keyup', function(){
            total();
        });
    </script>
    @endif
@endpush
