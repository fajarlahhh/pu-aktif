<div id="step-2" class="p-l-5 p-r-5 p-b-0">

    <form action="{{ route('pembangunan.simpan') }}" name="step" method="post" data-parsley-validate="true" data-parsley-errors-messages-disabled="">
        @csrf
        <!-- begin nav-tabs -->
        <ul class="nav nav-tabs">
            <li class="nav-items">
                <a href="#default-tab-1" data-toggle="tab" class="nav-link">
                    <span class="d-sm-none">Tab 1</span>
                    <span class="d-sm-block d-none">Detail Pembangunan</span>
                </a>
            </li>
            <li class="nav-items">
                <a href="#default-tab-2" data-toggle="tab" class="nav-link active">
                    <span class="d-sm-none">Tab 2</span>
                    <span class="d-sm-block d-none">Data Teknis</span>
                </a>
            </li>
            <li class="nav-items">
                <a href="#default-tab-3" data-toggle="tab" onclick="initMap()" class="nav-link">
                    <span class="d-sm-none">Tab 3</span>
                    <span class="d-sm-block d-none">Lokasi</span>
                </a>
            </li>
        </ul>
        <!-- end nav-tabs -->
        <!-- begin tab-content -->
        <div class="tab-content">
            <!-- begin tab-pane -->
            <div class="tab-pane fade" id="default-tab-1">
                <div class="form-group">
                    <label class="control-label">Uraian</label>
                    <input class="form-control" type="text" name="pembangunan_uraian" value="{{ $data->pembangunan_uraian }}" autocomplete="off" readonly />
                </div>
                <div class="form-group">
                    <label class="control-label">Tahun</label>
                    <input class="form-control" type="text" name="pembangunan_tahun" value="{{ $data->pembangunan_tahun }}" autocomplete="off" readonly />
                </div>
                <div class="form-group">
                    <label class="control-label">Nilai</label>
                    <input class="form-control decimal text-right" type="text" name="pembangunan_nilai" value="{{ $data->pembangunan_nilai }}" autocomplete="off"  readonly/>
                </div>
                <div class="form-group">
                    <label class="control-label">Jenis Pembangunan</label>
                    <input class="form-control" type="text" name="pembangunan_jenis" value="{{ $data->pembangunan_jenis }}" autocomplete="off"  readonly/>
                </div>
                <div class="form-group">
                    <label class="control-label">Penanggung Jawab</label>
                    <input class="form-control" type="text" name="pembangunan_penanggung_jawab" value="{{ $data->pembangunan_penanggung_jawab }}" autocomplete="off"  readonly/>
                </div>
                <div class="form-group">
                    <label class="control-label">Jenis Infrastruktur</label>
                    <input class="form-control" type="text" name="infrastruktur_jenis" value="{{ $data->infrastruktur_jenis }}" autocomplete="off"  readonly/>
                </div>
                <div class="form-group">
                    <label class="control-label">Sumber Dana</label>
                    <select class="form-control selectpicker" name="sumber_dana_id" data-live-search="true" data-style="btn-warning" data-width="100%" >
                        @php
                            $selected = '';
                            if($data->sumber_dana_id == $data_sumber_dana->sumber_dana_id){
                                $selected = 'selected';
                            }
                        @endphp
                        <option value="{{ $data_sumber_dana->sumber_dana_id }}" {{ $selected }}>{{ $data_sumber_dana->sumber_dana_nama }}</option>
                    </select>
                </div>
            </div>
            @switch ($data->infrastruktur_jenis)
                @case ('Jalan')
                        @include('pages.pembangunan.jalan')
                @break
                @case ('Jembatan')
                        @include('pages.pembangunan.jembatan')
                @break
                @case ('DAS')
                        @include('pages.pembangunan.das')
                @break
                @case ('Drainase')
                        @include('pages.pembangunan.drainase')
                @break
                @case ('SPAM')
                        @include('pages.pembangunan.spam')
                @break
                @case ('Sumur')
                        @include('pages.pembangunan.sumur')
                @break
                @case ('Bendungan')
                        @include('pages.pembangunan.bendungan')
                @break
                @case ('Daerah Irigasi')
                        @include('pages.pembangunan.daerahirigasi')
                @break
                @case ('Embung')
                        @include('pages.pembangunan.embung')
                @break
                @case ('Mata Air')
                        @include('pages.pembangunan.mataair')
                @break
            @endswitch
            <div class="tab-pane fade" id="default-tab-3">
                <div class="form-group">
                    <label class="control-label">Kabupaten/Kota</label>
                    <select class="form-control selectpicker" name="kabupaten_kota_id" id="kabupaten_kota_id" data-live-search="true" data-style="btn-purple" data-width="100%" onchange="caridesa()">
                        @foreach ($kabupaten_kota as $row)
                        <option value="{{ $row->kabupaten_kota_id }}" {{ old('kabupaten_kota_id') == $row->kabupaten_kota_id? 'selected': '' }}>{{ $row->kabupaten_kota_nama }}</option>
                        @endforeach
                    </select>
                </div>
                    @include('includes.component.leaflet')
                </div>
            </div>
        </div>
        <!-- end tab-content -->
    </form>
    </div>

    @push('scripts')
        <script>
    
            function caridesa(){
                var alamat = $("#kabupaten_kota_id option:selected").text()+", Nusa Tenggara Barat";
                $.get("https://nominatim.openstreetmap.org/?format=json&addressdetails=1&q="+alamat+"&country=Indonesia&limit=1")
                .done(function(data){
                    if(data.length > 0){
                        position = [data[0].lat,data[0].lon];
                        map.setView(position,12);
                    }
                });
            }
            
            function initMap() {
                setTimeout(function() {
                    map.invalidateSize();
                }, 500);
            }
        </script>
    @endpush
