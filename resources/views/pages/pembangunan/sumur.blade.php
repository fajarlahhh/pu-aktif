
<!-- begin tab-pane -->
<div class="tab-pane fade active show" id="default-tab-2">
    <div class="form-group">
        <label class="control-label">Kode Sumur</label>
        <input class="form-control" type="text" name="sumur_kode" value="{{ old('sumur_kode') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
    </div>
    <div class="form-group">
        <label class="control-label">Tahun Pembuatan</label>
        <input class="form-control" type="text" name="sumur_tahun_pembuatan" value="{{ old('sumur_tahun_pembuatan') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
    </div>
    <div class="form-group">
        <label class="control-label">Debit</label>
        <input class="form-control" type="text" name="sumur_debit" value="{{ old('sumur_debit') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
    </div>
    <div class="form-group">
        <label class="control-label">Kelurahan/Desa</label>
        <select class="form-control selectpicker" name="kelurahan_desa_id" id="kelurahan_desa_id" data-live-search="true" data-style="btn-info" data-width="100%" data-size="5">
        </select>
    </div>
</div>
<!-- end tab-pane -->