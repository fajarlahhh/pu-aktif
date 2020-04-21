<div class="modal-body">
    <dir class="row p-l-0">
        <div class="col-6">
            <div class="note note-secondary">
                <div class="table-responsive">
                    <h5><b>Program</b></h5>
                    <table class="table width-full">
                        <tbody>
                            <tr>
                                <th class="text-left">Program</th>
                                <td>:</td>
                                <td class="text-left">{{ $data->akun->akun_kode }} {{ $data->akun->akun_keterangan }}</td>
                            </tr>
                            <tr>
                                <th class="width-150 text-left">Tahun Anggaran</th>
                                <td class="width-10">:</td>
                                <td class="text-left">{{ $data->program->periode_tahun }}</td>
                            </tr>
                            <tr>
                                <th class="text-left">Penanggung Jawab</th>
                                <td>:</td>
                                <td class="text-left">{{ $data->usulan_kegiatan_penanggung_jawab }}</td>
                            </tr>
                            <tr>
                                <th class="text-left">Deskripsi</th>
                                <td>:</td>
                                <td class="text-left">{{ $data->usulan_kegiatan_deskripsi }}</td>
                            </tr>
                            <tr>
                                <th class="text-left">Rincian</th>
                                <td>:</td>
                                <td class="text-left">{!! $data->usulan_kegiatan_rincian !!}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="col-6">
            <h5><b>Kegiatan</b></h5>
            <div class="table-responsive">
                <table class="table width-full">
                    <tbody>
                        <tr>
                            <th class="width-150 text-left">Kegiatan</th>
                            <td class="width-10">:</td>
                            <td class="text-left">{{ $data->akun->akun_keterangan }}</td>
                        </tr>
                        <tr>
                            <th class="text-left">Deskripsi</th>
                            <td>:</td>
                            <td class="text-left">{{ $data->usulan_kegiatan_deskripsi }}</td>
                        </tr>
                        <tr>
                            <th class="text-left">Penanggung Jawab</th>
                            <td>:</td>
                            <td class="text-left">{{ $data->usulan_kegiatan_penanggung_jawab }}</td>
                        </tr>
                        <tr>
                            <th class="text-left">Rincian</th>
                            <td>:</td>
                            <td class="text-left">{!! $data->usulan_program_rincian !!}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </dir>
    <h5><b>Detail Barang/Pekerjaan</b></h5>
    <div class="f-s-10 table-responsive">
        <table class="table table-bordered" style="width: 1600px !important">
            <thead>
                <tr>
                    <th class="p-3 width-200">Barang/Pekerjaan</th>
                    <th class="width-150 p-3">Harga Satuan</th>
                    <th class="width-100 p-3">Volume</th>
                    <th class="width-150 p-3">Januari</th>
                    <th class="width-150 p-3">Februari</th>
                    <th class="width-150 p-3">Maret</th>
                    <th class="width-150 p-3">April</th>
                    <th class="width-150 p-3">Mei</th>
                    <th class="width-150 p-3">Juni</th>
                    <th class="width-150 p-3">Juli</th>
                    <th class="width-150 p-3">Agustus</th>
                    <th class="width-150 p-3">September</th>
                    <th class="width-150 p-3">Oktober</th>
                    <th class="width-150 p-3">November</th>
                    <th class="width-150 p-3">Desember</th>
                    <th class="width-150 p-3">Nilai</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($data->detail as $index => $sub)
                <tr>
                    <td class="p-3">{{ $sub->barang->barang_dan_pekerjaan_jenis ." - ". $sub->barang->barang_dan_pekerjaan_nama }}</td>
                    <td class="text-right p-3">{{ number_format($sub->usulan_kegiatan_detail_nilai, 2) }}</td>
                    <td class="p-3">{{ number_format($sub->usulan_kegiatan_detail_volume, 0)." ".$sub->barang->barang_dan_pekerjaan_satuan }}</td>
                    <td class="text-right p-3">{{ number_format($sub->usulan_kegiatan_detail_periode_1 * $sub->usulan_kegiatan_detail_nilai, 2) }}</td>
                    <td class="text-right p-3">{{ number_format($sub->usulan_kegiatan_detail_periode_2 * $sub->usulan_kegiatan_detail_nilai, 2) }}</td>
                    <td class="text-right p-3">{{ number_format($sub->usulan_kegiatan_detail_periode_3 * $sub->usulan_kegiatan_detail_nilai, 2) }}</td>
                    <td class="text-right p-3">{{ number_format($sub->usulan_kegiatan_detail_periode_4 * $sub->usulan_kegiatan_detail_nilai, 2) }}</td>
                    <td class="text-right p-3">{{ number_format($sub->usulan_kegiatan_detail_periode_5 * $sub->usulan_kegiatan_detail_nilai, 2) }}</td>
                    <td class="text-right p-3">{{ number_format($sub->usulan_kegiatan_detail_periode_6 * $sub->usulan_kegiatan_detail_nilai, 2) }}</td>
                    <td class="text-right p-3">{{ number_format($sub->usulan_kegiatan_detail_periode_7 * $sub->usulan_kegiatan_detail_nilai, 2) }}</td>
                    <td class="text-right p-3">{{ number_format($sub->usulan_kegiatan_detail_periode_8 * $sub->usulan_kegiatan_detail_nilai, 2) }}</td>
                    <td class="text-right p-3">{{ number_format($sub->usulan_kegiatan_detail_periode_9 * $sub->usulan_kegiatan_detail_nilai, 2) }}</td>
                    <td class="text-right p-3">{{ number_format($sub->usulan_kegiatan_detail_periode_10 * $sub->usulan_kegiatan_detail_nilai, 2) }}</td>
                    <td class="text-right p-3">{{ number_format($sub->usulan_kegiatan_detail_periode_11 * $sub->usulan_kegiatan_detail_nilai, 2) }}</td>
                    <td class="text-right p-3">{{ number_format($sub->usulan_kegiatan_detail_periode_12 * $sub->usulan_kegiatan_detail_nilai, 2) }}</td>
                    <td class="text-right p-3">{{ number_format($sub->usulan_kegiatan_detail_nilai_total, 2) }}</td>
                </tr>
                @endforeach
            <tbody>
        </table>
    </div>
</div>
@if ($jenis == 'pratinjau')
<div class="modal-footer">
    <a href="javascript:;" class="btn btn-white" data-dismiss="modal">Tutup</a>
    <a href="/usulanprogram/kegiatan/detail?id={{ $data->usulan_kegiatan_id_encrypt }}&jenis=cetak" class="btn btn-success" target="_blank"><i class="fad fa-file-excel"></i> Excel</a>
</div>
@endif
