<div class="tab-pane fade {{ $aksi == 'edit'? '': 'active show' }}" id="default-tab-2">
    <div class="form-group">
        <label class="control-label">Kode Sumur</label>
        <input class="form-control" type="text" name="sumur_kode" value="{{ $aksi == 'edit'? $data->sumur_kode: old('sumur_kode') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"   {{ $aksi == 'edit'? 'readonly': '' }}/>
    </div>
    <div class="form-group">
        <label class="control-label">Debit (ltr/dtk)</label>
        <input class="form-control decimal text-right" type="text" name="sumur_debit" value="{{ $aksi == 'edit'? $data->sumur_debit: old('sumur_debit') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }} />
    </div>
    <div class="form-group" id="catatan">
        <label class="control-label">Keterangan</label>
        <textarea class="form-control" rows="3" id="sumur_keterangan" name="sumur_keterangan" {{ $aksi == 'edit'? 'readonly': '' }}>{{ $aksi == 'edit'? $data->sumur_keterangan: old('sumur_keterangan') }}</textarea>
    </div>
</div>
<!-- end tab-pane -->
