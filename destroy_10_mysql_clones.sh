#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <volume_name>"
  exit 1
fi

for i in `seq 1 10`; do
  VOLUME_NAME=${1}_clone_${i}
  CONTAINER_NAME=mysql$i
  
 # Stop container, remove it and delete its Docker Volume
  docker stop $CONTAINER_NAME
  docker rm $CONTAINER_NAME
  docker volume rm $VOLUME_NAME &
done    
