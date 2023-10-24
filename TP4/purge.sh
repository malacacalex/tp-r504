docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker network prune -a
docker volumes prune -a
