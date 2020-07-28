<div class="tab-pane fade active show" id="default-tab-2">
    <div class="form-group">
        <label class="control-label">Ruas Jalan</label>
        <input class="form-control" type="number" name="jalan_ruas" value="{{ old('jalan_ruas') }}" autocomplete="off"  />
    </div>
    <div class="form-group">
        <label class="control-label">Sub Ruas Jalan</label>
        <input class="form-control" type="number" name="jalan_subruas" value="{{ old('jalan_subruas') }}" autocomplete="off"  />
    </div>
    <div class="form-group">
        <label class="control-label">Nama Jalan</label>
        <input class="form-control" type="text" name="jalan_nama" value="{{ old('jalan_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
    </div>
    <div class="form-group">
        <label class="control-label">Panjang</label>
        <input class="form-control decimal text-right" type="text" name="jalan_panjang" value="{{ old('jalan_panjang') }}" autocomplete="off"  />
    </div>
    <div class="form-group">
        <label class="control-label">Lebar</label>
        <input class="form-control decimal text-right" type="text" name="jalan_lebar" value="{{ old('jalan_lebar') }}" autocomplete="off"  />
    </div>
    <div class="form-group" id="catatan">
        <label class="control-label">Keterangan</label>
        <textarea class="form-control" rows="3" id="jalan_keterangan" name="jalan_keterangan">{{ old('jalan_keterangan') }}</textarea>
    </div>
</div>
<div class="tab-pane fade" id="default-tab-3">
    @include('includes.component.leaflet')
</div>
