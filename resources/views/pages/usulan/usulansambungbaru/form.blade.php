@extends('pages.usulan.main')

@section('title', ' | '.$aksi.' Usulan')

@push('css')
	<link href="/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" />
	<link href="/assets/plugins/select2/dist/css/select2.min.css" rel="stylesheet" />
	<link href="/assets/plugins/parsleyjs/src/parsley.css" rel="stylesheet" />
	<link href="/assets/plugins/switchery/switchery.min.css" rel="stylesheet" />
@endpush

@section('page')
    <li class="breadcrumb-item">Usulan Sambung Baru</li>
	<li class="breadcrumb-item active">{{ $aksi }} Data</li>
@endsection

@section('header')
    <h1 class="page-header">Usulan <small>Sambung Baru <small>{{ $aksi }} Data</small></small></h1>
@endsection

@section('subcontent')
<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
    <!-- begin panel-heading -->
    <div class="panel-heading">
        <div class="panel-heading-btn">
            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
        </div>
        <h4 class="panel-title"><i class="far fa-file-alt"></i> Form</h4>
    </div>
    <form action="{{ route('usulansambungbaru.'.strtolower($aksi)) }}" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
        @method(strtolower($aksi) == 'tambah'? 'POST': 'PUT')
        @csrf
        <div class="panel-body">
            <div class="row">
                <div class="col-md-3">
                    <input type="hidden" name="redirect" value="{{ $back }}">
                    @if($aksi == 'Edit')
                    <input type="hidden" name="id" value="{{ $data->usulan_sambung_baru_id_encrypt }}">
                    @endif
                    <div class="form-group">
                        <label class="control-label">Tahun</label>
                        <select class="form-control selectpicker" name="periode_tahun" data-live-search="true" data-style="btn-warning" data-width="100%">
                            @foreach ($periode as $row)
                            <option value="{{ $row }}" {{ $aksi == 'Edit' && $data->periode_tahun == $row? 'selected': (date('Y') == $row || old('periode_tahun') == $row? 'selected': '') }}>{{ $row }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Kode Akun</label>
                        <select class="form-control selectpicker" name="akun_kode" id="akun_kode" data-live-search="true" data-style="btn-primary" data-width="100%" required>
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
                        <select class="form-control selectpicker" name="golongan_id" id="golongan_id" data-live-search="true" data-style="btn-success" data-width="100%" required>
                            @foreach($golongan as $row)
                            @php
                                $selected = '';
                                if(old('golongan_ID')){
                                    $selected =  old('golongan_ID') == $row->golongan_ID? 'selected': '';
                                }else{
                                    if($aksi == 'Edit')
                                        $selected =  $data->golongan_id == $row->golongan_ID? 'selected': '';

                                }
                            @endphp
                            <option value="{{ $row->golongan_ID }}" {{ $selected }}>{{ $row->golongan_ID." - ".$row->golongan_nama }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Wilayah</label>
                        <select class="form-control selectpicker" name="wilayah_nama" id="wilayah_nama" data-live-search="true" data-style="btn-danger" data-width="100%" required>
                            @foreach($wilayah as $row)
                            @php
                                $selected = '';
                                if(old('wilayah_nama')){
                                    $selected =  old('wilayah_nama') == $row->wilayah_nama? 'selected': '';
                                }else{
                                    if($aksi == 'Edit')
                                        $selected =  $data->wilayah_nama == $row->wilayah_nama? 'selected': '';
                                }
                            @endphp
                            <option value="{{ $row->wilayah_nama }}" {{ $selected }}>{{ $row->wilayah_nama }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Paket</label>
                        <select class="form-control selectpicker" name="paket_id" id="paket_id" data-live-search="true" data-style="btn-info" data-width="100%" required onchange="biaya_standar()">
                            @foreach($paket as $row)
                            @php
                                $selected = '';
                                if(old('paket_id')){
                                    $selected =  old('paket_id') == $row->paket_ID? 'selected': '';
                                }else{
                                    if($aksi == 'Edit')
                                        $selected =  $data->paket_id == $row->paket_ID? 'selected': '';
                                }
                            @endphp
                            <option value="{{ $row->paket_ID }}" data-biaya="{{ $row->paket_biaya_pb }}" {{ $selected }}>{{ $row->paket_diameter }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Biaya Standard</label>
                        <input class="form-control decimal text-right total" type="text" id="usulan_sambung_baru_biaya" name="usulan_sambung_baru_biaya" value="{{ $aksi == 'Edit'? $data->usulan_sambung_baru_biaya: old('usulan_sambung_baru_biaya') }}" autocomplete="off" required/>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Jumlah Pelanggan</label>
                        <input class="form-control integer text-right total" type="text" id="jumlah_pelanggan" name="jumlah_pelanggan" value="{{ $aksi == 'Edit'? $data->periode->sum('usulan_sambung_baru_periode_pelanggan'): old('jumlah_pelanggan') }}" autocomplete="off" required/>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Keterangan</label>
                        <textarea class="form-control" rows="3" name="usulan_sambung_baru_keterangan">{{ $aksi == 'Edit'? $data->usulan_sambung_baru_keterangan: old('usulan_sambung_baru_keterangan') }}</textarea>
                    </div>
                    @if ($aksi == 'Tambah')
                    <div class="form-group">
                        <input type="checkbox" data-render="switchery" data-theme="yellow" value="1" {{ $banyak == 'banyak' || old('banyak') == 1? 'checked': '' }} data-change="check-switchery-state-text" name="banyak"/>
                        <label class="control-label">Input Banyak</label>
                    </div>
                    @endif
                    @include('includes.error')
                </div>
                <div class="col-md-9">
                    <div class="note note-secondary">
                        <div class="table-responsive">
                            <table class="table table-hover f-s-12">
                                <thead>
                                    <tr>
                                        <th class="width-50">Bulan</th>
                                        <th class="width-100">Pelanggan Baru</th>
                                        <th>Biaya Standard</th>
                                        <th>Biaya PPN (10%)</th>
                                        <th>Jumlah Biaya</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @for ($i = 0; $i < count($bulan); $i++)
                                    <tr>
                                        <td class="with-form-control">
                                            <label>{{ $bulan[$i] }}</label>
                                        </td>
                                        <td class="with-form-control">
                                            <input class="form-control usulan_sambung_baru_periode_pelanggan text-right f-s-10" type="text" id="usulan_sambung_baru_periode_pelanggan{{ $i }}" name="usulan_sambung_baru_periode_pelanggan{{ $i }}" value="{{ $aksi == 'Edit'? $data->periode[$i]->usulan_sambung_baru_periode_pelanggan: old('usulan_sambung_baru_periode_pelanggan'.$i) }}" autocomplete="off" readonly required/>
                                        </td>
                                        <td class="with-form-control">
                                            <input class="form-control decimal text-right f-s-10" type="text" id="usulan_sambung_baru_periode_biaya_standar{{ $i }}" name="usulan_sambung_baru_periode_biaya_standar{{ $i }}" value="{{ $aksi == 'Edit'? $data->periode[$i]->usulan_sambung_baru_periode_biaya_standar: 0 }}" autocomplete="off" readonly required/>
                                        </td>
                                        <td class="with-form-control">
                                            <input class="form-control decimal text-right f-s-10" type="text" id="usulan_sambung_baru_periode_ppn{{ $i }}" name="usulan_sambung_baru_periode_ppn{{ $i }}" value="{{ $aksi == 'Edit'? $data->periode[$i]->usulan_sambung_baru_periode_ppn: 0 }}" autocomplete="off" required readonly/>
                                        </td>
                                        <td class="with-form-control">
                                            <input class="form-control decimal text-right f-s-10" type="text" id="usulan_sambung_baru_periode_total_biaya{{ $i }}" name="usulan_sambung_baru_periode_total_biaya{{ $i }}" value="{{ $aksi == 'Edit'? $data->periode[$i]->usulan_sambung_baru_periode_total_biaya: 0 }}" autocomplete="off" readonly required/>
                                        </td>
                                    </tr>
                                    @endfor
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td>
                                            <label>JUMLAH</label>
                                        </td>
                                        <td class="with-form-control">
                                            {{-- <div class="form-group">
                                                <input class="form-control f-w-700 integer text-right f-s-10" type="text" id="jumlah_pelanggan" name="jumlah_pelanggan" value="{{ $aksi == 'Edit'? $data->periode->sum('usulan_sambung_baru_periode_pelanggan'): old('jumlah_pelanggan') }}" autocomplete="off" readonly required/>
                                            </div> --}}
                                        </td>
                                        <td class="with-form-control">
                                            <input class="form-control f-w-700 decimal text-right f-s-10" type="text" id="jumlah_standard" name="jumlah_standard" value="{{ $aksi == 'Edit'? $data->periode->sum('usulan_sambung_baru_periode_biaya_standar'): old('jumlah_standard') }}" autocomplete="off" readonly required/>
                                        </td>
                                        <td class="with-form-control">
                                            <input class="form-control f-w-700 decimal text-right f-s-10" type="text" id="jumlah_ppn" name="jumlah_ppn" value="{{ $aksi == 'Edit'? $data->periode->sum('usulan_sambung_baru_periode_ppn'): old('jumlah_ppn') }}" autocomplete="off" readonly required/>
                                        </td>
                                        <td class="with-form-control">
                                            <input class="form-control f-w-700 decimal text-right f-s-10" type="text" id="jumlah_biaya" name="jumlah_biaya" value="{{ $aksi == 'Edit'? $data->periode->sum('usulan_sambung_baru_periode_total_biaya'): old('jumlah_biaya') }}" autocomplete="off" readonly required/>
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
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

<div class="modal fade" id="modal-dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Tambah Asal</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label class="control-label">Sambung Baru</label>
                    <input class="form-control" type="text" id="kegiatan_nama" />
                </div>
            </div>
            <div class="modal-footer">
                <a href="javascript:;" class="btn btn-success" data-dismiss="modal" onclick="simpan_rekanan()">Simpan</a>
            </div>
        </div>
    </div>
</div>
@endsection

@push('scripts')
	<script src="/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
	<script src="/assets/plugins/select2/dist/js/select2.min.js"></script>
	<script src="/assets/plugins/parsleyjs/dist/parsley.js"></script>
	<script src="/assets/plugins/autonumeric/autoNumeric.js"></script>
    <script src="/assets/plugins/switchery/switchery.min.js"></script>
	<script>
        $(document).ready(function () {
            if('{{ $aksi }}' == "Tambah"){
                biaya_standar();
            }
        });

        function biaya_standar() {
            AutoNumeric.getAutoNumericElement('#usulan_sambung_baru_biaya').set($("#paket_id option:selected").data('biaya'));
            total();
        }

        if ($('[data-render=switchery]').length !== 0) {
            $('[data-render=switchery]').each(function() {
                var themeColor = COLOR_GREEN;
                if ($(this).attr('data-theme')) {
                    switch ($(this).attr('data-theme')) {
                        case 'red':
                            themeColor = COLOR_RED;
                            break;
                        case 'blue':
                            themeColor = COLOR_BLUE;
                            break;
                        case 'purple':
                            themeColor = COLOR_PURPLE;
                            break;
                        case 'orange':
                            themeColor = COLOR_ORANGE;
                            break;
                        case 'black':
                            themeColor = COLOR_BLACK;
                            break;
                    }
                }
                var option = {};
                option.color = themeColor;
                option.secondaryColor = ($(this).attr('data-secondary-color')) ? $(this).attr('data-secondary-color') : '#dfdfdf';
                option.className = ($(this).attr('data-classname')) ? $(this).attr('data-classname') : 'switchery';
                option.disabled = ($(this).attr('data-disabled')) ? true : false;
                option.disabledOpacity = ($(this).attr('data-disabled-opacity')) ? parseFloat($(this).attr('data-disabled-opacity')) : 0.5;
                option.speed = ($(this).attr('data-speed')) ? $(this).attr('data-speed') : '0.5s';
                var switchery = new Switchery(this, option);
            });
        }

        function total(){
            for (let i = 0; i < 12; i++) {
                AutoNumeric.getAutoNumericElement('#usulan_sambung_baru_periode_biaya_standar' + i).set(0);
                AutoNumeric.getAutoNumericElement('#usulan_sambung_baru_periode_ppn' + i).set(0);
                AutoNumeric.getAutoNumericElement('#usulan_sambung_baru_periode_total_biaya' + i).set(0);
            }

            var jumlah_pelanggan = parseFloat($("#jumlah_pelanggan").val()? $("#jumlah_pelanggan").val().split(',').join(''): 0);
            var biaya_standar = parseFloat($("#usulan_sambung_baru_biaya").val()? $("#usulan_sambung_baru_biaya").val().split(',').join(''): 0);
            var jumlah_standard = 0;
            var jumlah_ppn = 0;
            var jumlah_biaya = 0;

            var selisih = jumlah_pelanggan % 12;

            $('.usulan_sambung_baru_periode_pelanggan').val(formatNumber(0));


            if(jumlah_pelanggan < 0){
                jumlah_pelanggan = 0
            }else{
                if(jumlah_pelanggan < 12){
                    pelanggan_perbulan = 1;
                }else{
                    if(selisih == 0){
                        var pelanggan_perbulan = jumlah_pelanggan / 12;
                    }else{
                        var pelanggan_perbulan = Math.ceil(jumlah_pelanggan/12) - 1;
                    }
                }
            }

            perulangan = jumlah_pelanggan >= 12? 12: jumlah_pelanggan;
            for (let i = 0; i < perulangan; i++) {
                $('#usulan_sambung_baru_periode_pelanggan' + i).val(formatNumber(pelanggan_perbulan));
            }

            if(selisih > 0 && jumlah_pelanggan > 12){
                for (let i = 11; i > (11 - selisih); i--) {
                    var pelanggan_sekarang = parseFloat($('#usulan_sambung_baru_periode_pelanggan' + i).val()? $('#usulan_sambung_baru_periode_pelanggan' + i).val().split(',').join(''): 0);
                    $('#usulan_sambung_baru_periode_pelanggan' + i).val(formatNumber(pelanggan_sekarang + 1));
                }
            }

            for (let i = 0; i < 12; i++) {
                var pelanggan_sekarang = parseFloat($('#usulan_sambung_baru_periode_pelanggan' + i).val()? $('#usulan_sambung_baru_periode_pelanggan' + i).val().split(',').join(''): 0);
                AutoNumeric.getAutoNumericElement('#usulan_sambung_baru_periode_biaya_standar' + i).set(0);
                AutoNumeric.getAutoNumericElement('#usulan_sambung_baru_periode_ppn' + i).set(0);
                AutoNumeric.getAutoNumericElement('#usulan_sambung_baru_periode_total_biaya' + i).set(0);

                var standar = pelanggan_sekarang * biaya_standar;
                AutoNumeric.getAutoNumericElement('#usulan_sambung_baru_periode_biaya_standar' + i).set(standar);
                var ppn = (biaya_standar * 10/100) * pelanggan_sekarang;
                AutoNumeric.getAutoNumericElement('#usulan_sambung_baru_periode_ppn' + i).set(ppn);
                var biaya = (biaya_standar + (biaya_standar * 10/100)) * pelanggan_sekarang;
                AutoNumeric.getAutoNumericElement('#usulan_sambung_baru_periode_total_biaya' + i).set(biaya);

                jumlah_standard += standar;
                jumlah_ppn += ppn;
                jumlah_biaya += biaya;
            }
            AutoNumeric.getAutoNumericElement('#jumlah_standard').set(jumlah_standard);
            AutoNumeric.getAutoNumericElement('#jumlah_ppn').set(jumlah_ppn);
            AutoNumeric.getAutoNumericElement('#jumlah_biaya').set(jumlah_biaya);
        }

        $(".total").on('change keyup', function(){
            total();
        });

        AutoNumeric.multiple('.integer', {
            decimalPlaces : 0,
            modifyValueOnWheel : false,
            minimumValue: "0"
        });

        AutoNumeric.multiple('.decimal', {
            modifyValueOnWheel : false,
            minimumValue: "0"
        });

        function formatNumber(num) {
            return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
        }
        function currencyFormat(num) {
            return num.toFixed(2).replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
        }
    </script>
@endpush
