<link href="{{ url('/public/assets/plugins/leaflet/dist/leaflet.css') }}" rel="stylesheet">
<link href="{{ url('/public/assets/plugins/leaflet.draw/src/leaflet.draw.css') }}" rel="stylesheet">

<div id="map" style="height: 500px; border: 1px solid rgb(204, 204, 204); position: relative; outline: none;" tabindex="0"></div>
<input type="hidden" id="marker" name="marker" value="{{ $aksi == "edit" && $data->koordinat? $data->koordinat->getLng().",".$data->koordinat->getLat(): '' }}">
<input type="text" id="polygon" name="polygon" value="{{ $aksi == "edit" && $data->koordinat? $data->koordinat->getLng().",".$data->koordinat->getLat(): '' }}">
<input type="hidden" id="polyline" name="polyline" value="{{ $aksi == "edit" && $data->koordinat? $data->koordinat->getLng().",".$data->koordinat->getLat(): '' }}">

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
    var map;
    var marker;
    var position = [-8.5783,117.5098];

    var osmUrl = 'http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',

    osmAttrib = '&copy; <a href="http://openstreetmap.org/copyright">OpenStreetMap</a> contributors',
    osm = L.tileLayer(osmUrl, { maxZoom: 18, attribution: osmAttrib }),
    map = new L.Map('map', { center: new L.LatLng(39.74732195489861, -105.00432014465332), zoom: 18 }),
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
            var longlats = '';
            console.log(layer);
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

@if ($data)
@if ($data->marker)
<script>
    var lat = parseFloat('{{ $data->marker->getLat() }}');
    var long = parseFloat('{{ $data->marker->getLng() }}');
</script>
@endif
@if ($data->polygon)
<script>
    var campus = {
        "type": "Feature",
        "properties": {
            "popupContent": "This is the Auraria West Campus",
            "style": {
                weight: 2,
                color: "#999",
                opacity: 1,
                fillColor: "#B0DE5C",
                fillOpacity: 0.8
            }
        },
        "geometry": {
            "type": "MultiPolygon",
            "coordinates": [
                [
                    [
                        [-105.00432014465332, 39.74732195489861],
                    [-105.00715255737305, 39.74620006835170],
                    [-105.00921249389647, 39.74468219277038],
                    [-105.01067161560059, 39.74362625960105],
                    [-105.01195907592773, 39.74290029616054],
                    [-105.00989913940431, 39.74078835902781],
                    [-105.00758171081543, 39.74059036160317],
                    [-105.00346183776855, 39.74059036160317],
                    [-105.00097274780272, 39.74059036160317],
                    [-105.00062942504881, 39.74072235994946],
                    [-105.00020027160645, 39.74191033368865],
                    [-105.00071525573731, 39.74276830198601],
                    [-105.00097274780272, 39.74369225589818],
                    [-105.00097274780272, 39.74461619742136],
                    [-105.00123023986816, 39.74534214278395],
                    [-105.00183105468751, 39.74613407445653],
                    [-105.00432014465332, 39.74732195489861]

                    ]
                ]
            ]
        }
    };

	L.geoJSON([campus], {

style: function (feature) {
    return feature.properties && feature.properties.style;
},

onEachFeature: onEachFeature,

pointToLayer: function (feature, latlng) {
    return L.circleMarker(latlng, {
        radius: 8,
        fillColor: "#ff7800",
        color: "#000",
        weight: 1,
        opacity: 1,
        fillOpacity: 0.8
    });
}
}).addTo(map);

function onEachFeature(feature, layer) {
    var popupContent = "<p>I started out as a GeoJSON " +
            feature.geometry.type + ", but now I'm a Leaflet vector!</p>";

    if (feature.properties && feature.properties.popupContent) {
        popupContent += feature.properties.popupContent;
    }

    layer.bindPopup(popupContent);
}
</script>
@endif
@endif
@endpush
