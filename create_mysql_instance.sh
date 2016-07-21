#! /bin/sh

docker volume create -d netapp --name mysql -o size=100g -o snapshotPolicy=default -o snapshotDir=false
docker run -d --name mysql -v mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=secret mysql
