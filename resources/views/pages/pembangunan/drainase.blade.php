<div class="tab-pane fade {{ $aksi == 'edit'? '': 'active show' }}" id="default-tab-2">
    <div class="form-group">
        <label class="control-label">Nama Kawasan</label>
        <input class="form-control" type="text" name="drainase_nama" value="{{ $aksi == 'edit'? $data->drainase_nama: old('drainase_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" {{ $aksi == 'edit'? 'readonly': '' }}/>
    </div>
    <div class="form-group">
        <label class="control-label">Panjang (m)</label>
        <input class="form-control decimal text-right" type="text" name="drainase_panjang" value="{{ $aksi == 'edit'? $data->drainase_panjang: old('drainase_panjang') }}" autocomplete="off" {{ $aksi == 'edit'? 'readonly': '' }}/>
    </div>
    <div class="form-group" id="catatan">
        <label class="control-label">Keterangan</label>
        <textarea class="form-control" rows="3" id="drainase_keterangan" name="drainase_keterangan" {{ $aksi == 'edit'? 'readonly': '' }}>{{ $aksi == 'edit'? $data->drainase_keterangan: old('drainase_keterangan') }}</textarea>
    </div>
</div>
<!-- end tab-pane -->
