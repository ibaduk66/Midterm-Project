CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE IF NOT EXISTS khairpur_parks (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    park_type VARCHAR(30) NOT NULL CHECK (park_type IN ('Park', 'Playground')),
    locality TEXT NOT NULL,
    facilities TEXT NOT NULL,
    area_ha NUMERIC(8, 2) NOT NULL,
    district TEXT NOT NULL,
    geom GEOMETRY(Point, 4326) NOT NULL
);

CREATE INDEX IF NOT EXISTS idx_khairpur_parks_geom
    ON khairpur_parks USING GIST (geom);
