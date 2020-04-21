<div id="step-2">
    <!-- begin fieldset -->
    <form action="/usulanpendapatanair/tambah/2" name="step" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
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
                    <a href="#default-tab-2" data-toggle="tab" class="nav-link active">
                        <span class="d-sm-none">Tab 2</span>
                        <span class="d-sm-block d-none">Jumlah Pelanggan</span>
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
                        <input type="text" class="form-control" name="akun_keterangan" value="{{ $akun->akun_keterangan }}" autocomplete="off" required readonly/>
                        <input type="hidden" name="akun_kode" value="{{ $akun->akun_kode }}" required />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Golongan</label>
                        <input type="text" class="form-control" name="golongan_keterangan" value="{{ $golongan->golongan_ID }} - {{ $golongan->golongan_nama }}" autocomplete="off" required readonly/>
                        <input type="hidden" name="golongan_id" value="{{ $golongan->golongan_ID }}" required/>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Keterangan</label>
                        <textarea class="form-control" rows="3" name="usulan_pendapatan_air_keterangan" readonly>{{ $data->usulan_pendapatan_air_keterangan }}</textarea>
                    </div>
                </div>
                <div class="tab-pane fade active show" id="default-tab-2">
                    <div class="form-group">
                        <label class="control-label">Rekening Terakhir Tahun {{ $data->periode_tahun - 1 }}</label>
                        <input type="text" class="form-control" name="akhir_periode" value="{{ $akhir_periode }}" autocomplete="off" required readonly/>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Jumlah Pelanggan s/d Akhir Periode {{ $akhir_periode }}</label>
                        <input type="text" class="form-control integer text-right" name="jumlah_pelanggan" value="{{ number_format($jumlah_pelanggan) }}" autocomplete="off" required/>
                    </div>
                    @if (substr($akhir_periode, 0, 2) < '12')
                    <div class="form-group">
                        <label class="control-label">Perkiraan Penambahan Jumlah Pelanggan Periode {{ $next_periode }} s/d Akhir Tahun {{ $data->periode_tahun - 1 }}</label>
                        <input type="text" class="form-control text-right integer" id="jumlah_pelanggan_perkiraan" name="jumlah_pelanggan_perkiraan" value="{{ old('jumlah_pelanggan_perkiraan')? old('jumlah_pelanggan_perkiraan'): 0 }}" autocomplete="off" required/>
                    </div>
                    @endif
                </div>
            </div>
        </fieldset>
    </form>
    <!-- end fieldset -->
</div>

@push('scripts')
	<script src="/assets/plugins/autonumeric/autoNumeric.js"></script>
	<script>
        AutoNumeric.multiple('.integer', {
            decimalPlaces : 0,
            modifyValueOnWheel : false,
            minimumValue: "0"
        });
    </script>
@endpush
