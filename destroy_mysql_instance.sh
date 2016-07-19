#! /bin/sh

docker stop mysql
docker rm mysql
docker volume rm mysql
