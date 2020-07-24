<table class="table table-bordered">
    <thead>
        <tr>
            <th>No.</th>
            <th>Infrastruktur</th>
            <th>Jumlah</th>
            <th>Biaya</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($laporan as $row)
        <tr>
            <td class="align-middle width-10">{{ ++$i }}</td>
            <td class="align-middle">{{ $row->kewenangan_provinsi_jenis_infrastruktur }}</td>
            <td class="align-middle text-right">{{number_format($row->jumlah) }}</td>
            <td class="align-middle text-right">{{ $row->nilai != 0? number_format($row['nilai'], 2): "-" }}</td>
        </tr>
        @php
        $total_infrastruktur += $row->jumlah;
        $total_biaya += $row->nilai;
        @endphp
        @endforeach
        <tr>
            <th class="align-middle" colspan="2">Total</th>
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
