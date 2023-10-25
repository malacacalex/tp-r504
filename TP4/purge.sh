docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker network rm net-tp4
docker volumes prune -a
