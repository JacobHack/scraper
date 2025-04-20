from dotenv import load_dotenv
import os
import requests
import psycopg2
import json
from datetime import datetime, timedelta
import time

load_dotenv()

API_KEY = os.getenv("API_KEY")
LAT = 44.9369
LON = -123.0280

DB_CONFIG = {
    "dbname": os.getenv("PGDATABASE"),
    "user": os.getenv("PGUSER"),
    "password": os.getenv("PGPASSWORD"),
    "host": os.getenv("PGHOST"),
    "port": int(os.getenv("PGPORT", 20615))
}

def initialize_db(conn):
    with conn.cursor() as cur:
        cur.execute("""
        CREATE TABLE IF NOT EXISTS raw_air_data (
            id SERIAL PRIMARY KEY,
            request_time TIMESTAMPTZ DEFAULT now(),
            location JSONB NOT NULL,
            air_data JSONB NOT NULL
        );

        CREATE TABLE IF NOT EXISTS locations (
            location_id SERIAL PRIMARY KEY,
            latitude DOUBLE PRECISION NOT NULL,
            longitude DOUBLE PRECISION NOT NULL,
            CONSTRAINT uq_location UNIQUE (latitude, longitude)
        );

        CREATE TABLE IF NOT EXISTS air_quality_readings (
            reading_id SERIAL PRIMARY KEY,
            location_id INT REFERENCES locations(location_id),
            datetime TIMESTAMPTZ NOT NULL,
            aqi INT NOT NULL,
            CONSTRAINT uq_reading UNIQUE (location_id, datetime)
        );

        CREATE TABLE IF NOT EXISTS components (
            component_id SERIAL PRIMARY KEY,
            name TEXT UNIQUE NOT NULL
        );

        CREATE TABLE IF NOT EXISTS reading_components (
            reading_id INT REFERENCES air_quality_readings(reading_id) ON DELETE CASCADE,
            component_id INT REFERENCES components(component_id) ON DELETE CASCADE,
            value DOUBLE PRECISION NOT NULL,
            PRIMARY KEY (reading_id, component_id)
        );
        """)
        conn.commit()
        print("✅ Initialized DB schema.")


def fetch_historical_air_quality(lat, lon, start_ts, end_ts):
    url = "http://api.openweathermap.org/data/2.5/air_pollution/history"
    params = {
        "lat": lat,
        "lon": lon,
        "start": start_ts,
        "end": end_ts,
        "appid": API_KEY
    }
    response = requests.get(url, params=params)
    response.raise_for_status()
    return response.json()

def insert_raw_data(conn, location, air_data):
    with conn.cursor() as cur:
        cur.execute(
            "INSERT INTO raw_air_data (location, air_data) VALUES (%s, %s);",
            [json.dumps(location), json.dumps(air_data)]
        )
        conn.commit()

def main():
    print("Connecting to DB...")
    conn = psycopg2.connect(**DB_CONFIG)
    initialize_db(conn)

    print("✅ Connected to DB")

    location = {"lat": LAT, "lon": LON}
    today = datetime.utcnow().replace(hour=0, minute=0, second=0, microsecond=0)

    for day_offset in range(30, 0, -1):
        day = today - timedelta(days=day_offset)
        start_ts = int(day.timestamp())
        end_ts = int((day + timedelta(days=1)).timestamp())

        print(f"Fetching data for {day.strftime('%Y-%m-%d')}...")
        try:
            data = fetch_historical_air_quality(LAT, LON, start_ts, end_ts)
            if data.get("list"):
                insert_raw_data(conn, location, data["list"])
                print(f"✅ Inserted data for {day.strftime('%Y-%m-%d')}")
            else:
                print(f"⚠️ No data for {day.strftime('%Y-%m-%d')}")
        except Exception as e:
            print(f"❌ Error fetching data for {day.strftime('%Y-%m-%d')}: {e}")

        time.sleep(1)  # Avoid hitting API limits

    conn.close()
    print("✅ Done!")

if __name__ == "__main__":
    main()
