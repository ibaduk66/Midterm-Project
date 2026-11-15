TRUNCATE TABLE khairpur_parks RESTART IDENTITY;

INSERT INTO khairpur_parks
    (name, park_type, locality, facilities, area_ha, district, geom)
VALUES
    ('People''s Park', 'Park', 'Sample Sector 01', 'Benches, walking path', 2.4, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7594, 27.5269), 4326)),
    ('Sample Park 02', 'Park', 'Sample Sector 02', 'Lawn, seating', 1.8, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7468, 27.5186), 4326)),
    ('Sample Park 03', 'Park', 'Sample Sector 03', 'Lawn, walking path', 3.1, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7739, 27.5351), 4326)),
    ('Sample Park 04', 'Park', 'Sample Sector 04', 'Trees, benches', 1.5, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7541, 27.5427), 4326)),
    ('Sample Park 05', 'Park', 'Sample Sector 05', 'Lawn, play area', 2.7, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7314, 27.5292), 4326)),
    ('Sample Park 06', 'Park', 'Sample Sector 06', 'Trees, seating', 1.2, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7811, 27.5157), 4326)),
    ('Sample Park 07', 'Park', 'Sample Sector 07', 'Lawn, benches', 2.1, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7675, 27.5029), 4326)),
    ('Sample Park 08', 'Park', 'Sample Sector 08', 'Walking path, trees', 3.4, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7403, 27.5448), 4326)),
    ('Sample Park 09', 'Park', 'Sample Sector 09', 'Lawn, seating', 1.7, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7914, 27.5376), 4326)),
    ('Sample Park 10', 'Park', 'Sample Sector 10', 'Trees, walking path', 2.9, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7208, 27.5143), 4326)),
    ('Sample Park 11', 'Park', 'Sample Sector 11', 'Benches, lawn', 1.4, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7529, 27.5076), 4326)),
    ('Sample Park 12', 'Park', 'Sample Sector 12', 'Trees, seating', 2.6, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7752, 27.5204), 4326)),
    ('Sample Park 13', 'Park', 'Sample Sector 13', 'Lawn, walking path', 1.9, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7385, 27.5018), 4326)),
    ('Sample Park 14', 'Park', 'Sample Sector 14', 'Trees, benches', 3.2, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7847, 27.5059), 4326)),
    ('Sample Park 15', 'Park', 'Sample Sector 15', 'Lawn, seating', 2.3, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7286, 27.5401), 4326)),
    ('Sample Playground 01', 'Playground', 'Sample Sector 01', 'Play equipment', 0.6, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7472, 27.5345), 4326)),
    ('Sample Playground 02', 'Playground', 'Sample Sector 02', 'Play equipment, seating', 0.8, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7628, 27.5482), 4326)),
    ('Sample Playground 03', 'Playground', 'Sample Sector 03', 'Sports ground', 1.1, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7941, 27.5249), 4326)),
    ('Sample Playground 04', 'Playground', 'Sample Sector 04', 'Play equipment', 0.5, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7159, 27.5318), 4326)),
    ('Sample Playground 05', 'Playground', 'Sample Sector 05', 'Sports ground, seating', 0.9, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7574, 27.4898), 4326)),
    ('Sample Playground 06', 'Playground', 'Sample Sector 06', 'Play equipment', 0.7, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7341, 27.5103), 4326)),
    ('Sample Playground 07', 'Playground', 'Sample Sector 07', 'Sports ground', 1.3, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7698, 27.5582), 4326)),
    ('Sample Playground 08', 'Playground', 'Sample Sector 08', 'Play equipment, benches', 0.6, 'Khairpur', ST_SetSRID(ST_MakePoint(68.8012, 27.5166), 4326)),
    ('Sample Playground 09', 'Playground', 'Sample Sector 09', 'Sports ground, seating', 1.0, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7255, 27.5007), 4326)),
    ('Sample Playground 10', 'Playground', 'Sample Sector 10', 'Play equipment', 0.8, 'Khairpur', ST_SetSRID(ST_MakePoint(68.7437, 27.5571), 4326));
