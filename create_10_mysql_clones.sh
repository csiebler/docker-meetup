#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <volume_name>"
  exit 1
fi


for i in `seq 1 10`; do
  CLONE_NAME=${1}_clone_${i}
  ./clone_volume.sh $1 $CLONE_NAME

  # Now just import it into Docker Volumes and start a new instance
  docker volume create -d netapp --name $CLONE_NAME 
  docker run -d --name mysql$i -v $CLONE_NAME:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=secret mysql
done    
