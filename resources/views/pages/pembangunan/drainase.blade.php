
<!-- begin tab-pane -->
<div class="tab-pane fade active show" id="default-tab-2">
    <div class="form-group">
        <label class="control-label">Nama Kawasan</label>
        <input class="form-control" type="text" name="drainase_nama" value="{{ old('drainase_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
    </div>
    <div class="form-group">
        <label class="control-label">Panjang (m)</label>
        <input class="form-control decimal text-right" type="text" name="drainase_panjang" value="{{ old('drainase_panjang') }}" autocomplete="off"  />
    </div>
</div>
<!-- end tab-pane -->