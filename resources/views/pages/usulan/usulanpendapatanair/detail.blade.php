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
                    <th class="text-left ">Akun</th>
                    <td>:</td>
                    <td class="text-left">{{ $data->akun->akun_kode }} {{ $data->akun->akun_keterangan }}</td>
                </tr>
                <tr>
                    <th class="text-left">Golongan</th>
                    <td>:</td>
                    <td class="text-left">{{ $data->golongan_id }} - {{ $data->golongan->golongan_nama }}</td>
                </tr>
                <tr>
                    <th class="text-left">Wilayah</th>
                    <td>:</td>
                    <td class="text-left">{{ $data->wilayah_nama }}</td>
                </tr>
                <tr>
                    <th class="text-left">Keterangan</th>
                    <td>:</td>
                    <td class="text-left">{{ $data->usulan_pendapatan_air_keterangan }}</td>
                </tr>
                <tr>
                    <th class="text-left">Nilai</th>
                    <td>:</td>
                    <th class="text-left">Rp. {{ number_format($data->periode->sum('usulan_pendapatan_air_periode_rencana_penjualan'), 2) }}</th>
                </tr>
                <tr>
                    <th class="text-left">Status</th>
                    <td>:</td>
                    <th class="text-left">
                        @if ($data->verifikasi == 0)
                        <span class="badge badge-danger">Belum Verifikasi</span>
                        @else
                        <span class="badge badge-success">Sudah Verifikasi</span>
                        @endif
                    </th>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="{{ $jenis == 'pratinjau'? 'note note-secondary': '' }}">
        <div class="table-responsive">
            <table class="table table-bordered f-s-11" style="min-width: 1200px">
                <thead>
                    <tr>
                        <th class="text-left p-3">Bulan</th>
                        <th class="text-left p-3">Sambungan Aktif Awal Bulan</th>
                        <th class="text-left p-3">Rekening Baru</th>
                        <th class="text-left p-3">Sambungan Pasif</th>
                        <th class="width-100 text-left p-3">Sambung Kembali</th>
                        <th class="text-left p-3">Sambungan Aktif Akhir Bulan</th>
                        <th class="text-left p-3">Rata-rata Konsumsi /Pelanggan (m<sup>3</sup>)</th>
                        <th class="width-150 text-left p-3">Jumlah Air Terjual (m<sup>3</sup>)</th>
                        <th class="width-150 text-left p-3">Rata-rata Harga Air/m<sup>3</sup> (Rp.)</th>
                        <th class="width-150 text-left p-3">Rencana Penjualan Air (Rp.)</th>
                    </tr>
                </thead>
                <tbody>
                    @for ($i = 0; $i < count($bulan); $i++)
                    @php
                        $jumlah_sambung_baru = $data->periode[$i]->usulan_pendapatan_air_periode_jumlah_pelanggan;
                    @endphp
                    <tr>
                        <td>
                            <label>{{ $bulan[$i] }}</label>
                        </td>
                        <td class="text-right">
                            {{ number_format($data->periode[$i]->usulan_pendapatan_air_periode_jumlah_pelanggan) }}
                        </td>
                        <td class="text-right">
                            {{ number_format($data->periode[$i]->usulan_pendapatan_air_periode_sambung_baru) }}
                        </td>
                        <td class="text-right">
                            {{ number_format($data->periode[$i]->usulan_pendapatan_air_periode_sambung_pasif) }}
                        </td>
                        <td class="text-right">
                            {{ number_format($data->periode[$i]->usulan_pendapatan_air_periode_sambung_kembali) }}
                        </td>
                        <td class="text-right">
                            {{ number_format($data->periode[$i]->usulan_pendapatan_air_periode_sambung_aktif_akhir_bulan) }}
                        </td>
                        <td class="text-right">
                            {{ number_format($data->periode[$i]->usulan_pendapatan_air_periode_rata_konsumsi, 2) }}
                        </td>
                        <td class="text-right">
                            {{ number_format($data->periode[$i]->usulan_pendapatan_air_periode_jumlah_terjual, 2) }}
                        </td>
                        <td class="text-right">
                            {{ number_format($data->periode[$i]->usulan_pendapatan_air_periode_rata_harga_air, 2) }}
                        </td>
                        <td class="text-right">
                            {{ number_format($data->periode[$i]->usulan_pendapatan_air_periode_rencana_penjualan, 2) }}
                        </td>
                    </tr>
                    @php
                        $sambung_baru += $jumlah_sambung_baru;
                        $sambung_pasif += 0;
                        $sambung_kembali += 0;
                        $jumlah_terjual += $data->periode[$i]->usulan_pendapatan_air_periode_rata_konsumsi * $data->periode[$i]->usulan_pendapatan_air_periode_jumlah_pelanggan;
                        $rencana_penjualan += $data->periode[$i]->usulan_pendapatan_air_periode_rata_konsumsi * $data->periode[$i]->usulan_pendapatan_air_periode_jumlah_pelanggan * $data->periode[$i]->usulan_pendapatan_air_periode_rata_harga_air;
                    @endphp
                    @endfor
                </tbody>
                <tfoot>
                    <tr>
                        <th class="text-left">
                            <label class="m-t-10">JUMLAH</label>
                        </th>
                        <th class="text-right">
                            &nbsp;
                        </th>
                        <th class="text-right">
                            {{ number_format($sambung_baru) }}
                        </th>
                        <th class="text-right">
                            {{ number_format($sambung_pasif) }}
                        </th>
                        <th class="text-right">
                            {{ number_format($sambung_kembali) }}
                        </th>
                        <th class="text-right">
                            &nbsp;
                        </th>
                        <th class="text-right">
                            &nbsp;
                        </th>
                        <th class="text-right">
                            {{ number_format($jumlah_terjual, 2) }}
                        </th>
                        <th class="text-right">
                            &nbsp;
                        </th>
                        <th class="text-right">
                            {{ number_format($rencana_penjualan, 2) }}
                        </th>
                    </tr>
                </tfoot>
            </table>
        </div>
    </div>
</div>
@if ($jenis == 'pratinjau')
<div class="modal-footer">
    <a href="javascript:;" class="btn btn-white" data-dismiss="modal">Tutup</a>
    <a href="/usulanpendapatanair/detail?id={{ $data->usulan_pendapatan_air_id_encrypt }}&jenis=cetak" class="btn btn-danger" target="_blank"><i class="fad fa-file-pdf"></i> PDF</a>
</div>
@endif
