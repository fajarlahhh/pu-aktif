
<link href="{{ url('/public/assets/plugins/leaflet/dist/leaflet.css') }}" rel="stylesheet">

<div id="peta-lokasi" style="height:350px; background-color: #000;"></div>

<script src="{{ url('/public/assets/plugins/leaflet/dist/leaflet.js') }}"></script>
<script>
    var map;
    var position = [-8.5783,117.5098];
    var marker;
    var long = parseFloat('{{ $long }}');
    var lat = parseFloat('{{ $lat }}');

    map = L.map('peta-lokasi').setView(position, 8);
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);
    marker = L.marker([lat,long]).addTo(map);
    map.setView([lat,long],16);

    setTimeout(function() {
        map.invalidateSize();
    }, 200);
</script>
