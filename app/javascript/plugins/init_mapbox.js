import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
    const fitMapToMarkers = (map, markers) => {
        const bounds = new mapboxgl.LngLatBounds();
        markers.forEach(marker => bounds.extend([marker.lng, marker.lat]));
        map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
    };

    const mapElement = document.getElementById('map');

    if (mapElement) { // only build a map if there's a div#map to inject into
        mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
        const map = new mapboxgl.Map({
            container: 'map',
            style: 'mapbox://styles/sejolu/cki8wbd1k2bob19pj6qimbtrr'
        });

        const markers = JSON.parse(mapElement.dataset.markers);

        if (markers.length > 0) {
          markers.forEach((marker) => {
            // Pass the element as an argument to the new marker
            const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

            const element = document.createElement('div');
            element.className = 'marker';
            element.style.backgroundImage = `url('${marker.image_url}')`;
            element.style.backgroundSize = 'contain';
            element.style.width = '35px';
            element.style.height = '35px';

            new mapboxgl.Marker(element)
                .setLngLat([marker.lng, marker.lat])
                .setPopup(popup)
                .addTo(map);
          });

          fitMapToMarkers(map, markers);
        }

        // Disable zoom on showpage
        const showInMap = document.querySelector(".map-in-show");

        if (showInMap) {
            map.scrollZoom.disable();
        }
    }
};


export { initMapbox };
