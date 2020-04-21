<div class="modal-body">
    <div class="table-responsive">
        <table class="table width-full">
            <tbody>
                <tr>
                    <th class="width-150 text-left">Tahun Anggaran</th>
                    <td class="width-10">:</td>
                    <td class="text-left">{{ $data->periode_tahun }}</td>
                </tr>
                <tr>
                    <th class="text-left">Program</th>
                    <td>:</td>
                    <td class="text-left">{{ $data->akun->akun_kode }} {{ $data->akun->akun_keterangan }}</td>
                </tr>
                <tr>
                    <th class="text-left">Bidang</th>
                    <td>:</td>
                    <td class="text-left">{{ $data->usulan_program_bidang }}</td>
                </tr>
                <tr>
                    <th class="text-left">Tujuan/Sasaran</th>
                    <td>:</td>
                    <td class="text-left">{{ $data->usulan_program_tujuan }}</td>
                </tr>
                <tr>
                    <th class="text-left">Deskripsi</th>
                    <td>:</td>
                    <td class="text-left">{{ $data->usulan_program_deskripsi }}</td>
                </tr>
                <tr>
                    <th class="text-left">Rincian</th>
                    <td>:</td>
                    <td class="text-left">{!! $data->usulan_program_rincian !!}</td>
                </tr>
            </tbody>
        </table>
    </div>
    <h5><b>Kegiatan</b></h5>
    <div class="f-s-10 table-responsive">
        <table class="table table-bordered" style="width: 2000px !important">
            <thead>
                <tr>
                    <th class="text-left p-3">No.</th>
                    <th class="text-left p-3 width-400">Kegiatan</th>
                    <th class="text-left p-3">Deskripsi</th>
                    <th class="text-left p-3 width-200">Penanggung Jawab</th>
                    <th class="text-left p-3">Status</th>
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
                @php
                    $total = 0;
                    $i = 0;
                @endphp
                @foreach ($data->kegiatan as $index => $row)
                @php
                    ++$i; $j = 0;
                    $nilai = $row->detail->count() > 0? $row->detail->sum('usulan_kegiatan_detail_nilai_total'): 0;
                    $total += $nilai;
                @endphp
                @foreach ($row->detail as $index => $sub)
                <tr>
                    @if ($j == 0)
                    <td class="align-middle p-3" rowspan="{{ $row->detail->count() }}">{{ $i }}</td>
                    <td class="align-middle p-3" rowspan="{{ $row->detail->count() }}">{{ $row->akun->akun_keterangan }}</td>
                    <td class="align-middle p-3" rowspan="{{ $row->detail->count() }}">{{ $row->usulan_kegiatan_deskripsi }}</td>
                    <td class="align-middle p-3" rowspan="{{ $row->detail->count() }}">{{ $row->usulan_kegiatan_penanggung_jawab }}</td>
                    <td class="align-middle p-3" rowspan="{{ $row->detail->count() }}">
                        @if ($row->verifikasi == 0)
                        <span class="badge badge-danger badge">Belum Verifikasi</span>
                        @else
                        <span class="badge badge-success badge">Sudah Verifikasi</span>
                        @endif
                    </td>
                    @endif
                    @php
                        $j++;
                    @endphp
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
                @php
                    $total += $row->usulan_program_nilai;
                @endphp
                @endforeach
                <tr class="bg-black-transparent-1">
                    <th colspan="20" class="text-left">TOTAL NILAI</th>
                    <th class="text-right">{{ number_format($total, 2) }}</th>
                </tr>
            </tbody>
        </table>
    </div>
</div>
@if ($jenis == 'pratinjau')
<div class="modal-footer">
    <a href="javascript:;" class="btn btn-white" data-dismiss="modal">Tutup</a>
    <a href="/usulanprogram/detail?id={{ $data->usulan_program_id_encrypt }}&jenis=cetak" class="btn btn-success" target="_blank"><i class="fad fa-file-excel"></i> Excel</a>
</div>
@endif
