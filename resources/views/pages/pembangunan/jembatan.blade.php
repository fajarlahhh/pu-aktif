
<!-- begin tab-pane -->
<div class="tab-pane fade active show" id="default-tab-2">
    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <label class="control-label">Nomor Jembatan</label>
                <input class="form-control" type="text" name="jembatan_nomor" value="{{ old('jembatan_nomor') }}" autocomplete="off"  />
            </div>
            <div class="form-group">
                <label class="control-label">Nama Jembatan</label>
                <input class="form-control" type="text" name="jembatan_nama" value="{{ old('jembatan_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
            </div>
            <div class="form-group">
                <label class="control-label">Panjang</label>
                <input class="form-control decimal text-right" type="text" name="jembatan_dimensi_panjang" value="{{ old('jembatan_dimensi_panjang') }}" autocomplete="off"  />
            </div>
            <div class="form-group">
                <label class="control-label">Lebar</label>
                <input class="form-control decimal text-right" type="text" name="jembatan_dimensi_lebar" value="{{ old('jembatan_dimensi_lebar') }}" autocomplete="off"  />
            </div>
            <div class="form-group">
                <label class="control-label">Bentang</label>
                <input class="form-control decimal text-right" type="text" name="jembatan_dimensi_bentang" value="{{ old('jembatan_dimensi_bentang') }}" autocomplete="off"  />
            </div>
            <div class="form-group" id="catatan">
                <label class="control-label">Keterangan</label>
                <textarea class="form-control" rows="3" id="jembatan_keterangan" name="jembatan_keterangan">{{ old('jembatan_keterangan') }}</textarea>
            </div>
            <div class="form-group">
                <label class="control-label">Ruas Jalan</label>
                <select class="form-control selectpicker" name="jalan_id" id="jalan_id" data-live-search="true" data-style="btn-info" data-width="100%" data-size="5" onchange="caridesa()">
                    <option value="">Pilih Jalan</option>
                    @foreach ($jalan as $row)
                    <option value="{{ $row->jalan_id }}" {{ $aksi == 'edit' && $data->jalan_id == $row->jalan_id? 'selected': '' }}>{{ $row->jalan_nama }}</option>
                    @endforeach
                </select>
            </div>
        </div>
        <div class="col-md-4">
            <div class="note note-primary">
                <h5>Bangunan Atas</h5>
                <div class="form-group">
                    <label class="control-label">Tipe</label>
                    <input class="form-control" type="text" name="jembatan_bangunan_atas_tipe" value="{{ old('jembatan_bangunan_atas_tipe') }}" autocomplete="off"  />
                </div>
                <div class="form-group">
                    <label class="control-label">Kondisi</label>
                    <input class="form-control decimal text-right" type="text" name="jembatan_bangunan_atas_kondisi" value="{{ old('jembatan_bangunan_atas_kondisi') }}" autocomplete="off"  />
                </div>
            </div>
            <div class="note note-danger">
                <h5>Bangunan Bawah</h5>
                <div class="form-group">
                    <label class="control-label">Tipe</label>
                    <input class="form-control" type="text" name="jembatan_bangunan_bawah_tipe" value="{{ old('jembatan_bangunan_bawah_tipe') }}" autocomplete="off"  />
                </div>
                <div class="form-group">
                    <label class="control-label">Kondisi</label>
                    <input class="form-control decimal text-right" type="text" name="jembatan_bangunan_bawah_kondisi" value="{{ old('jembatan_bangunan_bawah_kondisi') }}" autocomplete="off"  />
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="note note-warning">
                <h5>Pondasi</h5>
                <div class="form-group">
                    <label class="control-label">Tipe</label>
                    <input class="form-control" type="text" name="jembatan_bangunan_pondasi_tipe" value="{{ old('jembatan_bangunan_pondasi_tipe') }}" autocomplete="off"  />
                </div>
                <div class="form-group">
                    <label class="control-label">Kondisi</label>
                    <input class="form-control decimal text-right" type="text" name="jembatan_bangunan_pondasi_kondisi" value="{{ old('jembatan_bangunan_pondasi_kondisi') }}" autocomplete="off"  />
                </div>
            </div>
            <div class="note note-success">
                <h5>Lantai</h5>
                <div class="form-group">
                    <label class="control-label">Tipe</label>
                    <input class="form-control" type="text" name="jembatan_bangunan_lantai_tipe" value="{{ old('jembatan_bangunan_lantai_tipe') }}" autocomplete="off"  />
                </div>
                <div class="form-group">
                    <label class="control-label">Kondisi</label>
                    <input class="form-control decimal text-right" type="text" name="jembatan_bangunan_lantai_kondisi" value="{{ old('jembatan_bangunan_lantai_kondisi') }}" autocomplete="off"  />
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end tab-pane -->
<!-- begin tab-pane -->
<div class="tab-pane fade" id="default-tab-3">
    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <label class="control-label">Kabupaten/Kota</label>
                <select class="form-control selectpicker" name="kabupaten_kota_id" id="kabupaten_kota_id" data-live-search="true" data-style="btn-purple" data-width="100%" onchange="caridesa()">
                    <option value="">Pilih Kabupaten/Kota</option>
                    @foreach ($kabupaten_kota as $row)
                    <option value="{{ $row->kabupaten_kota_id }}" {{ $aksi == 'edit' && $data->kabupaten_kota_id == $row->kabupaten_kota_id? 'selected': '' }}>{{ $row->kabupaten_kota_nama }}</option>
                    @endforeach
                </select>
            </div>
        </div>
        <div class="col-md-8">
            @include('includes.component.leaflet')
        </div>
    </div>
</div>
<!-- end tab-pane -->
