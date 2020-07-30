<div class="tab-pane fade {{ $aksi == 'edit'? '': 'active show' }}" id="default-tab-2">
    <div class="form-group">
        <label class="control-label">Nama Mata Air</label>
        <input class="form-control" type="text" name="mata_air_nama" value="{{ $aksi == 'edit'? $data->mata_air_nama: old('mata_air_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }} />
    </div>
    <div class="form-group">
        <label class="control-label">Debit (ltr/dtk)</label>
        <input class="form-control decimal text-right" type="text" name="mata_air_debit" value="{{ $aksi == 'edit'? $data->mata_air_debit: old('mata_air_debit') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }} />
    </div>
    <div class="form-group" id="catatan">
        <label class="control-label">Keterangan</label>
        <textarea class="form-control" rows="3" id="mata_air_keterangan" name="mata_air_keterangan" {{ $aksi == 'edit'? 'readonly': '' }}>{{ $aksi == 'edit'? $data->mata_air_keterangan: old('mata_air_keterangan') }}</textarea>
    </div>
</div>
