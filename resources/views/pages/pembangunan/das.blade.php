<div class="tab-pane fade {{ !$aksi == 'edit'? 'active show': '' }}" id="default-tab-2">
    <div class="row">
        <div class="col-md-7">
            <div class="form-group">
                <label class="control-label">Kode WS</label>
                <input class="form-control" type="text" name="das_kode_ws" value="{{ $aksi == 'edit'? $data->das_kode_ws: old('das_kode_ws') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" {{ $aksi == 'edit'? 'readonly': '' }}/>
            </div>
            <div class="form-group">
                <label class="control-label">Pola Aliran (Drainage Pattern)</label>
                <input class="form-control" type="text" name="das_pola_aliran" value="{{ $aksi == 'edit'? $data->das_pola_aliran: old('das_pola_aliran') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" {{ $aksi == 'edit'? 'readonly': '' }}/>
            </div>
            <div class="form-group">
                <label class="control-label">Nama</label>
                <input class="form-control" type="text" name="das_nama" value="{{ $aksi == 'edit'? $data->das_nama: old('das_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" {{ $aksi == 'edit'? 'readonly': '' }}/>
            </div>
            <div class="form-group" id="catatan">
                <label class="control-label">Keterangan</label>
                <textarea class="form-control" rows="3" id="das_keterangan" name="das_keterangan" {{ $aksi == 'edit'? 'readonly': '' }}>{{ $aksi == 'edit'? $data->das_keterangan: old('das_keterangan') }}</textarea>
            </div>
        </div>
        <div class="col-md-5">
            <div class="note note-primary">
                <h5>Data Teknik</h5>
                <div class="form-group">
                    <label class="control-label">Luas (Km<sup>2</sup>)</label>
                    <input class="form-control decimal text-right" type="text" name="das_luas" value="{{ $aksi == 'edit'? $data->das_luas: (old('das_luas')?? 0) }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" {{ $aksi == 'edit'? 'readonly': '' }}/>
                </div>
                <div class="form-group">
                    <label class="control-label">Banyaknya Orde Sungai</label>
                    <input class="form-control" type="number" name="das_jumlah_orde_sungai" value="{{ $aksi == 'edit'? $data->das_jumlah_orde_sungai: old('das_jumlah_orde_sungai') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" {{ $aksi == 'edit'? 'readonly': '' }}/>
                </div>
                <div class="form-group">
                    <label class="control-label">Jumlah Desa</label>
                    <input class="form-control" type="number" name="das_jumlah_desa" value="{{ $aksi == 'edit'? $data->das_jumlah_desa: old('das_jumlah_desa') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off" {{ $aksi == 'edit'? 'readonly': '' }}/>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end tab-pane -->
