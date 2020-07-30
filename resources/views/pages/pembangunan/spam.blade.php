<div class="tab-pane fade {{ $aksi == 'edit'? '': 'active show' }}" id="default-tab-2">
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label class="control-label">Nama Unit</label>
                <input class="form-control" type="text" name="spam_nama_unit" value="{{ $aksi == 'edit'? $data->spam_nama_unit: old('spam_nama_unit') }}" autocomplete="off" required  {{ $aksi == 'edit'? 'readonly': '' }}/>
            </div>
            <div class="form-group" id="catatan">
                <label class="control-label">Keterangan</label>
                <textarea class="form-control" rows="3" id="spam_keterangan" name="spam_keterangan" {{ $aksi == 'edit'? 'readonly': '' }}>{{ $aksi == 'edit'? $data->spam_keterangan: old('spam_keterangan') }}</textarea>
            </div>
        </div>
        <div class="col-md-6">
            <div class="note note-primary">
                <h5>Kapasitas</h5>
                <div class="form-group">
                    <label class="control-label">Terpasang</label>
                    <input class="form-control decimal text-right" type="text" name="spam_kapasitas_terpasang" value="{{ $aksi == 'edit'? $data->spam_kapasitas_terpasang: old('spam_kapasitas_terpasang') }}" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }}/>
                </div>
                <div class="form-group">
                    <label class="control-label">Produksi</label>
                    <input class="form-control decimal text-right" type="text" name="spam_kapasitas_produksi" value="{{ $aksi == 'edit'? $data->spam_kapasitas_produksi: old('spam_kapasitas_produksi') }}" autocomplete="off" {{ $aksi == 'edit'? 'readonly': '' }} />
                </div>
                <div class="form-group">
                    <label class="control-label">Distribusi</label>
                    <input class="form-control decimal text-right" type="text" name="spam_kapasitas_distribusi" value="{{ $aksi == 'edit'? $data->spam_kapasitas_distribusi: old('spam_kapasitas_distribusi') }}" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }}/>
                </div>
                <div class="form-group">
                    <label class="control-label">Idle</label>
                    <input class="form-control decimal text-right" type="text" name="spam_kapasitas_idle" value="{{ $aksi == 'edit'? $data->spam_kapasitas_idle: old('spam_kapasitas_idle') }}" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }}/>
                </div>
                <hr>
                <div class="form-group">
                    <label class="control-label">Jumlah SR</label>
                    <input class="form-control decimal text-right" type="text" name="spam_jumlah_sr" value="{{ $aksi == 'edit'? $data->spam_jumlah_sr: old('spam_jumlah_sr') }}" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }}/>
                </div>
                <div class="form-group">
                    <label class="control-label">Jiwa Terlayani</label>
                    <input class="form-control decimal text-right" type="text" name="spam_jumlah_jiwa_terlayani" value="{{ $aksi == 'edit'? $data->spam_jumlah_jiwa_terlayani: old('spam_jumlah_jiwa_terlayani') }}" autocomplete="off" {{ $aksi == 'edit'? 'readonly': '' }} />
                </div>
            </div>
        </div>
    </div>
</div>
