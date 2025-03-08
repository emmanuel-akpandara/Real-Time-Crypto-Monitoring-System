from cassandra.cluster import Cluster
from cassandra.auth import PlainTextAuthProvider
from kafka import KafkaConsumer
import json

KAFKA_BROKER = "localhost:9092"
KAFKA_TOPIC = "crypto_prices"

consumer = KafkaConsumer(
	KAFKA_TOPIC,
	bootstrap_servers=KAFKA_BROKER,
	auto_offset_reset="earliest",
	value_deserializer=lambda x: json.loads(x.decode("utf-8"))
)

print("Listening for messages")

cluster = Cluster(['localhost'])
session = cluster.connect('crypto')

for message in consumer:
	data = message.value
	print(f"Received: {data}")
	insert_query = """
	INSERT INTO crypto_prices (timestamp, from_currency, to_currency, exchange_rate, bid_price, ask_price)
	VALUES (%s, %s, %s, %s, %s, %s)
	"""
	session.execute(insert_query,(
		data['timestamp'], data['from_currency'], data['to_currency'],
		data['exchange_rate'], data['bid_price'], data['ask_price']
	))
	
	print(f"Data inserted: {data}")

## cluster.shutdown() ##
