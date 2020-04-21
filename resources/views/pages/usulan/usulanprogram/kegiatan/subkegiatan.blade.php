<tr id="{{ $waktu }}" {{ $sumber == 'edit'? ($row->usulan_kegiatan_detail_volume != $row->usulan_kegiatan_detail_periode_1+ $row->usulan_kegiatan_detail_periode_2 + $row->usulan_kegiatan_detail_periode_3 + $row->usulan_kegiatan_detail_periode_4 + $row->usulan_kegiatan_detail_periode_5 + $row->usulan_kegiatan_detail_periode_6 + $row->usulan_kegiatan_detail_periode_7 + $row->usulan_kegiatan_detail_periode_8 + $row->usulan_kegiatan_detail_periode_9 + $row->usulan_kegiatan_detail_periode_10 + $row->usulan_kegiatan_detail_periode_11 + $row->usulan_kegiatan_detail_periode_12? "class=danger": '') : '' }}>
    <td class="p-2 p-l-15 p-r-0">
        <select class="custom-select f-s-10" id="barang_dan_pekerjaan_id{{ $waktu }}" style="width: 100%" name="barang_dan_pekerjaan_id[]" required>
            @if ($sumber == 'edit')
                <option value="{{ $row->barang_dan_pekerjaan_id }}">{{ $row->barang->barang_dan_pekerjaan_jenis." - ". $row->barang->barang_dan_pekerjaan_nama }}</option>
            @endif
        </select>
    </td>
    <td class="with-form-control p-r-0">
        <input class="form-control f-s-10" id="barang_dan_pekerjaan_satuan{{ $waktu }}" value="{{ $sumber == 'edit'? $row->barang->barang_dan_pekerjaan_satuan: '' }}" type="text" required readonly autocomplete="off"/>
    </td>
    <td class="with-form-control p-r-0">
        <input class="form-control decimal{{ $waktu }} total_subkegiatan text-right f-s-10" type="text" name="usulan_kegiatan_detail_nilai[]" id="usulan_kegiatan_detail_nilai{{ $waktu }}" value="{{ $sumber == 'edit'? $row->usulan_kegiatan_detail_nilai: '' }}" required autocomplete="off"/>
    </td>
    <td class="with-form-control p-r-0">
        <input class="form-control integer{{ $waktu }} text-right total_subkegiatan f-s-10" type="text" name="usulan_kegiatan_detail_volume[]" id="usulan_kegiatan_detail_volume{{ $waktu }}" value="{{ $sumber == 'edit'? $row->usulan_kegiatan_detail_volume: '0' }}" value="0" required autocomplete="off"/>
    </td>
    @php
        $total_periode = 0;
    @endphp
    @for ($i = 1; $i < 13; $i++)
    @php
        $periode = 0;
    @endphp
    @if ($sumber == 'edit')
        @switch($i)
            @case(1)
                @php
                $periode = $row->usulan_kegiatan_detail_periode_1;
                @endphp
                @break
            @case(2)
                @php
                $periode = $row->usulan_kegiatan_detail_periode_2;
                @endphp
                @break
            @case(3)
                @php
                $periode = $row->usulan_kegiatan_detail_periode_3;
                @endphp
                @break
            @case(4)
                @php
                $periode = $row->usulan_kegiatan_detail_periode_4;
                @endphp
                @break
            @case(5)
                @php
                $periode = $row->usulan_kegiatan_detail_periode_5;
                @endphp
                @break
            @case(6)
                @php
                $periode = $row->usulan_kegiatan_detail_periode_6;
                @endphp
                @break
            @case(7)
                @php
                $periode = $row->usulan_kegiatan_detail_periode_7;
                @endphp
                @break
            @case(8)
                @php
                $periode = $row->usulan_kegiatan_detail_periode_8;
                @endphp
                @break
            @case(9)
                @php
                $periode = $row->usulan_kegiatan_detail_periode_9;
                @endphp
                @break
            @case(10)
                @php
                $periode = $row->usulan_kegiatan_detail_periode_10;
                @endphp
                @break
            @case(11)
                @php
                $periode = $row->usulan_kegiatan_detail_periode_11;
                @endphp
                @break
            @case(12)
                @php
                $periode = $row->usulan_kegiatan_detail_periode_12;
                @endphp
                @break
            @default
        @endswitch
    @endif
    <td class="with-form-control p-r-0">
        <input class="form-control integer{{ $waktu }} text-right total_subkegiatan f-s-10 usulan_kegiatan_detail_periode_{{ $i }}" type="text" id="usulan_kegiatan_detail_periode_{{ $i }}{{ $waktu }}" value="{{ $sumber == 'edit'? number_format($periode, 0): '0.00' }}" name="usulan_kegiatan_detail_periode_{{ $i }}[]" required autocomplete="off"/>
    </td>
    @if ($sumber == 'edit')
    @php
        $total_periode += $periode * $row->usulan_kegiatan_detail_nilai;
    @endphp
    @endif
    @endfor
    <td class="with-form-control p-r-2">
        <input class="form-control text-right f-s-10 usulan_kegiatan_detail_nilai_total" type="text" name="usulan_kegiatan_detail_nilai_total[]" id="usulan_kegiatan_detail_nilai_total{{ $waktu }}" value="{{ $sumber == 'edit'? number_format($total_periode, 2): '0' }}" required readonly autocomplete="off"/>
    </td>
    <td class="align-middle text-center p-0">
        <a href="javascript:;" class="m-2" onclick="hapus('{{ $waktu }}')" title="Hapus Barang/Pekerjaan"><i class='fas fa-times fa-lg text-black-darker'></i></a>
    </td>
</tr>
@if ($sumber == 'edit')
@push('subscripts')
@endif
    <script>
        $("#barang_dan_pekerjaan_id{{ $waktu }}").on("change", function(e) {
            var sub = $(this).closest('tr').attr('id');
            $("#barang_dan_pekerjaan_satuan" + sub).val($(this).select2('data')[0]['satuan']);
            AutoNumeric.getAutoNumericElement('#usulan_kegiatan_detail_nilai' + sub).set(parseFloat($(this).select2('data')[0]['harga']));
            total_subkegiatan(sub);
        });

        $("#barang_dan_pekerjaan_id{{ $waktu }}").select2({
            minimumInputLength: 2,
            ajax:{
                url: '/barangdanpekerjaan/cari',
                dataType: "json",
                delay: 250,
                type : 'GET',
                data: function(params){
                    return{
                        cari : params.term
                    };
                },
                processResults: function(data){
                    var results = [];
                    $.each(data, function(index, item){
                        results.push({
                            id : item.barang_dan_pekerjaan_id,
                            harga : item.barang_dan_pekerjaan_harga,
                            satuan : item.barang_dan_pekerjaan_satuan,
                            text: item.barang_dan_pekerjaan_jenis + " - " + item.barang_dan_pekerjaan_nama
                        });
                    });
                    return{
                        results: results
                    };
                },
                cache: true,
            }
        });

        AutoNumeric.multiple('.integer{{ $waktu }}', {
            decimalPlaces : 0,
            modifyValueOnWheel : false,
            minimumValue: "0"
        });

        AutoNumeric.multiple('.decimal{{ $waktu }}', {
            modifyValueOnWheel : false,
            minimumValue: "0"
        });

        $(".total_subkegiatan").on("change keyup", function(e) {
            total_subkegiatan($(this).closest('tr').attr('id'));
        });
    </script>
@if ($sumber == 'edit')
@endpush
@endif
