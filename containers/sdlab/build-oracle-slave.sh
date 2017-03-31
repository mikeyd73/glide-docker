#!/usr/bin/bash
docker build --rm -t snc/docker-slave-oracle:latest -f Dockerfile-slave-oracle .
sleep 2
docker images | grep oracle
