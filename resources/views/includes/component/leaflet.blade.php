<link href="{{ url('/public/assets/plugins/leaflet/dist/leaflet.css') }}" rel="stylesheet">
<link href="{{ url('/public/assets/plugins/leaflet.draw/src/leaflet.draw.css') }}" rel="stylesheet">

<div id="map" style="height: 500px; border: 1px solid rgb(204, 204, 204); position: relative; outline: none;" tabindex="0"></div>
<input type="hidden" id="marker" name="marker">
<input type="hidden" id="polygon" name="polygon">
<input type="hidden" id="polyline" name="polyline">

@push('scripts')
<script src="{{ url('/public/assets/plugins/leaflet/dist/leaflet.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/Leaflet.draw.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/Leaflet.Draw.Event.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/Control.Draw.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/Toolbar.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/Tooltip.js') }}"></script>

<script src="{{ url('/public/assets/plugins/leaflet.draw/src/ext/GeometryUtil.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/ext/LatLngUtil.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/ext/LineUtil.Intersect.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/ext/Polygon.Intersect.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/ext/Polyline.Intersect.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/ext/TouchEvents.js') }}"></script>

<script src="{{ url('/public/assets/plugins/leaflet.draw/src/draw/DrawToolbar.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/draw/handler/Draw.Feature.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/draw/handler/Draw.SimpleShape.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/draw/handler/Draw.Polyline.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/draw/handler/Draw.Marker.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/draw/handler/Draw.Circle.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/draw/handler/Draw.CircleMarker.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/draw/handler/Draw.Polygon.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/draw/handler/Draw.Rectangle.js') }}"></script>


<script src="{{ url('/public/assets/plugins/leaflet.draw/src/edit/EditToolbar.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/edit/handler/EditToolbar.Edit.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/edit/handler/EditToolbar.Delete.js') }}"></script>

<script src="{{ url('/public/assets/plugins/leaflet.draw/src/Control.Draw.js') }}"></script>

<script src="{{ url('/public/assets/plugins/leaflet.draw/src/edit/handler/Edit.Poly.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/edit/handler/Edit.SimpleShape.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/edit/handler/Edit.Rectangle.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/edit/handler/Edit.Marker.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/edit/handler/Edit.CircleMarker.js') }}"></script>
<script src="{{ url('/public/assets/plugins/leaflet.draw/src/edit/handler/Edit.Circle.js') }}"></script>

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
    var drawControl = new L.Control.Draw({
        edit: {
            featureGroup: drawnItems,
            poly: {
                allowIntersection: false
            }
        },
        draw: {
            polygon: {
                allowIntersection: false,
                showArea: true
            },
            rectangle: false,
            circlemarker: false,
            circle: false
        }
    });
    map.addControl(drawControl);

    map.on(L.Draw.Event.CREATED, function (event) {
        var layer = event.layer;

        drawnItems.addLayer(layer);
    });

    function removeLayer(params) {
        map.eachLayer(function (layer){
            if(layer instanceof params){
                map.removeLayer(layer);
            }
        });
    }

    map.on('draw:created', function (e) {
        var type = e.layerType,
            layer = e.layer;

        if (type === 'marker') {
        removeLayer(L.Marker);
            $("#marker").val(layer._latlng.lng + "," + layer._latlng.lat);
            layer.bindPopup('' + layer.getLatLng()).openPopup();
        }
        if (type === 'polyline') {
            removeLayer(L.Polyline);
            var longlats = '';
            layer._latlngs.forEach(element => {
                longlats += element.lng + "," + element.lat + ";";
            });
            $("#polyline").val(longlats);
        }
        if (type === 'polygon') {
            removeLayer(L.Polygon);
            removeLayer(L.Polyline);
            var longlats = '';
            layer._latlngs.forEach(element => {
                element.forEach(element2 => {
                    longlats += element2.lng + "," + element2.lat + ";";
                });
            });
            $("#polygon").val(longlats);
        }
        map.addLayer(layer);
    });

    map.on('draw:edited', function (e) {
        var layers = e.layers;
        layers.eachLayer(function (layer) {
            if (layer instanceof L.Marker){
                $("#marker").val(layer._latlng.lng + "," + layer._latlng.lng);
                layer.bindPopup('' + layer.getLatLng()).openPopup();
            }
            if (layer instanceof L.Polyline){
                $("#polyline").val(layer._latlng.lng + "," + layer._latlng.lng);
            }
            if (layer instanceof L.Polygon){
                $("#polygon").val(layer._latlng.lng + "," + layer._latlng.lng);
            }
        });
    });
</script>

@if ($map)
@if ($map['marker'])
<script>
    var long = parseFloat("{{ $map['marker']['long'] }}");
    var lat = parseFloat("{{ $map['marker']['lat'] }}");
    
    L.marker([lat, long]).addTo(map);
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
@endpush
