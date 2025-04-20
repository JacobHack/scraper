-- Raw data table (scraper dumps JSON here)
CREATE TABLE IF NOT EXISTS raw_air_data (
    id SERIAL PRIMARY KEY,
    request_time TIMESTAMPTZ DEFAULT now(),
    location JSONB NOT NULL,
    air_data JSONB NOT NULL
);

-- Locations table (unique lat/lon)
CREATE TABLE IF NOT EXISTS locations (
    location_id SERIAL PRIMARY KEY,
    latitude DOUBLE PRECISION NOT NULL,
    longitude DOUBLE PRECISION NOT NULL,
    CONSTRAINT uq_location UNIQUE (latitude, longitude)
);

-- Air quality readings (1 per timestamp per location)
CREATE TABLE IF NOT EXISTS air_quality_readings (
    reading_id SERIAL PRIMARY KEY,
    location_id INT NOT NULL REFERENCES locations(location_id) ON DELETE CASCADE,
    datetime TIMESTAMPTZ NOT NULL,
    aqi INT NOT NULL,
    CONSTRAINT uq_reading UNIQUE (location_id, datetime)
);

CREATE INDEX IF NOT EXISTS idx_air_quality_location ON air_quality_readings(location_id);

-- Components table (e.g. pm10, o3, etc.)
CREATE TABLE IF NOT EXISTS components (
    component_id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL
);

-- Optional seed data for common air pollutants
INSERT INTO components (name)
VALUES 
  ('co'), ('no'), ('no2'), ('o3'), 
  ('so2'), ('pm2_5'), ('pm10'), ('nh3')
ON CONFLICT (name) DO NOTHING;

-- Junction table linking readings and component values
CREATE TABLE IF NOT EXISTS reading_components (
    reading_id INT NOT NULL REFERENCES air_quality_readings(reading_id) ON DELETE CASCADE,
    component_id INT NOT NULL REFERENCES components(component_id) ON DELETE CASCADE,
    value DOUBLE PRECISION NOT NULL,
    PRIMARY KEY (reading_id, component_id)
);

CREATE INDEX IF NOT EXISTS idx_reading_components_component ON reading_components(component_id);
