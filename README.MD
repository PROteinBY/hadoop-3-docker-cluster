# Hadoop 3.1.1 simple docker cluster

### How to run
1. Download ```hadoop-3.1.1.tar.gz``` (https://www.apache.org/dyn/closer.cgi/hadoop/common/hadoop-3.1.1/hadoop-3.1.1.tar.gz)
2. Put it to the project root folder
3. Build image: ```docker build -t proteinby/hadoop-3 .```
4. Create docker network for cluster: ```docker network create --driver=bridge hadoop```
5. Run ```start.sh```
6. Get into hadoop-master: ```docker exec -it hadoop-master bash```
7. Run ```start-hadoop.sh``` there
8. Run ```run-wordcount.sh``` to run Word Count job

### Description

* This cluster consists of one master node and two slaves
* You can add more slaves. You only need to updated ```start.sh``` and ```stop.sh``` and add new slaves to the ```config/workers``` file
* This setup uses ssh to run slave daemons
* You might have to change resource configs. Current config uses 4 cores and 4 Gb RAM


### Web UI
  If you want to see web UI you have to add ```hadoop-master```, ```hadoop-slaveN``` IPs to your ```/etc/hosts``` file. Then you can go to:
* ```http://hadoop-master:9870``` HDFS Web UI
* ```http://hadoop-master:8088``` YARN Web UI
* ```http://hadoop-master:19888``` MapReduce JobHistory Web UI