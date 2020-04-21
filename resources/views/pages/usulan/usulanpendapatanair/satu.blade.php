<div id="step-1">
    <!-- begin fieldset -->
    <form action="/usulanpendapatanair/tambah/1" name="step" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
        @csrf
        <fieldset>
            <div class="form-group">
                <label class="control-label">Tahun</label>
                <select class="form-control selectpicker" name="periode_tahun" data-live-search="true" data-style="btn-warning" data-width="100%">
                    @foreach ($periode as $row)
                    <option value="{{ $row }}" {{ (date('Y') == $row || old('periode_tahun') == $row? 'selected': '') }}>{{ $row }}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label class="control-label">Wilayah</label>
                <select class="form-control selectpicker" name="wilayah_nama" id="wilayah_nama" data-size="5" data-live-search="true" data-style="btn-danger" data-width="100%" required>
                    @foreach($wilayah as $row)
                    @php
                        $selected = '';
                        if(old('wilayah_nama')){
                            $selected =  old('wilayah_nama') == $row->wilayah_nama? 'selected': '';
                        }
                    @endphp
                    <option value="{{ $row->wilayah_nama }}" {{ $selected }}>{{ $row->wilayah_nama }}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label class="control-label">Akun</label>
                <select class="form-control selectpicker" name="akun_kode" id="akun_kode" data-size="5" data-live-search="true" data-style="btn-primary" data-width="100%" required>
                    @foreach($pendapatan as $row)
                    @php
                        $selected = '';
                        if(old('akun_kode')){
                            $selected =  old('akun_kode') == $row->akun_kode? 'selected': '';
                        }
                    @endphp
                    <option value="{{ $row->akun_kode }}" {{ $selected }}>{{ $row->akun_keterangan }}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label class="control-label">Golongan</label>
                <select class="form-control selectpicker" name="golongan_id" id="golongan_id" onchange="tarif()" data-live-search="true" data-size="5" data-style="btn-success" data-width="100%" required>
                    @foreach($golongan as $row)
                    @php
                        $selected = '';
                        if(old('golongan_id')){
                            $selected =  old('golongan_id') == $row->golongan_ID? 'selected': '';
                        }
                    @endphp
                    <option value="{{ $row->golongan_ID }}" {{ $selected }}>{{ $row->golongan_ID." - ".$row->golongan_nama }}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label class="control-label">Keterangan</label>
                <textarea class="form-control" rows="3" name="usulan_pendapatan_air_keterangan">{{ old('usulan_pendapatan_air_keterangan') }}</textarea>
            </div>
        </fieldset>
    </form>
    <!-- end fieldset -->
</div>
