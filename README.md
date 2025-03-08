# Real-Time Cryptocurrency Monitoring System

## Overview
This project is a **real-time cryptocurrency exchange rate monitoring system**, designed to fetch, process, and store cryptocurrency data using modern **data engineering** tools and technologies. The system is deployed on an **AWS EC2 instance** (t2.small) running **Ubuntu**, ensuring 24/7 availability.

## Features
- Fetches real-time exchange rates for multiple cryptocurrencies (BTC, ETH, XRP) against major fiat currencies (USD, EUR).
- Streams data to **Apache Kafka** for real-time ingestion.
- Stores structured data in **Apache Cassandra** for long-term storage.
- Implements a **Kafka consumer** to process and insert data into Cassandra.
- Designed for scalability and future improvements.

## Project Structure
The repository contains the following key files:

| File | Description |
|------|------------|
| `api_consumer.py` | Fetches cryptocurrency exchange rates and publishes them to Kafka. |
| `consumer.py` | Reads data from Kafka and inserts it into Cassandra. |
| `setup.sh` | Script for setting up dependencies on AWS EC2. |
| `.gitignore` | Ensures sensitive information (like API keys) and unnecessary files are not pushed to GitHub. |
| `README.md` | Documentation of the project. |

## Technologies Used
- **Cloud**: AWS EC2 (Ubuntu t2.small)
- **Data Ingestion**: Alpha Vantage API
- **Streaming**: Apache Kafka
- **Storage**: Apache Cassandra
- **Programming**: Python
- **Scheduling**: APScheduler

## Deployment Process
1. **Create an AWS EC2 Instance** (Ubuntu, t2.small).
2. **Install Required Dependencies**
   ```sh
   sudo apt update && sudo apt install python3 python3-pip -y
   pip install requests apscheduler kafka-python cassandra-driver
   ```
3. **Set Up Kafka & Cassandra**
   - Start **Kafka Broker** for message streaming.
   - Start **Cassandra** for data storage.
4. **Run API Consumer**
   ```sh
   nohup python3 api_consumer.py &
   ```
5. **Run Kafka Consumer**
   ```sh
   nohup python3 consumer.py &
   ```
## Crypto stored in Cassandra
   <img src="images/crypto table.png" width="800">

## Future Improvements
- **Visualization Dashboard**: Implement a **Grafana** or **Streamlit** dashboard for real-time monitoring.
- **Improved Scalability**: Upgrade EC2 instance or move to a managed Kafka/Cassandra service.
- **Error Handling & Logging**: Improve fault tolerance and add logging mechanisms.

## Notes
- API keys are stored securely and **not included in the repository**.
- The project is designed to be modular for easy expansion.

---
This project is a foundational step towards real-time **crypto analytics** and will continue evolving with further enhancements. 🚀

