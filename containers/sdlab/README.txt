

# kill containers
docker rm -f $(docker ps -a |  awk '/docker-slave-mysql:1.0/{print $1}')
