
@push('css')
<link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
<link href="{{ url('/public/assets/plugins/select2/dist/css/select2.min.css')}}" rel="stylesheet" />
@endpush

<div class="form-group">
    <label class="control-label">Kabupaten/Kota</label>
    <select class="form-control selectpicker" name="kabupaten_kota_id" id="kabupaten_kota_id" data-live-search="true" data-style="btn-purple" data-width="100%" >
        @if ($lokasi && $lokasi['kabupaten_kota_id'])
        <option value="{{ $lokasi['kabupaten_kota_id'] }}">{{ $lokasi['kabupaten_kota_nama'] }}</option>
        @endif
    </select>
</div>
<div class="form-group">
    <label class="control-label">Kecamatan</label>
    <select class="form-control " name="kecamatan_id" id="kecamatan_id" data-live-search="true" data-style="btn-purple" data-width="100%">
        @if ($lokasi && $lokasi['kecamatan_id'])
        <option value="{{ $lokasi['kecamatan_id'] }}">{{ $lokasi['kecamatan_nama'] }}</option>
        @endif
    </select>
</div>
<div class="form-group">
    <label class="control-label">Kelurahan/Desa</label>
    <select class="form-control " name="kelurahan_desa_id" id="kelurahan_desa_id" data-live-search="true" data-style="btn-purple" data-width="100%">
        @if ($lokasi && $lokasi['kelurahan_desa_id'])
        <option value="{{ $lokasi['kelurahan_desa_id'] }}">{{ $lokasi['kelurahan_desa_nama'] }}</option>
        @endif
    </select>
</div>
@push('scripts')
<script src="{{ url('/public/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
<script src="{{ url('/public/assets/plugins/select2/dist/js/select2.min.js') }}"></script>
<script>
    $('#kabupaten_kota_id').on('change', function(){
        $("#kecamatan_id").val(null).trigger('change');
        set_map();
    });

    $('#kecamatan_id').on('change', function(){
        $("#kelurahan_desa_id").val(null).trigger('change');
        set_map();
    });

    $('#kelurahan_desa_id').on('change', function(){
        set_map();
    });

    $('document').ready(function(){
        @if (!$map)
            return;
        @else
            @if ($map['marker'] || $map['polygon'] || $map['polyline'])
                return;
            @endif
        @endif
        set_map();
    });

    function set_map() {
        if ($("#kabupaten_kota_id option:selected").text()) {
            var alamat = $("#kelurahan_desa_id option:selected").text() + ", " + $("#kecamatan_id option:selected").text() + ", " + $("#kabupaten_kota_id option:selected").text() + ", Nusa Tenggara Barat";
            if (map) {
                $.get("https://nominatim.openstreetmap.org/?format=json&addressdetails=1&q="+alamat+"&country=Indonesia&limit=1")
                .done(function(data){
                    if(data.length > 0){
                        position = [data[0].lat,data[0].lon];
                        map.setView(position,13);
                    }
                });
            }
        }
    }

    $("#kabupaten_kota_id").select2({
        ajax:{
            url: '{{ url('/kabupatenkota/cari') }}',
            dataType: "json",
            delay: 250,
            type : 'GET',
            data: function(params){
                return{
                    cari : params.term
                };
            },
            processResults: function(data){
                var results = [];

                $.each(data, function(index, item){
                    results.push({
                        id: item.kabupaten_kota_id,
                        text: item.kabupaten_kota_nama
                    });
                });
                return{
                    results: results
                };
            },
            cache: true,
        },
    });

    $("#kecamatan_id").select2({
        ajax:{
            url: '{{ url('/kecamatan/cari') }}',
            dataType: "json",
            delay: 250,
            type : 'GET',
            data: function(params){
                return{
                    cari : params.term,
                    id : $("#kabupaten_kota_id option:selected").val()
                };
            },
            processResults: function(data){
                var results = [];

                $.each(data, function(index, item){
                    results.push({
                        id: item.kecamatan_id,
                        text: item.kecamatan_nama
                    });
                });
                return{
                    results: results
                };
            },
            cache: true,
        },
    });

    $("#kelurahan_desa_id").select2({
        ajax:{
            url: '{{ url('/kelurahandesa/cari') }}',
            dataType: "json",
            delay: 250,
            type : 'GET',
            data: function(params){
                return{
                    cari : params.term,
                    id : $("#kecamatan_id option:selected").val()
                };
            },
            processResults: function(data){
                var results = [];

                $.each(data, function(index, item){
                    results.push({
                        id: item.kelurahan_desa_id,
                        text: item.kelurahan_desa_nama
                    });
                });
                return{
                    results: results
                };
            },
            cache: true,
        },
    });
</script>

@endpush
