const map = L.map("map").setView([27.5269, 68.7594], 12);

L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
  attribution: "&copy; OpenStreetMap contributors"
}).addTo(map);

const status = document.getElementById("status");

function escapeHtml(value) {
  return String(value ?? "").replace(/[&<>"']/g, (character) => ({
    "&": "&amp;",
    "<": "&lt;",
    ">": "&gt;",
    '"': "&quot;",
    "'": "&#39;"
  })[character]);
}

function markerColor(type) {
  return type === "Playground" ? "#1f6feb" : "#2e8b57";
}

async function loadParks() {
  try {
    const response = await fetch("/api/parks");

    if (!response.ok) {
      throw new Error("Could not load park data.");
    }

    const data = await response.json();
    const layer = L.geoJSON(data, {
      pointToLayer: (feature, latlng) => {
        const color = markerColor(feature.properties.park_type);
        return L.circleMarker(latlng, {
          radius: 8,
          color,
          fillColor: color,
          fillOpacity: 0.8
        });
      },
      onEachFeature: (feature, marker) => {
        const park = feature.properties;
        marker.bindPopup(`
          <strong>${escapeHtml(park.name)}</strong><br>
          Type: ${escapeHtml(park.park_type)}<br>
          Locality: ${escapeHtml(park.locality)}<br>
          Facilities: ${escapeHtml(park.facilities)}<br>
          Area: ${escapeHtml(park.area_ha)} ha<br>
          District: ${escapeHtml(park.district)}<br>
          <em>Sample data — not verified</em>
        `);
      }
    }).addTo(map);

    if (data.features.length > 0) {
      map.fitBounds(layer.getBounds(), { padding: [20, 20] });
    }

    status.textContent = `Loaded ${data.features.length} sample records from PostGIS.`;
  } catch (error) {
    console.error(error);
    status.textContent = "Could not connect to the database. Check the setup and .env file.";
  }
}

loadParks();
