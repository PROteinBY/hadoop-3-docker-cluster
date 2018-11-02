#!/bin/bash

docker run -itd --name hadoop-master --hostname hadoop-master --network hadoop proteinby/hadoop-3
docker run -itd --name hadoop-slave1 --hostname hadoop-slave1 --network hadoop proteinby/hadoop-3
docker run -itd --name hadoop-slave2 --hostname hadoop-slave2 --network hadoop proteinby/hadoop-3
