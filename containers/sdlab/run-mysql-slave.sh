#!/usr/bin/bash

docker run --name slave-mysql -d -v /docker-data/qalab:/qalab  -p 4200:22 -t snc/docker-slave-mysql:latest
sleep 2
docker ps -a
