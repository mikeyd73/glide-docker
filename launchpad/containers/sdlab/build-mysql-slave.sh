#!/usr/bin/bash

docker build --rm -t snc/docker-slave-mysql:latest -f Dockerfile-slave-mysql .
sleep 1
docker images | grep slave-mysql
