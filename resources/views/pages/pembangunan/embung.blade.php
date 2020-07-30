<div class="tab-pane fade {{ $aksi == 'edit'? '': 'active show' }}" id="default-tab-2">
    <div class="row">
        <div class="col-md-7">
            <div class="form-group">
                <label class="control-label">Nama Embung</label>
                <input class="form-control" type="text" name="embung_nama" value="{{ $aksi == 'edit'? $data->embung_nama: old('embung_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" {{ $aksi == 'edit'? 'readonly': '' }} />
            </div>
            <div class="form-group" id="catatan">
                <label class="control-label">Keterangan</label>
                <textarea class="form-control" rows="3" id="embung_keterangan" name="embung_keterangan" {{ $aksi == 'edit'? 'readonly': '' }}>{{ $aksi == 'edit'? $data->embung_keterangan: old('embung_keterangan') }}</textarea>
            </div>
        </div>
        <div class="col-md-5">
            <div class="note note-primary">
                <h5>Data Teknik</h5>
                <div class="form-group">
                    <label class="control-label">CA (KM<sup>2</sup>)</label>
                    <input class="form-control decimal text-right" type="text" name="embung_data_teknik_ca_km" value="{{ $aksi == 'edit'? $data->embung_data_teknik_ca_km: old('embung_data_teknik_ca_km') }}" autocomplete="off" {{ $aksi == 'edit'? 'readonly': '' }} />
                </div>
                <div class="form-group">
                    <label class="control-label">Luas Genangan (Ha)	</label>
                    <input class="form-control decimal text-right" type="text" name="embung_data_teknik_luasan_genangan" value="{{ $aksi == 'edit'? $data->embung_data_teknik_luasan_genangan: old('embung_data_teknik_luasan_genangan') }}" autocomplete="off" {{ $aksi == 'edit'? 'readonly': '' }} />
                </div>
                <div class="form-group">
                    <label class="control-label">Tipe Konstruksi</label>
                    <input class="form-control" type="text" name="embung_data_teknik_tipe_konstruksi" value="{{ $aksi == 'edit'? $data->embung_data_teknik_tipe_konstruksi: old('embung_data_teknik_tipe_konstruksi') }}" autocomplete="off" {{ $aksi == 'edit'? 'readonly': '' }} />
                </div>
                <div class="form-group">
                    <label class="control-label">Volume (m<sup>3</sup>)</label>
                    <input class="form-control decimal text-right" type="text" name="embung_data_teknik_volume" value="{{ $aksi == 'edit'? $data->embung_data_teknik_volume: old('embung_data_teknik_volume') }}" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }}/>
                </div>
                <div class="form-group">
                    <label class="control-label">L (m)</label>
                    <input class="form-control decimal text-right" type="text" name="embung_data_teknik_l" value="{{ $aksi == 'edit'? $data->embung_data_teknik_l: old('embung_data_teknik_l') }}" autocomplete="off" {{ $aksi == 'edit'? 'readonly': '' }} />
                </div>
                <div class="form-group">
                    <label class="control-label">H (m)</label>
                    <input class="form-control decimal text-right" type="text" name="embung_data_teknik_h" value="{{ $aksi == 'edit'? $data->embung_data_teknik_h: old('embung_data_teknik_h') }}" autocomplete="off" {{ $aksi == 'edit'? 'readonly': '' }} />
                </div>
                <div class="form-group">
                    <label class="control-label">Lebar Spillway (m)</label>
                    <input class="form-control decimal text-right" type="text" name="embung_data_teknik_lebar_spillway" value="{{ $aksi == 'edit'? $data->embung_data_teknik_lebar_spillway: old('embung_data_teknik_lebar_spillway') }}" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }} />
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end tab-pane -->
