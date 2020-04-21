<div id="step-3">
    <!-- begin fieldset -->
    <form action="/usulanpendapatanair/tambah/3" name="step" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
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
                    <a href="#default-tab-3" data-toggle="tab" class="nav-link active">
                        <span class="d-sm-none">Tab 3</span>
                        <span class="d-sm-block d-none">Rata-rata Konsumsi, Pakai, Harga Air, Rata-Rata Harga Air</span>
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
                <div class="tab-pane fade active show" id="default-tab-3">
                    <div class="form-group">
                        <label class="control-label">Rata-rata Konsumsi/Pelanggan Periode {{ $data->akhir_periode }}</label>
                        <div class="input-group">
                            <input type="text" class="form-control decimal text-right" name="rata_konsumsi" value="{{ $rata_konsumsi }}" autocomplete="off" required readonly/>
                            <div class="input-group-append"><span class="input-group-text">m<sup>3</sup></span></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Jumlah Air Terjual Periode {{ $data->akhir_periode }}</label>
                        <div class="input-group">
                            <input type="text" class="form-control decimal text-right" name="jumlah_terjual" value="{{ $jumlah_terjual }}" autocomplete="off" required readonly/>
                            <div class="input-group-append"><span class="input-group-text">m<sup>3</sup></span></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Jumlah Harga Air Periode {{ $data->akhir_periode }}</label>
                        <div class="input-group">
                            <div class="input-group-prepend"><span class="input-group-text">Rp.</span></div>
                            <input type="text" class="form-control decimal text-right" name="harga_air" value="{{ $harga_air }}" autocomplete="off" required readonly/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Rata-rata Harga Air Periode {{ $data->akhir_periode }}</label>
                        <div class="input-group">
                            <div class="input-group-prepend"><span class="input-group-text">Rp.</span></div>
                            <input type="text" class="form-control text-right decimal" name="rata_harga_air" value="{{ $rata_harga_air }}" autocomplete="off" required/>
                        </div>
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
        function set_rek_baru(id) {
            for (let i = id + 1; i < 12; i++) {
                AutoNumeric.getAutoNumericElement('#usulan_pendapatan_air_periode_sambung_baru' + i).set($("#usulan_pendapatan_air_periode_sambung_baru" + id).val());
            }
        }
        function set_pasif(id) {
            for (let i = id + 1; i < 12; i++) {
                AutoNumeric.getAutoNumericElement('#usulan_pendapatan_air_periode_sambung_pasif' + i).set($("#usulan_pendapatan_air_periode_sambung_pasif" + id).val());
            }
        }
        function set_sambung_kembali(id) {
            for (let i = id + 1; i < 12; i++) {
                AutoNumeric.getAutoNumericElement('#usulan_pendapatan_air_periode_sambung_kembali' + i).set($("#usulan_pendapatan_air_periode_sambung_kembali" + id).val());
            }
        }

        AutoNumeric.multiple('.decimal', {
            modifyValueOnWheel : false,
            minimumValue: "0"
        });
    </script>
@endpush
