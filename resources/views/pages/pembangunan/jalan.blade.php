<div class="tab-pane fade {{ !$aksi == 'edit'? 'active show': '' }}" id="default-tab-2">
    <div class="row">
        <div class="col-md-7">
            <div class="form-group">
                <label class="control-label">Ruas Jalan</label>
                <input class="form-control" type="number" name="jalan_ruas" value="{{ $aksi == 'edit'? $data->jalan_ruas: old('jalan_ruas') }}" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }} />
            </div>
            <div class="form-group">
                <label class="control-label">Sub Ruas Jalan</label>
                <input class="form-control" type="number" name="jalan_subruas" value="{{ $aksi == 'edit'? $data->jalan_subruas: old('jalan_subruas') }}" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }} />
            </div>
            <div class="form-group">
                <label class="control-label">Nama Jalan</label>
                <input class="form-control" type="text" name="jalan_nama" value="{{ $aksi == 'edit'? $data->jalan_nama: old('jalan_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }} />
            </div>
            <div class="form-group" id="catatan">
                <label class="control-label">Keterangan</label>
                <textarea class="form-control" rows="3" id="jalan_keterangan" name="jalan_keterangan" {{ $aksi == 'edit'? 'readonly': '' }}>{{ $aksi == 'edit'? $data->jalan_keterangan: old('jalan_keterangan') }}</textarea>
            </div>
        </div>
        <div class="col-md-5">
            <div class="note note-primary">
                <h5>Data Teknik</h5>
                <div class="form-group">
                    <label class="control-label">Panjang</label>
                    <input class="form-control decimal text-right" type="text" name="jalan_panjang" value="{{ $aksi == 'edit'? $data->jalan_panjang: old('jalan_panjang') }}" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }} />
                </div>
                <div class="form-group">
                    <label class="control-label">Lebar</label>
                    <input class="form-control" type="text" name="jalan_lebar" value="{{ $aksi == 'edit'? $data->jalan_lebar: old('jalan_lebar') }}" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }} />
                </div>
            </div>
        </div>
    </div>
</div>
