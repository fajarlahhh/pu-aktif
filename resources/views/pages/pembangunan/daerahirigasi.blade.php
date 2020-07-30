<div class="tab-pane fade {{ $aksi == 'edit'? '': 'active show' }}" id="default-tab-2">
    <div class="form-group">
        <label class="control-label">Daerah Irigasi</label>
        <input class="form-control" type="text" name="daerah_irigasi_nama" value="{{ $aksi == 'edit'? $data->daerah_irigasi_nama: old('daerah_irigasi_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }}/>
    </div>
    <div class="form-group">
        <label class="control-label">Luas Area Potensial</label>
        <input class="form-control decimal text-right" type="text" name="daerah_irigasi_luas_area_potensial" value="{{ $aksi == 'edit'? $data->daerah_irigasi_luas_area_potensial: old('daerah_irigasi_luas_area_potensial') }}" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }}/>
    </div>
    <div class="form-group" id="catatan">
        <label class="control-label">Keterangan</label>
        <textarea class="form-control" rows="3" id="daerah_irigasi_keterangan" name="daerah_irigasi_keterangan" {{ $aksi == 'edit'? 'readonly': '' }}>{{ $aksi == 'edit'? $data->daerah_irigasi_keterangan: old('daerah_irigasi_keterangan') }}</textarea>
    </div>
</div>
<!-- end tab-pane -->
