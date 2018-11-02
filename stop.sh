#!/bin/bash 

docker stop hadoop-slave2
docker stop hadoop-slave1
docker stop hadoop-master

docker rm hadoop-slave2
docker rm hadoop-slave1
docker rm hadoop-master
