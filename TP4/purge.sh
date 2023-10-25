docker stop $(docker ps -a -q)
docker rm --force $(docker ps -a -q)

docker network prune -f
docker volume prune -f
