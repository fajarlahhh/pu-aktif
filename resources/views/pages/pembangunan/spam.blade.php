<div class="tab-pane fade active show" id="default-tab-2">
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label class="control-label">Nama Unit</label>
                <input class="form-control" type="text" name="spam_nama_unit" value="{{ old('spam_nama_unit') }}" autocomplete="off" required />
            </div>
            <div class="form-group">
                <label class="control-label">Tahun Pembuatan</label>
                <input class="form-control" type="number" name="spam_tahun_pembuatan" value="{{ old('spam_tahun_pembuatan') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
            </div>
            <div class="form-group">
                <label class="control-label">Jumlah SR</label>
                <input class="form-control decimal text-right" type="text" name="spam_jumlah_sr" value="{{ old('spam_jumlah_sr') }}" autocomplete="off"  />
            </div>
            <div class="form-group">
                <label class="control-label">Jiwa Terlayani</label>
                <input class="form-control decimal text-right" type="text" name="spam_jumlah_jiwa_terlayani" value="{{ old('spam_jumlah_jiwa_terlayani') }}" autocomplete="off"  />
            </div>
        </div>
        <div class="col-md-6">
            <div class="note note-primary">
                <h5>Kapasitas</h5>
                <div class="form-group">
                    <label class="control-label">Terpasang</label>
                    <input class="form-control decimal text-right" type="text" name="spam_kapasitas_terpasang" value="{{ old('spam_kapasitas_terpasang') }}" autocomplete="off"  />
                </div>
                <div class="form-group">
                    <label class="control-label">Produksi</label>
                    <input class="form-control decimal text-right" type="text" name="spam_kapasitas_produksi" value="{{  old('spam_kapasitas_produksi') }}" autocomplete="off"  />
                </div>
                <div class="form-group">
                    <label class="control-label">Distribusi</label>
                    <input class="form-control decimal text-right" type="text" name="spam_kapasitas_distribusi" value="{{ old('spam_kapasitas_distribusi') }}" autocomplete="off"  />
                </div>
            </div>
        </div>
    </div>
</div>