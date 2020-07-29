
@push('css')
<link href="{{ url('/public/assets/plugins/select2/dist/css/select2.min.css') }}" rel="stylesheet" />
@endpush
<!-- begin tab-pane -->
<div class="tab-pane fade {{ !$aksi == 'edit'? 'active show': '' }}" id="default-tab-2">
    <div class="row">
        <div class="col-md-7">
            <div class="form-group">
                <label class="control-label">Nomor Jembatan</label>
                <input class="form-control" type="text" name="jembatan_nomor" value="{{ $aksi == 'edit'? $data->jembatan_nomor: old('jembatan_nomor') }}" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }} />
            </div>
            <div class="form-group">
                <label class="control-label">Nama Jembatan</label>
                <input class="form-control" type="text" name="jembatan_nama" value="{{ $aksi == 'edit'? $data->jembatan_nama: old('jembatan_nama') }}" required data-parsley-minlength="1" data-parsley-maxlength="250" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }} />
            </div>
            <div class="form-group" id="catatan">
                <label class="control-label">Keterangan</label>
                <textarea class="form-control" rows="3" id="jembatan_keterangan" name="jembatan_keterangan"  {{ $aksi == 'edit'? 'readonly': '' }}>{{ $aksi == 'edit'? $data->jembatan_keterangan: old('jembatan_keterangan') }}</textarea>
            </div>
            @if ($aksi == 'edit')
            <input class="form-control" type="text" name="jalan_id" value="{{ $aksi == 'edit'? $data->jalan_id: old('jalan_id') }}" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }} />
            @else
            <div class="form-group">
                <label class="control-label">Ruas Jalan</label>
                <select class="form-control" name="jalan_id" id="jalan_id" data-width="100%">
                </select>
            </div>
            @endif
        </div>
        <div class="col-md-5">
            <div class="note note-primary">
                <h5>Dimensi</h5>
                <div class="form-group">
                    <label class="control-label">Panjang (M)</label>
                    <input class="form-control decimal text-right" type="text" name="jembatan_dimensi_panjang" value="{{ $aksi == 'edit'? $data->jembatan_dimensi_panjang: old('jembatan_dimensi_panjang') }}" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }} />
                </div>
                <div class="form-group">
                    <label class="control-label">Lebar (M)</label>
                    <input class="form-control decimal text-right" type="text" name="jembatan_dimensi_lebar" value="{{ $aksi == 'edit'? $data->jembatan_dimensi_lebar: old('jembatan_dimensi_lebar') }}" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }} />
                </div>
                <div class="form-group">
                    <label class="control-label">Bentang (M)</label>
                    <input class="form-control decimal text-right" type="text" name="jembatan_dimensi_bentang" value="{{ $aksi == 'edit'? $data->jembatan_dimensi_bentang: old('jembatan_dimensi_bentang') }}" autocomplete="off"  {{ $aksi == 'edit'? 'readonly': '' }} />
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end tab-pane -->
<!-- begin tab-pane -->
<!-- end tab-pane -->

@push('scripts')
<script src="{{ url('/public/assets/plugins/select2/dist/js/select2.min.js') }}"></script>
<script>
    $('#jalan_id').select2({
        ajax:{
            url: '{{ url('/jalan/cari') }}',
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
                        id: item.jalan_id,
                        text: item.jalan_nama
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

