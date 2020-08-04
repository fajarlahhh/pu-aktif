
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="align-middle" rowspan="2">No.</th>
                        <th class="align-middle" rowspan="2">Kegiatan</th>
                        @foreach ($infrastruktur as $row)
                        <th class="align-middle text-center" colspan="2">{{ $row }}</th>
                        @endforeach
                        <th class="align-middle text-center" colspan="2">Total</th>
                    </tr>
                    <tr>
                        @foreach ($infrastruktur as $row)
                        <th>Jumlah</th>
                        <th>Biaya</th>
                        @endforeach
                        <th>Jumlah</th>
                        <th>Biaya</th>
                    </tr>
                </thead>
                <tbody>
                    @php
                        $jumlah_jalan = 0;
                        $nilai_jalan = 0;
                        $jumlah_jembatan = 0;
                        $nilai_jembatan = 0;
                        $jumlah_das = 0;
                        $nilai_das = 0;
                        $jumlah_drainase = 0;
                        $nilai_drainase = 0;
                        $jumlah_spam = 0;
                        $nilai_spam = 0;
                        $jumlah_sumur = 0;
                        $nilai_sumur = 0;
                        $jumlah_bendungan = 0;
                        $nilai_bendungan = 0;
                        $jumlah_daerahirigasi = 0;
                        $nilai_daerahirigasi = 0;
                        $jumlah_embung = 0;
                        $nilai_embung = 0;
                        $jumlah_mataair = 0;
                        $nilai_mataair = 0;
                    @endphp
                    <tr>
                        <td class="align-middle">1</td>
                        <td class="align-middle">Pembangunan</td>
                        @foreach ($laporan_pembangunan as $row)
                        <td class="align-middle text-right">{{ number_format($row['jumlah']) }}</td>
                        <td class="align-middle text-right">{{ number_format($row['nilai']) }}</td>
                        @php
                        switch ($row['infrastruktur']) {
                            case 'Jalan' :
                                $jumlah_jalan += $row['jumlah'];
                                $nilai_jalan += $row['nilai'];
                            break;
                            case 'Jembatan' :
                                $jumlah_jembatan += $row['jumlah'];
                                $nilai_jembatan += $row['nilai'];
                            break;
                            case 'DAS' :
                                $jumlah_das += $row['jumlah'];
                                $nilai_das += $row['nilai'];
                            break;
                            case 'Drainase' :
                                $jumlah_drainase += $row['jumlah'];
                                $nilai_drainase += $row['nilai'];
                            break;
                            case 'SPAM' :
                                $jumlah_spam += $row['jumlah'];
                                $nilai_spam += $row['nilai'];
                            break;
                            case 'Sumur' :
                                $jumlah_sumur += $row['jumlah'];
                                $nilai_sumur += $row['nilai'];
                            break;
                            case 'Bendungan' :
                                $jumlah_bendungan += $row['jumlah'];
                                $nilai_bendungan += $row['nilai'];
                            break;
                            case 'Daerah Irigasi' :
                                $jumlah_daerahirigasi += $row['jumlah'];
                                $nilai_daerahirigasi += $row['nilai'];
                            break;
                            case 'Embung' :
                                $jumlah_embung += $row['jumlah'];
                                $nilai_embung += $row['nilai'];
                            break;
                            case 'Mata Air' :
                                $jumlah_mataair += $row['jumlah'];
                                $nilai_mataair += $row['nilai'];
                            break;
                        }
                        @endphp
                        @endforeach
                        <td class="align-middle text-right">{{ number_format($laporan_pembangunan->sum('jumlah')) }}</td>
                        <td class="align-middle text-right">{{ number_format($laporan_pembangunan->sum('nilai')) }}</td>
                    </tr>
                    <tr>
                        <td class="align-middle">2</td>
                        <td class="align-middle">Pemeliharaan</td>
                        @foreach ($laporan_pemeliharaan as $row)
                        <td class="align-middle text-right">{{ number_format($row['jumlah']) }}</td>
                        <td class="align-middle text-right">{{ number_format($row['nilai']) }}</td>
                        @php
                        switch ($row['infrastruktur']) {
                            case 'Jalan' :
                                $jumlah_jalan += $row['jumlah'];
                                $nilai_jalan += $row['nilai'];
                            break;
                            case 'Jembatan' :
                                $jumlah_jembatan += $row['jumlah'];
                                $nilai_jembatan += $row['nilai'];
                            break;
                            case 'DAS' :
                                $jumlah_das += $row['jumlah'];
                                $nilai_das += $row['nilai'];
                            break;
                            case 'Drainase' :
                                $jumlah_drainase += $row['jumlah'];
                                $nilai_drainase += $row['nilai'];
                            break;
                            case 'SPAM' :
                                $jumlah_spam += $row['jumlah'];
                                $nilai_spam += $row['nilai'];
                            break;
                            case 'Sumur' :
                                $jumlah_sumur += $row['jumlah'];
                                $nilai_sumur += $row['nilai'];
                            break;
                            case 'Bendungan' :
                                $jumlah_bendungan += $row['jumlah'];
                                $nilai_bendungan += $row['nilai'];
                            break;
                            case 'Daerah Irigasi' :
                                $jumlah_daerahirigasi += $row['jumlah'];
                                $nilai_daerahirigasi += $row['nilai'];
                            break;
                            case 'Embung' :
                                $jumlah_embung += $row['jumlah'];
                                $nilai_embung += $row['nilai'];
                            break;
                            case 'Mata Air' :
                                $jumlah_mataair += $row['jumlah'];
                                $nilai_mataair += $row['nilai'];
                            break;
                        }
                        @endphp
                        @endforeach
                        <td class="align-middle text-right">{{ number_format($laporan_pemeliharaan->sum('jumlah')) }}</td>
                        <td class="align-middle text-right">{{ number_format($laporan_pemeliharaan->sum('nilai')) }}</td>
                    </tr>
                    <tr>
                        <td class="align-middle" colspan="2">TOTAL</td>
                        <td class="align-middle text-right">{{ number_format($jumlah_jalan) }}</td>
                        <td class="align-middle text-right">{{ number_format($nilai_jalan) }}</td>
                        <td class="align-middle text-right">{{ number_format($jumlah_jembatan) }}</td>
                        <td class="align-middle text-right">{{ number_format($nilai_jembatan) }}</td>
                        <td class="align-middle text-right">{{ number_format($jumlah_das) }}</td>
                        <td class="align-middle text-right">{{ number_format($nilai_das) }}</td>
                        <td class="align-middle text-right">{{ number_format($jumlah_drainase) }}</td>
                        <td class="align-middle text-right">{{ number_format($nilai_drainase) }}</td>
                        <td class="align-middle text-right">{{ number_format($jumlah_spam) }}</td>
                        <td class="align-middle text-right">{{ number_format($nilai_spam) }}</td>
                        <td class="align-middle text-right">{{ number_format($jumlah_sumur) }}</td>
                        <td class="align-middle text-right">{{ number_format($nilai_sumur) }}</td>
                        <td class="align-middle text-right">{{ number_format($jumlah_bendungan) }}</td>
                        <td class="align-middle text-right">{{ number_format($nilai_bendungan) }}</td>
                        <td class="align-middle text-right">{{ number_format($jumlah_daerahirigasi) }}</td>
                        <td class="align-middle text-right">{{ number_format($nilai_daerahirigasi) }}</td>
                        <td class="align-middle text-right">{{ number_format($jumlah_embung) }}</td>
                        <td class="align-middle text-right">{{ number_format($nilai_embung) }}</td>
                        <td class="align-middle text-right">{{ number_format($jumlah_mataair) }}</td>
                        <td class="align-middle text-right">{{ number_format($nilai_mataair) }}</td>
                        <td class="align-middle text-right">{{ number_format($laporan_pembangunan->sum('jumlah') + $laporan_pemeliharaan->sum('jumlah')) }}</td>
                        <td class="align-middle text-right">{{ number_format($laporan_pembangunan->sum('nilai') + $laporan_pemeliharaan->sum('nilai')) }}</td>
                    </tr>
                </tbody>
            </table>
<script src="{{ url('/public/assets/js/bundle.js') }}"></script>
<script>
    $('document').ready(function(){
        window.print();
    });
</script>
