# FA23-BRG-029: Khairpur Parks and Playgrounds

A basic Web GIS using PostgreSQL/PostGIS, Express, and Leaflet.

## Project structure

- `.env.example` – template for local database settings
- `server.js` – serves the map and reads park points from PostGIS
- `public/` – the simple map page, script, and stylesheet
- `data/khairpur_parks.geojson` – spatial dataset for viewing or loading in GIS software
- `sql/schema.sql` – creates the PostGIS table
- `sql/seed.sql` – loads 25 sample points

The GeoJSON file contains the same 25 points as the SQL seed, in WGS 84 (EPSG:4326). It is synthetic demonstration data, not a verified inventory of real parks or playgrounds.

## Important data note

The 25 records (15 parks and 10 playgrounds) are **synthetic sample data**. Names, coordinates, localities, facilities, and areas are not verified real-world information. They are only for demonstrating the Web GIS workflow.

## Setup

1. Open `.env` in this folder and replace `replace_with_your_local_postgres_password` with your PostgreSQL password.
2. In pgAdmin, create a database named `khairpur_gis`.
3. Open that database's Query Tool and run `sql/schema.sql`, then `sql/seed.sql`.
4. Open this folder in VS Code. In its terminal, run `npm install` once and then `npm start`.
5. Open `http://localhost:3000`.
