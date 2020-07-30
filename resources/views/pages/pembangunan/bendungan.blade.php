<div class="tab-pane fade {{ $aksi == 'edit'? '': 'active show' }}" id="default-tab-2">
    <div class="row">
        <div class="col-md-7">
            <div class="form-group">
                <label class="control-label">Nama Bendungan</label>
                <input class="form-control" type="text" name="bendungan_nama" value="{{ $aksi == 'edit'? $data->bendungan_nama: old('bendungan_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"   {{ $aksi == 'edit'? 'readonly': '' }}/>
            </div>
            <div class="form-group" id="catatan">
                <label class="control-label">Keterangan</label>
                <textarea class="form-control" rows="3" id="bendungan_keterangan" name="bendungan_keterangan" {{ $aksi == 'edit'? 'readonly': '' }}>{{ $aksi == 'edit'? $data->bendungan_keterangan: old('bendungan_keterangan') }}</textarea>
            </div>
        </div>
        <div class="col-md-5">
            <div class="note note-primary">
                <h5>Data Teknik</h5>
                <div class="form-group">
                    <label class="control-label">Tinggi (m)</label>
                    <input class="form-control decimal text-right" type="text" name="bendungan_data_teknik_tinggi" value="{{ $aksi == 'edit'? $data->bendungan_data_teknik_tinggi: old('bendungan_data_teknik_tinggi') }}" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }} />
                </div>
                <div class="form-group">
                    <label class="control-label">Volume (m<sup>3</sup>)</label>
                    <input class="form-control decimal text-right" type="text" name="bendungan_data_teknik_volume" value="{{ $aksi == 'edit'? $data->bendungan_data_teknik_volume: old('bendungan_data_teknik_volume') }}" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }} />
                </div>
                <div class="form-group">
                    <label class="control-label">Pengukuran Bathimetri</label>
                    <input class="form-control decimal text-right" type="text" name="bendungan_data_teknik_bathimetri" value="{{ $aksi == 'edit'? $data->bendungan_data_teknik_bathimetri: old('bendungan_data_teknik_bathimetri') }}" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }} />
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end tab-pane -->
