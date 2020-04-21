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
                    <th class="text-left">Akun</th>
                    <td>:</td>
                    <td class="text-left">{{ $data->akun->akun_kode }} {{ $data->akun->akun_keterangan }} </td>
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
                    <th class="text-left">Paket</th>
                    <td>:</td>
                    <td class="text-left">{{ $data->paket->paket_diameter }}</td>
                </tr>
                <tr>
                    <th class="text-left">Biaya Standard</th>
                    <td>:</td>
                    <td class="text-left">Rp. {{ $data->biaya_standard }}</td>
                </tr>
                <tr>
                    <th class="text-left">Keterangan</th>
                    <td>:</td>
                    <th class="text-left"><small>{{ $data->usulan_sambung_baru_keterangan }}</small></th>
                </tr>
                <tr>
                    <th class="text-left">Nilai</th>
                    <td>:</td>
                    <th class="text-left">Rp. {{ $data->jumlah_total }}</th>
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
        <h4>Detail</h4>
        <div class="table-responsive">
            <table class="table table-bordered f-s-11">
                <thead>
                    <tr>
                        <th class="text-left p-3 width-50">Bulan</th>
                        <th class="text-left p-3 width-100">Pelanggan Baru</th>
                        <th class="text-left p-3">Biaya Standard</th>
                        <th class="text-left p-3">Biaya PPN (10%)</th>
                        <th class="text-left p-3">Jumlah Biaya</th>
                    </tr>
                </thead>
                <tbody>
                    @for ($i = 0; $i < count($bulan); $i++)
                    <tr>
                        <td>
                            <label>{{ $bulan[$i] }}</label>
                        </td>
                        <td class="text-right">
                            {{ number_format($data->periode[$i]->usulan_sambung_baru_periode_pelanggan) }}
                        </td>
                        <td class="text-right">
                            {{ number_format($data->periode[$i]->usulan_sambung_baru_periode_biaya_standar, 2) }}
                        </td>
                        <td class="text-right">
                            {{ number_format($data->periode[$i]->usulan_sambung_baru_periode_ppn, 2) }}
                        </td>
                        <td class="text-right">
                            {{ number_format($data->periode[$i]->usulan_sambung_baru_periode_total_biaya, 2) }}
                        </td>
                    </tr>
                    @endfor
                    <tr>
                        <td>
                            <label>JUMLAH</label>
                        </td>
                        <td>
                            {{-- <div class="form-group">
                                <input class="form-control f-w-700 integer text-right f-s-10" type="text" id="jumlah_pelanggan" name="jumlah_pelanggan" value="{{ $data->periode->sum('usulan_sambung_baru_periode_pelanggan'): old('jumlah_pelanggan') }}" autocomplete="off" readonly required/>
                            </div> --}}
                        </td>
                        <td class="text-right">
                            {{ number_format($data->periode->sum('usulan_sambung_baru_periode_biaya_standar'), 2) }}
                        </td>
                        <td class="text-right">
                            {{ number_format($data->periode->sum('usulan_sambung_baru_periode_ppn'), 2) }}
                        </td>
                        <td class="text-right">
                            {{ number_format($data->periode->sum('usulan_sambung_baru_periode_total_biaya'), 2) }}
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
@if ($jenis == 'pratinjau')
<div class="modal-footer">
    <a href="javascript:;" class="btn btn-white" data-dismiss="modal">Tutup</a>
    <a href="/usulansambungbaru/detail?id={{ $data->usulan_sambung_baru_id_encrypt }}&jenis=cetak" class="btn btn-danger" target="_blank"><i class="fad fa-file-pdf"></i> PDF</a>
</div>
@endif
