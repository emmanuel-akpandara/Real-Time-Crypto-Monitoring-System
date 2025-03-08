import requests
import json
from datetime import datetime
from apscheduler.schedulers.blocking import BlockingScheduler
from kafka import KafkaProducer
import os
from dotenv import load_dotenv

load_dotenv()
API_KEY = os.getenv("API_KEY")

KAFKA_BROKER = "localhost:9092"
KAFKA_TOPIC = "crypto_prices"

producer =  KafkaProducer(
	bootstrap_servers=KAFKA_BROKER,
	value_serializer=lambda v: json.dumps(v).encode('utf-8')
)


CURRENCY_PAIRS = [("BTC","USD"),("BTC","EUR"),("ETH","USD"),("ETH","EUR"),("XRP","USD"),("XRP","EUR")]

def fetch_and_send_data():
	results = []
	for from_currency, to_currency in CURRENCY_PAIRS:
		url = f"https://www.alphavantage.co/query?function=CURRENCY_EXCHANGE_RATE&from_currency={from_currency}&to_currency={to_currency}&apikey={API_KEY}"
		response = requests.get(url)
		raw_data = response.json()
		if "Realtime Currency Exchange Rate" in raw_data:
			exchange_info = raw_data["Realtime Currency Exchange Rate"]
			formatted_data = {
				"timestamp": exchange_info["6. Last Refreshed"],
				"from_currency": exchange_info["1. From_Currency Code"],
				"to_currency": exchange_info["3. To_Currency Code"],
				"exchange_rate": float(exchange_info["5. Exchange Rate"]),
				"bid_price": float(exchange_info["8. Bid Price"]),
				"ask_price": float(exchange_info["9. Ask Price"])
				}
			producer.send(KAFKA_TOPIC, formatted_data)
			print(f"Sent to Kafka: {formatted_data}")
		else:
			print(f"Error fetching data for {from_currency}/{to_currency}")


fetch_and_send_data()
scheduler = BlockingScheduler()
scheduler.add_job(fetch_and_send_data, "interval", minutes=30)
print("Crypto data streaming started... Running every 30 mins")

scheduler.start()
