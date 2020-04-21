<div id="step-4">
    <!-- begin fieldset -->
    <form action="{{ route('usulanpendapatanair.simpan') }}" name="step" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
        @csrf
        <fieldset>
            <ul class="nav nav-tabs">
                <li class="nav-items">
                    <a href="#default-tab-1" data-toggle="tab" class="nav-link">
                        <span class="d-sm-none">Tab 1</span>
                        <span class="d-sm-block d-none">Tahun, Wilayah, Akun, Golongan</span>
                    </a>
                </li>
                <li class="nav-items">
                    <a href="#default-tab-2" data-toggle="tab" class="nav-link">
                        <span class="d-sm-none">Tab 2</span>
                        <span class="d-sm-block d-none">Jumlah Pelanggan</span>
                    </a>
                </li>
                <li class="nav-items">
                    <a href="#default-tab-3" data-toggle="tab" class="nav-link">
                        <span class="d-sm-none">Tab 3</span>
                        <span class="d-sm-block d-none">Rata-rata Konsumsi, Jumlah Pakai & Harga Air, Rata-Rata Harga Air</span>
                    </a>
                </li>
                <li class="nav-items">
                    <a href="#default-tab-4" data-toggle="tab" class="nav-link active">
                        <span class="d-sm-none">Tab 4</span>
                        <span class="d-sm-block d-none">Hasil</span>
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane fade" id="default-tab-1">
                    <div class="form-group">
                        <label class="control-label">Tahun</label>
                        <input type="text" class="form-control" name="periode_tahun" value="{{ $data->periode_tahun }}" autocomplete="off" required readonly/>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Wilayah</label>
                        <input type="text" class="form-control" name="wilayah_nama" value="{{ $data->wilayah_nama }}" autocomplete="off" required readonly/>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Akun</label>
                        <input type="text" class="form-control" name="akun_keterangan" value="{{ $data->akun_keterangan }}" autocomplete="off" required readonly/>
                        <input type="hidden" name="akun_kode" value="{{ $data->akun_kode }}" required />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Golongan</label>
                        <input type="text" class="form-control" name="golongan_keterangan" value="{{ $data->golongan_keterangan }}" autocomplete="off" required readonly/>
                        <input type="hidden" name="golongan_id" value="{{ $data->golongan_id }}" required/>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Keterangan</label>
                        <textarea class="form-control" rows="3" name="usulan_pendapatan_air_keterangan" readonly>{{ $data->usulan_pendapatan_air_keterangan }}</textarea>
                    </div>
                </div>
                <div class="tab-pane fade" id="default-tab-2">
                    <div class="form-group">
                        <label class="control-label">Rekening Terakhir Tahun {{ $data->periode_tahun - 1 }}</label>
                        <input type="text" class="form-control" name="akhir_periode" value="{{ $data->akhir_periode }}" autocomplete="off" required readonly/>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Jumlah Pelanggan s/d Akhir Periode {{ $data->akhir_periode }}</label>
                        <input type="text" class="form-control text-right" name="jumlah_pelanggan" value="{{ $data->jumlah_pelanggan }}" autocomplete="off" required readonly/>
                    </div>
                    @if (substr($data->akhir_periode, 0, 2) < '12')
                    <div class="form-group">
                        <label class="control-label">Perkiraan Penambahan Jumlah Pelanggan Periode {{ $data->next_periode }} s/d Akhir Tahun {{ $data->periode_tahun - 1 }}</label>
                        <input type="text" class="form-control text-right integer" id="jumlah_pelanggan_perkiraan" name="jumlah_pelanggan_perkiraan" value="{{ $data->jumlah_pelanggan_perkiraan }}" autocomplete="off" required readonly/>
                    </div>
                    @endif
                </div>
                <div class="tab-pane fade" id="default-tab-3">
                    <div class="form-group">
                        <label class="control-label">Rata-rata Konsumsi/Pelanggan Periode {{ $data->akhir_periode }}</label>
                        <div class="input-group">
                            <input type="text" class="form-control text-right" name="rata_konsumsi" value="{{ $data->rata_konsumsi }}" autocomplete="off" required readonly/>
                            <div class="input-group-append"><span class="input-group-text">m<sup>3</sup></span></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Jumlah Air Terjual Periode {{ $data->akhir_periode }}</label>
                        <div class="input-group">
                            <input type="text" class="form-control text-right" name="jumlah_terjual" value="{{ $data->jumlah_terjual }}" autocomplete="off" required readonly/>
                            <div class="input-group-append"><span class="input-group-text">m<sup>3</sup></span></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Jumlah Harga Air Periode {{ $data->akhir_periode }}</label>
                        <div class="input-group">
                            <div class="input-group-prepend"><span class="input-group-text">Rp.</span></div>
                            <input type="text" class="form-control text-right" name="harga_air" value="{{ $data->harga_air }}" autocomplete="off" required readonly/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Rata-rata Harga Air Periode {{ $data->akhir_periode }}</label>
                        <div class="input-group">
                            <div class="input-group-prepend"><span class="input-group-text">Rp.</span></div>
                            <input type="text" class="form-control text-right decimal" name="rata_harga_air" value="{{ $data->rata_harga_air }}" autocomplete="off" required/>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade active show" id="default-tab-4">
                    <div class="form-group">
                        <label class="control-label">Usulan Sambung Baru</label>
                        <select class="form-control selectpicker" id="usulan_sambung_baru" data-live-search="true" data-style="btn-success" data-width="100%">
                            @foreach ($usulan_sambung_baru as $row)
                            <option value="{{ $row->usulan_sambung_baru_id }}"
                                @foreach ($row->periode as $detail)
                                    data-{{ $detail->usulan_sambung_baru_periode_bulan }}="{{ $detail->usulan_sambung_baru_periode_pelanggan }}"
                                @endforeach
                            >ID : {{ $row->usulan_sambung_baru_id }} - {{ $row->paket->paket_diameter }}</option>
                            @endforeach
                        </select>
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
                                    $jumlah_sambung_baru = $usulan_sambung_baru->first()->periode[$i]->usulan_sambung_baru_periode_pelanggan;
                                @endphp
                                <tr>
                                    <td>
                                        <label class="m-t-10 f-s-11">{{ $bulan[$i] }}</label>
                                    </td>
                                    <td>
                                        <div class="form-group m-b-0">
                                            <input class="form-control integer text-right f-s-11 total" type="text" id="usulan_pendapatan_air_periode_jumlah_pelanggan{{ $i }}" name="usulan_pendapatan_air_periode_jumlah_pelanggan[]" value="{{ $jumlah_pelanggan }}" autocomplete="off" required />
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group m-b-0">
                                            <input class="form-control integer text-right f-s-11 total" type="text" id="usulan_pendapatan_air_periode_sambung_baru{{ $i }}" name="usulan_pendapatan_air_periode_sambung_baru[]" value="{{ $jumlah_sambung_baru }}" autocomplete="off" />
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group m-b-0">
                                            <input class="form-control integer text-right f-s-11 total" type="text" id="usulan_pendapatan_air_periode_sambung_pasif{{ $i }}" name="usulan_pendapatan_air_periode_sambung_pasif[]" value="0" onchange="set_pasif({{ $i }})" onkeyup="set_pasif({{ $i }})" autocomplete="off" />
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group m-b-0">
                                            <input class="form-control integer text-right f-s-11 total" type="text" id="usulan_pendapatan_air_periode_sambung_kembali{{ $i }}" name="usulan_pendapatan_air_periode_sambung_kembali[]" value="0" onchange="set_sambung_kembali({{ $i }})" onkeyup="set_sambung_kembali({{ $i }})" autocomplete="off" />
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group m-b-0">
                                            <input class="form-control integer text-right f-s-11" type="text" id="usulan_pendapatan_air_periode_sambung_aktif_akhir_bulan{{ $i }}" name="usulan_pendapatan_air_periode_sambung_aktif_akhir_bulan[]" value="{{ $jumlah_pelanggan + $jumlah_sambung_baru  }}" autocomplete="off" readonly required/>
                                        </div>
                                    </td>
                                    @php
                                        $jumlah_pelanggan += $jumlah_sambung_baru;
                                    @endphp
                                    <td>
                                        <div class="form-group m-b-0">
                                            <input class="form-control decimal text-right f-s-11 total" type="text" id="usulan_pendapatan_air_periode_rata_konsumsi{{ $i }}" name="usulan_pendapatan_air_periode_rata_konsumsi[]" value="{{ $data->rata_konsumsi }}" autocomplete="off" onchange="set_rata_konsumsi({{ $i }})" onkeyup="set_rata_konsumsi({{ $i }})" required/>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group m-b-0">
                                            <input class="form-control decimal text-right f-s-11" type="text" id="usulan_pendapatan_air_periode_jumlah_terjual{{ $i }}" name="usulan_pendapatan_air_periode_jumlah_terjual[]" value="{{ $data->rata_konsumsi * $data->jumlah_pelanggan }}" autocomplete="off" readonly required/>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group m-b-0">
                                            <input class="form-control decimal text-right f-s-11 total" type="text" id="usulan_pendapatan_air_periode_rata_harga_air{{ $i }}" name="usulan_pendapatan_air_periode_rata_harga_air[]" onchange="set_rata_harga_air({{ $i }})" onkeyup="set_rata_harga_air({{ $i }})" value="{{ $data->rata_harga_air }}" autocomplete="off" required/>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group m-b-0">
                                            <input class="form-control decimal text-right f-s-11" type="text" id="usulan_pendapatan_air_periode_rencana_penjualan{{ $i }}" name="usulan_pendapatan_air_periode_rencana_penjualan[]" value="{{ $data->rata_konsumsi * $data->jumlah_pelanggan * $data->rata_harga_air }}" autocomplete="off" readonly required/>
                                        </div>
                                    </td>
                                </tr>
                                @php
                                    $sambung_baru += $jumlah_sambung_baru;
                                    $sambung_pasif += 0;
                                    $sambung_kembali += 0;
                                    $jumlah_terjual += $data->rata_konsumsi * $data->jumlah_pelanggan;
                                    $rencana_penjualan += $data->rata_konsumsi * $data->jumlah_pelanggan * $data->rata_harga_air;
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
            </div>
        </fieldset>
    </form>
    <!-- end fieldset -->
</div>
@push('scripts')
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
@endpush
