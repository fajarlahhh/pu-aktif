<table class="table table-bordered">
    <thead>
        <tr>
            <th class="align-middle" rowspan="2">No.</th>
            <th class="align-middle" rowspan="2">Kecamatan</th>
            <th class="align-middle" rowspan="2">Kelurahan/Desa</th>
            <th class="align-middle text-center" colspan="2">Infrastruktur</th>
            <th class="align-middle" rowspan="2">Biaya</th>
        </tr>
        <tr>
            <th>Jenis</th>
            <th>Jumlah</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($laporan as $row)
        <tr>
            <td class="align-middle width-10">{{ ++$i }}</td>
            <td class="align-middle">{{ $row['kecamatan'] }}</td>
            <td class="align-middle">{{ $row['kelurahan'] }}</td>
            <td class="align-middle">{{ $row['infrastruktur_nama'] }}</td>
            <td class="align-middle text-right">{{number_format($row['infrastruktur_jumlah']) }}</td>
            <td class="align-middle text-right">{{ $row['aspirasi_masyarakat_nilai'] != 0? number_format($row['aspirasi_masyarakat_nilai'], 2): "-" }}</td>
        </tr>
        @php
        $total_biaya += $row['aspirasi_masyarakat_nilai'];
        $total_infrastruktur += $row['infrastruktur_jumlah'];
        @endphp
        @endforeach
        <tr>
            <th class="align-middle" colspan="4">Total</th>
            <th class="align-middle text-right">{{ number_format($total_infrastruktur) }}</th>
            <th class="align-middle text-right">{{ $total_biaya != 0? number_format($total_biaya, 2): "-" }}</th>
        </tr>
    </tbody>
</table>
<script src="{{ url('/public/assets/js/bundle.js') }}"></script>
<script>
    $('document').ready(function(){
        window.print();
    });
</script>
