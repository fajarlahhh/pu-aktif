
<link href="{{ url('/public/assets/plugins/leaflet/dist/leaflet.css') }}" rel="stylesheet">

<div id="map" style="height: 600px; border: 1px solid rgb(204, 204, 204); position: relative; outline: none;" tabindex="0"></div>

<script src="{{ url('/public/assets/plugins/leaflet/dist/leaflet.js') }}"></script>
<script>
    var osmUrl = 'http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',

    osmAttrib = '&copy; <a href="http://openstreetmap.org/copyright">OpenStreetMap</a> contributors',
    osm = L.tileLayer(osmUrl, { maxZoom: 18, attribution: osmAttrib }),
    map = new L.Map('map', { center: new L.LatLng(-8.5783,117.5098), zoom: 8 }),
    drawnItems = L.featureGroup().addTo(map);
    L.control.layers({
        'osm': osm.addTo(map),
        "google": L.tileLayer('http://www.google.cn/maps/vt?lyrs=s@189&gl=cn&x={x}&y={y}&z={z}', {
            attribution: 'google'
        })
    }, { 'drawlayer': drawnItems }, { position: 'topleft', collapsed: false }).addTo(map);

    setTimeout(function() {
        map.invalidateSize();
    }, 200);
</script>

@if ($map)
@if ($map['marker'])
<script>
    var long = parseFloat("{{ $map['marker']['long'] }}");
    var lat = parseFloat("{{ $map['marker']['lat'] }}");
    
    map.setView([lat,long], 12);
</script>
@endif
@if ($map['polygon'])
<script>
    var area = {
        "type": "Feature",
        "geometry": {
            "type": "MultiPolygon",
            "coordinates": [
                [
                    {{ json_encode($map["polygon"]) }}
                ]
            ]
        }
    };
	L.geoJSON([area]).addTo(map);
</script>
@endif
@if ($map['polyline'])
<script>
    var line = {
        "type": "Feature",
        "geometry": {
            "type": "LineString",
            "coordinates": 
                    {{ json_encode($map["polyline"]) }}
        }
    };
	L.geoJSON([line]).addTo(map);
</script>
@endif
@endif
