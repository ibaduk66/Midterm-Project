require("dotenv").config();

const express = require("express");
const path = require("path");
const { Pool } = require("pg");

const app = express();
const port = Number(process.env.PORT) || 3000;

const pool = new Pool({
  host: process.env.DB_HOST || "localhost",
  port: Number(process.env.DB_PORT) || 5432,
  database: process.env.DB_NAME || "khairpur_gis",
  user: process.env.DB_USER || "postgres",
  password: process.env.DB_PASSWORD || "postgres"
});

app.use(express.static(path.join(__dirname, "public")));

app.get("/api/db-status", async (req, res) => {
  try {
    const result = await pool.query(
      "SELECT current_database() AS database_name, PostGIS_Full_Version() AS postgis_version"
    );

    res.json({
      status: "connected",
      database: result.rows[0].database_name,
      postgis: result.rows[0].postgis_version
    });
  } catch (error) {
    console.error("Database check failed:", error.message);
    res.status(503).json({ status: "not connected", error: "PostgreSQL/PostGIS is not ready." });
  }
});

app.get("/api/parks", async (req, res) => {
  try {
    const result = await pool.query(`
      SELECT
        id,
        name,
        park_type,
        locality,
        facilities,
        area_ha,
        district,
        ST_AsGeoJSON(geom)::json AS geometry
      FROM khairpur_parks
      ORDER BY id;
    `);

    const features = result.rows.map((row) => ({
      type: "Feature",
      geometry: row.geometry,
      properties: {
        id: row.id,
        name: row.name,
        park_type: row.park_type,
        locality: row.locality,
        facilities: row.facilities,
        area_ha: Number(row.area_ha),
        district: row.district
      }
    }));

    res.json({ type: "FeatureCollection", features });
  } catch (error) {
    console.error("Park query failed:", error.message);
    res.status(503).json({ error: "Could not load parks. Check the database setup." });
  }
});

app.listen(port, () => {
  console.log(`Khairpur Parks app listening on port ${port}`);
});
