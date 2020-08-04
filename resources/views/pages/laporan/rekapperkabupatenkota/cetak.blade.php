
            <table class="table table-hover table-bordered">
                <thead>
                    <tr>
                        <th class="align-middle" rowspan="2">No.</th>
                        <th class="align-middle" rowspan="2">Kegiatan</th>
                        @foreach ($kabupaten_kota as $row)
                        <th class="align-middle text-center" colspan="2">{{ $row->kabupaten_kota_nama }}</th>
                        @endforeach
                        <th class="align-middle text-center" colspan="2">Total</th>
                    </tr>
                    <tr>
                        @foreach ($kabupaten_kota as $row)
                        <th>Jumlah</th>
                        <th>Biaya</th>
                        @endforeach
                        <th>Jumlah</th>
                        <th>Biaya</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="align-middle">1</td>
                        <td class="align-middle">Pembangunan</td>
                        @foreach ($laporan_pembangunan as $row)
                        <td class="align-middle text-right">{{ number_format($row['jumlah']) }}</td>
                        <td class="align-middle text-right">{{ number_format($row['nilai']) }}</td>
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
                        @endforeach
                        <td class="align-middle text-right">{{ number_format($laporan_pemeliharaan->sum('jumlah')) }}</td>
                        <td class="align-middle text-right">{{ number_format($laporan_pemeliharaan->sum('nilai')) }}</td>
                    </tr>
                    <tr>
                        <td class="align-middle" colspan="2">TOTAL</td>
                        @php
                            $i = 0;
                        @endphp
                        @foreach ($kabupaten_kota as $row)
                        <td class="align-middle text-right">{{ number_format($laporan_pembangunan{$i}['jumlah'] + $laporan_pemeliharaan{$i}['jumlah']) }}</td>
                        <td class="align-middle text-right">{{ number_format($laporan_pembangunan{$i}['nilai'] + $laporan_pemeliharaan{$i}['nilai']) }}</td>
                        @php
                            $i++;
                        @endphp
                        @endforeach
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
