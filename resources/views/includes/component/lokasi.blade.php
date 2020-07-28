
@push('css')
<link href="{{ url('/public/assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}" rel="stylesheet" />
@endpush

<div class="form-group">
    <label class="control-label">Kabupaten/Kota</label>
    <select class="form-control selectpicker" name="kabupaten_kota_id" id="kabupaten_kota_id" data-live-search="true" data-style="btn-purple" data-width="100%" onchange="clear_kecamatan()">
        <option value="">Pilih Kabupaten/Kota</option>
        @foreach ($kabupaten_kota as $row)
        <option value="{{ $row->kabupaten_kota_id }}" {{ $aksi == 'edit' && $data->kabupaten_kota_id == $row->kabupaten_kota_id? 'selected': '' }}>{{ $row->kabupaten_kota_nama }}</option>
        @endforeach
    </select>
</div>
<div class="form-group">
    <label class="control-label">Kecamatan</label>
    <select class="form-control selectpicker" name="kecamatan_id" id="kecamatan_id" data-live-search="true" data-style="btn-purple" data-width="100%" onchange="clear_kelurahan_desa()">
    </select>
</div>
<div class="form-group">
    <label class="control-label">Kelurahan/Desa</label>
    <select class="form-control selectpicker" name="kelurahan_desa_id" id="kelurahan_desa_id" data-live-search="true" data-style="btn-purple" data-width="100%">
    </select>
</div>
@push('script')
<script src="{{ url('/public/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
<script>
    $("#kecamatan_id").select2({
        ajax:{
            url: '/kodeakun/all',
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
                        id: item.akun_kode,
                        text: item.akun_kode + ' ' + item.akun_keterangan
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