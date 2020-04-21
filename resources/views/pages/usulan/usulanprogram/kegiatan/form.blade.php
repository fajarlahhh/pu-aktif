@extends('pages.usulan.main')

@section('title', ' | '.ucfirst($aksi).' Usulan Program')

@push('css')
	<link href="/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" />
	<link href="/assets/plugins/parsleyjs/src/parsley.css" rel="stylesheet" />
    <link href="/assets/plugins/bootstrap3-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" />
    <link href="/assets/plugins/select2/dist/css/select2.min.css" rel="stylesheet" />
@endpush

@section('page')
    <li class="breadcrumb-item">Usulan Program</li>
    <li class="breadcrumb-item">Kegiatan</li>
    <li class="breadcrumb-item active">{{ ucfirst($aksi) }} Data</li>
@endsection

@section('header')
	<h1 class="page-header">Kegiatan <small> {{ $program->usulan_program_deskripsi }} <small>{{ ucfirst($aksi)  }} Data</small></small></h1>
@endsection

@section('subcontent')
<form action="{{ route('usulankegiatan.'.strtolower($aksi)) }}" method="POST" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
    @if ($aksi == 'edit')
    <input type="hidden" name="usulan_kegiatan_id" value="{{ $data->usulan_kegiatan_id_encrypt }}">
    @method('PUT')
    @endif
    <input type="hidden" name="usulan_program_id" value="{{ $program->usulan_program_id_encrypt }}">
    <input type="hidden" name="periode_tahun" value="{{ $program->periode_tahun }}">
    <input type="hidden" name="redirect" value="{{ $back }}">
    @csrf
    <div class="panel panel-inverse" data-sortable-id="form-stuff-1">
        <div class="panel-heading">
            <div class="panel-heading-btn">
                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
            </div>
            <h4 class="panel-title"><i class="far fa-file-alt"></i> Form</h4>
        </div>
        <div class="panel-body">
            <input type="hidden" name="redirect" value="{{ $back }}">
            <div class="form-group">
                <label class="control-label">Kegiatan</label>
                <select class="form-control selectpicker" name="akun_kode" id="akun_kode" data-live-search="true" data-style="btn-primary" data-width="100%" required>
                    @foreach($kegiatan as $row)
                    @php
                        $selected = '';
                        if(old('akun_kode')){
                            $selected =  old('akun_kode') == $row->akun_kode? 'selected': '';
                        }else{
                            if($aksi == 'edit')
                                $selected =  $data->akun_kode == $row->akun_kode? 'selected': '';

                        }
                    @endphp
                    <option value="{{ $row->akun_kode }}" {{ $selected }}>{{ $row->akun_keterangan }}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label class="control-label">Deskripsi</label>
                <input class="form-control" type="text" name="usulan_kegiatan_deskripsi" value="{{ old('usulan_kegiatan_deskripsi')? old('usulan_kegiatan_deskripsi'): ($aksi == 'edit'? $data->usulan_kegiatan_deskripsi: '') }}" autocomplete="off" required/>
            </div>
            <div class="form-group">
                <label class="control-label">Penanggung Jawab</label>
                <select class="form-control selectpicker" name="usulan_kegiatan_penanggung_jawab" data-live-search="true" data-style="btn-warning" data-width="100%" required>
                    @foreach($subbidang->seksi as $row)
                    @php
                        $selected = '';
                        if(old('usulan_kegiatan_penanggung_jawab')){
                            $selected =  old('usulan_kegiatan_penanggung_jawab') == $row->nm_seksi? 'selected': '';
                        }else{
                            if($aksi == 'edit')
                                $selected =  $data->usulan_kegiatan_penanggung_jawab == $row->nm_seksi? 'selected': '';

                        }
                    @endphp
                    <option value="{{ $row->nm_seksi }}" {{ $selected }}>{{ $row->nm_seksi }}</option>
                    @endforeach
                </select>
            </div>
            <div class="note note-secondary m-b-15">
                <h4><b>Rincian</b></h4>
                <div class="form-group">
                    <textarea class="textarea form-control wysihtml5" name="usulan_kegiatan_rincian" rows="12">
                        {{ old('usulan_kegiatan_rincian')? old('usulan_kegiatan_rincian'): ($aksi == 'edit'? $data->usulan_kegiatan_rincian: '') }}
                    </textarea>
                </div>
            </div>
            <div class="note note-warning m-b-15">
                <div class="table-responsive">
                    <table class="table f-s-10 no-padding" style="width: 1700px">
                        <thead>
                            <tr>
                                <th>Barang/Pekerjaan</th>
                                <th class="width-100">Satuan</th>
                                <th class="width-100">Harga Satuan (Rp.)</th>
                                <th class="width-80">Volume</th>
                                @foreach ($bulan as $bulan)
                                <th class="width-80">{{ $bulan }}</th>
                                @endforeach
                                <th class="width-150">Nilai</th>
                                <th class="width-10"></th>
                            </tr>
                        </thead>
                        <tbody id="subkegiatan">
                            @if($aksi == 'edit')
                            @foreach ($data->detail as $index => $row)
                            @include('pages.usulan.usulanprogram.kegiatan.subkegiatan', ['waktu' => $index, 'sumber' => 'edit'])
                            @endforeach
                            @endif
                        </tbody>
                        <tfoot>
                            <tr class="bg-black-transparent-1">
                                <td colspan="4" class="text-right">
                                    <h6 class="m-t-3 m-b-2">JUMLAH</h6>
                                </td>
                                @for ($i = 1; $i < 13; $i++)
                                <td class="with-form-control p-r-0">
                                    <input class="form-control text-right total f-s-10 jumlah_kegiatan_{{ $i }}" type="text" id="usulan_program_kegiatan_periode_{{ $i }}" value="0" name="usulan_program_kegiatan_periode_{{ $i }}" readonly autocomplete="off"/>

                                </td>
                                @endfor
                                <td class="with-form-control p-r-2">
                                    <input class="form-control text-right text-right f-s-10 jumlah_kegiatan" type="text" name="usulan_program_kegiatan_nilai" id="usulan_program_kegiatan_nilai" readonly value="0.00" autocomplete="off"/>
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
                <br>
                <div class="text-center">
                    <a href="javascript:;" onclick="tambah_sub_kegiatan()" class="btn btn-xs btn-circle btn-warning"><i class="fad fa-plus"></i> Barang/Pekerjaan</a>
                </div>
            </div>
            @include('includes.error')
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
    </div>
</form>
@endsection

@push('scripts')
    <script src="/assets/plugins/select2/dist/js/select2.min.js"></script>
	<script src="/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
	<script src="/assets/plugins/parsleyjs/dist/parsley.js"></script>
	<script src="/assets/plugins/bootstrap3-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <script src="/assets/plugins/autonumeric/autoNumeric.js"></script>
    <script src="/assets/plugins/select2/dist/js/select2.min.js"></script>
	<script>
        $(document).ready(function(){
            total();
        });

        function tambah_sub_kegiatan(){
            $.get("/usulanprogram/kegiatan/{{ $program->usulan_program_id }}/subkegiatan", function (data) {
                $("#subkegiatan").append(data);
            });
        }

        $('.wysihtml5').wysihtml5({
            selected: 0,
            theme: 'default',
            transitionEffect:'',
            transitionSpeed: 0,
            useURLhash: false,
            showStepURLhash: false,
            toolbarSettings: {
                toolbarPosition: 'bottom'
            }
        });

        function total_subkegiatan(id) {
            var total_volume = 0;
            var volume = parseFloat($("#usulan_kegiatan_detail_volume" + id).val()? $("#usulan_kegiatan_detail_volume" + id).val().split(',').join(''): 0);
            var nilai_satuan = parseFloat($("#usulan_kegiatan_detail_nilai" + id).val()? $("#usulan_kegiatan_detail_nilai" + id).val().split(',').join(''): 0);

            for (let i = 1; i < 13; i++) {
                var periode = $("#usulan_kegiatan_detail_periode_" + i + id ).val();
                total_volume += parseFloat(periode? periode.split(',').join(''): 0);

                var total_periode = 0;
                $(".usulan_kegiatan_detail_periode_" + i).each(function(i, obj) {
                    if(this.value)
                        total_periode += parseFloat(this.value.split(',').join(''));
                });
                $('#usulan_program_kegiatan_periode_' + i).val(formatNumber(total_periode));
            }
            if(total_volume == volume)
                $("#" + id).removeClass("danger");
            else
                $("#" + id).addClass("danger");
            $('#usulan_kegiatan_detail_nilai_total' + id).val(currencyFormat(total_volume * nilai_satuan));
            total();
        }

        function total(){
            var total = 0;
	        $('.usulan_kegiatan_detail_nilai_total').each(function(i, obj) {
	            if(this.value)
                    total += parseFloat(this.value.split(',').join(''));
	        });
            $('#usulan_program_kegiatan_nilai').val(currencyFormat(total));
        }

        function hapus(id) {
            $("#" + id).remove();
            total();
        }

        function formatNumber(num) {
            return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
        }
        function currencyFormat(num) {
            return num.toFixed(2).replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
        }
	</script>
@endpush
