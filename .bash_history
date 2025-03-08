ls
sudo  apt update 
sudo apt upgrade -y
sudo apt install python3 python3-pip -y
pip install requests apscheduler
log out
exit
sudo apt update && sudo apt upgrade -y
sudo apt install default-jdk -y
wget https://downloads.apache.org/kafka/3.5.0/kafka_2.13-3.5.0.tgz
wget https://archive.apache.org/dist/kafka/3.0.0/kafka_2.13-3.0.0.tgz
ls
tar -xvzf kafka_2.13-3.0.0.tgz 
cd kafka_2.13-3.0.0/
ls
cd bin
ls
cd ../
bin/zookeeper-server-sh config/zookeeper.properties &
clear
bin/zookeeper-server.sh config/zookeeper.properties &
ls
cd bin
ls
cd ../
bin/zookeeper-server-start.sh config/zookeeper.properties &
bin/kafka-server-start.sh  config/server.properties &
free -m
ls
nano api_consumer.py 
bin/zookeeper-server-start.sh config/zookeeper.properties &
ls
cd kafka_2.13-3.0.0/
bin/zookeeper-server-start.sh config/zookeeper.properties &
lsss
ls
bin/kafka-server-start.sh  config/server.properties &
ls
pip install kafka-python
ls
cd ../
ls
nano api_consumer.py
nano consumer.py
cat api_consumer.py 
cat consumer.py 
nano consumer.py 
bin/kafka-topics.sh --create --topic crypto_prices --bootstrap-server localhost:9092 --partitions 1 --replication-factor 1
ls
cd kafka_2.13-3.0.0/q
cd kafka_2.13-3.0.0/
bin/kafka-topics.sh --create --topic crypto_prices --bootstrap-server localhost:9092 --partitions 1 --replication-factor 1
cd ../
nohup python3 api_consumer.py &
ls
python3 consumer.py
nano consumer.py 
python3 consumer.py
nano api_consumer.py 
nohup python3 api_consumer.py &
ls
python3 api_consumer.py &
clear
python3 consumer.py
ls
nano consumer.py 
nano api_consumer.py 
python3 consumer.py
python3 api_consumer.py &
ls
nano api_consumer.py 
python3 api_consumer.py &
python3 consumer.py
ls
sudo apt update
sudo apt install openjdk-11-jdk -y
java -verison
java -version
echo "deb https://downlaods.apache.org/cassandra/deeebian 40x main" | sudo tee -a /etc/apt/sources.list.d/cassandra.list
lss
ls
curl https://downloads.apache.org/cassandra/KEYS | sudo apt-key add - 
ls
sudo apt install cassandra -y
ls
nodetool status
ls
cd ../
ls
cd ubuntu/
cd ../
ls
cd ../
ls
cd ../
ls
cd etc
ls
cd apt
cd sources.list.d/
ls
nano cassandra.list 
curl https://downloads.apache.org/cassandra/KEYS | sudo apt-key add -
sudo apt update
sudo rm -f /etc/apt/sources.list.d/cassandra.sources.list
ls
cd ../
sudo rm -f etc/apt/sources.list.d/cassandra.sources.list
echo "deb https://downloads.apache.org/cassandra/debian 40x main" | sudo tee /etc/apt/sources.list.d/cassandra.sources.list
curl https://downloads.apache.org/cassandra/KEYS | sudo apt-key add -
sudo apt update
cd etc
ls
cd apt
ls
nano sources.list
cd ../
echo "deb https://debian.cassandra.apache.org 41x main" | sudo tee -a /etc/apt/sources.list.d/cassandra.sources.list
cd etc/apt
cd apt
ls
cd sources.list.d/
ls
rm cassandra.list 
sudo rm cassandra.list 
sudo rm cassandra.sources.list 
echo "deb https://debian.cassandra.apache.org 41x main" | sudo tee -a /etc/apt/sources.list.d/cassandra.sources.list
ls
cd .../
cd ../
curl https://downloads.apache.org/cassandra/KEYS | sudo apt-key add -
sudo apt-get update
sudo apt-get install cassandra
sudo systemctl status cassandra
ls
sudo systemctl status cassandra
ls
nodetool status
cd ../
cqlsh
cd
ls
pip install cassandra-driver
nano consumer.py 
nano api_consumer.py 
nano consumer.py 
python3 api_consumer.py 
python api_consumer.py 
python3 api_consumer.py &
ls
clear
ls
cd kafka_2.13-3.0.0/
bin/zookeeper-server-start.sh config/zookeeper.properties &
ls
bin/kafka-server-start.sh config/server.properties &
ls
cd ../
python3 api_consumer.py &
python3 consumer.py &
ls
cd kafka_2.13-3.0.0/
bin/zookeeper-server-start.sh config/zookeeper.properties &
ls
bin/kafka-server-start.sh config/server.properties &
ls
cd ./
systemctl status cassandra
sudo systemctl enable cassandra.service
sudo service cassanndra start
sudo service cassandra start
systemctl status cassandra
cd ./
cd ../
ls
python3 api_consumer.py 
ls
nohup python3 api_consumer.py 
nohup python3 consumer.py 
ls
nohup python3 api_consumer.py 
cshql
cqlsh
systemctl status cassandra
sudo service cassanndra start
sudo service cassandra start
cqlsh
sudo cqlsh
systemctl status cassandra
sudo service cassandra start
systemctl status cassandra
ls
nano api_consumer.py 
nano consumer.py 
sudo systemctl enable cassandra
sudo systemctl start cassandra 
sudo systemctl status cassandra
sudo systemctl enable cassandra
sudo systemctl start cassandra 
sudo systemctl status cassandra
ls
cqlsh
exit
