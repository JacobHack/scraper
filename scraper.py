import requests
import psycopg2
import json
from datetime import datetime, timedelta
import time

# --- CONFIG ---
API_KEY = "your_api_key_here"
DB_CONFIG = {
    "dbname": "your_db",
    "user": "your_user",
    "password": "your_password",
    "host": "your_host",
    "port": 5432
}
LAT = 44.9369
LON = -123.0280

# --- FUNCTIONS ---
def fetch_historical_data(start_ts, end_ts):
    url = "https://api.openweathermap.org/data/2.5/air_pollution/history"
    params = {
        "lat": LAT,
        "lon": LON,
        "start": start_ts,
        "end": end_ts,
        "appid": API_KEY
    }
    response = requests.get(url, params=params)
    response.raise_for_status()
    return response.json()

def insert_raw_data(conn, location, air_data):
    with conn.cursor() as cur:
        cur.execute("""
            INSERT INTO raw_air_data (location, air_data)
            VALUES (%s, %s);
        """, [json.dumps(location), json.dumps(air_data)])
        conn.commit()

# --- MAIN ---
def main():
    conn = psycopg2.connect(**DB_CONFIG)
    try:
        location = {"lat": LAT, "lon": LON}
        today = datetime.utcnow().replace(hour=0, minute=0, second=0, microsecond=0)

        for days_ago in range(30, 0, -1):
            day = today - timedelta(days=days_ago)
            start_ts = int(time.mktime(day.timetuple()))
            end_ts = int(time.mktime((day + timedelta(days=1)).timetuple()))

            print(f"Fetching data for {day.strftime('%Y-%m-%d')}...")
            data = fetch_historical_data(start_ts, end_ts)
            insert_raw_data(conn, location, data.get("list", []))
            print(f"Inserted data for {day.strftime('%Y-%m-%d')}")
            time.sleep(1)  # avoid rate limits

    finally:
        conn.close()
        print("All done.")

if __name__ == "__main__":
    main()
