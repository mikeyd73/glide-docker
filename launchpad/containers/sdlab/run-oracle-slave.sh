#!/usr/bin/bash

docker run --name slave-oracle -d -v /docker-data/qalab:/qalab -p 4100:22 -t snc/docker-slave-oracle:latest
sleep 2
docker ps -a
