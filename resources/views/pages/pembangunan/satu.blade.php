<div id="step-1">

<form action="{{ url('pembangunan/tambah/1') }}" name="step" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
    @csrf
    <div class="form-group">
        <label class="control-label">Uraian</label>
        <input class="form-control" type="text" name="pembangunan_uraian" value="{{ old('pembangunan_uraian') }}" autocomplete="off" required />
    </div>
    <div class="form-group">
        <label class="control-label">Tahun</label>
        <select class="form-control selectpicker cari" name="pembangunan_tahun" data-live-search="true" data-size="5" data-style="btn-info" data-width="100%" required>
            @for($i=2015; $i <= date('Y') + 5; $i++)
            @php
                $selected = '';
                if(old('pembangunan_tahun')){
                    if(old('pembangunan_tahun') == $i){
                        $selected = 'selected';
                    }
                }else{
                    if (date('Y') == $i) {
                        $selected = 'selected';
                    }
                }
            @endphp
            <option value="{{ $i }}" {{ $selected }}>{{ $i }}</option>
            @endfor
        </select>
    </div>
    <div class="form-group">
        <label class="control-label">Nilai</label>
        <input class="form-control decimal text-right" type="text" name="pembangunan_nilai" value="{{ old('pembangunan_nilai') }}" autocomplete="off"  required/>
    </div>
    <div class="form-group">
        <label class="control-label">Jenis Pembangunan</label>
        <select class="form-control selectpicker" name="pembangunan_jenis" id="pembangunan_jenis" data-live-search="true" data-style="btn-success" onchange="jenis_infrastruktur()" data-width="100%" required>
            <option value="Kewenangan Provinsi" {{ old('pembangunan_jenis') == 'Kewenangan Provinsi'? 'selected': ''}}>Kewenangan Provinsi</option>
            <option value="Pokir" {{ old('pembangunan_jenis') == 'Pokir'? 'selected': ''}}>POKIR</option>
        </select>
    </div>
    <div class="form-group">
        <label class="control-label">Penanggung Jawab</label>
        <input class="form-control" type="text" name="pembangunan_penanggung_jawab" value="{{ old('pembangunan_penanggung_jawab') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  />
    </div>
    <div class="form-group">
        <label class="control-label">Jenis Infrastruktur</label>
        <select class="form-control selectpicker" name="infrastruktur_jenis" id="infrastruktur_jenis" data-live-search="true" data-style="btn-danger" data-width="100%" required>
            <option value="Jalan" {{ old('infrastruktur_jenis') == 'Jalan'? 'selected': ''}}>Bina Marga - Jalan</option>
            <option value="Jembatan" {{ old('infrastruktur_jenis') == 'Jembatan'? 'selected': ''}}>Bina Marga - Jembatan</option>
            <option value="Drainase" {{ old('infrastruktur_jenis') == 'Drainase'? 'selected': ''}}>Cipta Karya - Drainase</option>
            <option value="SPAM" {{ old('infrastruktur_jenis') == 'SPAM'? 'selected': ''}}>Cipta Karya - SPAM</option>
            <option value="Sumur" {{ old('infrastruktur_jenis') == 'Sumur'? 'selected': ''}}>Cipta Karya - Sumur</option>
            <option value="Bendungan" {{ old('infrastruktur_jenis') == 'Bendungan'? 'selected': ''}}>SDA - Bendungan</option>
            <option value="Daerah Irigasi" {{ old('infrastruktur_jenis') == 'Daerah Irigasi'? 'selected': ''}}>SDA - Daerah Irigasi</option>
            <option value="DAS" {{ old('infrastruktur_jenis') == 'DAS'? 'selected': ''}}>SDA - Daerah Aliran Sungai</option>
            <option value="Embung" {{ old('infrastruktur_jenis') == 'Embung'? 'selected': ''}}>SDA - Embung</option>
            <option value="Mata Air" {{ old('infrastruktur_jenis') == 'Mata Air'? 'selected': ''}}>SDA - Mata Air</option>
        </select>
    </div>
    <div class="form-group">
        <label class="control-label">Sumber Dana</label>
        <select class="form-control selectpicker" name="sumber_dana_id" data-live-search="true" data-style="btn-warning" data-width="100%" required>
            @foreach ($data_sumber_dana as $row)
            @php
                $selected = '';
                if(old('sumber_dana_id') == $row->sumber_dana_id){
                    $selected = 'selected';
                }
            @endphp
                <option value="{{ $row->sumber_dana_id }}" {{ $selected }}>{{ $row->sumber_dana_nama }}</option>
            @endforeach
        </select>
    </div>
</form>
</div>
