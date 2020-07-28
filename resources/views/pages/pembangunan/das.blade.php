<!-- begin tab-pane -->
<div class="tab-pane fade active show" id="default-tab-2">
    <div class="form-group">
        <label class="control-label">Kode WS</label>
        <input class="form-control" type="text" name="das_kode_ws" value="{{ old('das_kode_ws') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
    </div>
    <div class="form-group">
        <label class="control-label">Pola Aliran (Drainage Pattern)</label>
        <input class="form-control" type="text" name="das_pola_aliran" value="{{ old('das_pola_aliran') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
    </div>
    <div class="form-group">
        <label class="control-label">Nama</label>
        <input class="form-control" type="text" name="das_nama" value="{{ old('das_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
    </div>
    <div class="form-group">
        <label class="control-label">Luas (Km<sup>2</sup>)</label>
        <input class="form-control decimal text-right" type="text" name="das_luas" value="{{ old('das_luas') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
    </div>
    <div class="form-group">
        <label class="control-label">Banyaknya Orde Sungai</label>
        <input class="form-control" type="number" name="das_jumlah_orde_sungai" value="{{ old('das_jumlah_orde_sungai') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
    </div>
    <div class="form-group">
        <label class="control-label">Jumlah Desa</label>
        <input class="form-control" type="number" name="das_jumlah_desa" value="{{ old('das_jumlah_desa') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
    </div>
    <div class="form-group" id="catatan">
        <label class="control-label">Keterangan</label>
        <textarea class="form-control" rows="3" id="das_keterangan" name="das_keterangan">{{ old('das_keterangan') }}</textarea>
    </div>
</div>
<!-- end tab-pane -->
