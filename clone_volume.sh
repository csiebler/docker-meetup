#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: ./clone_volume.sh <volume_name>"
  exit 1
fi

source ontap.conf

SOURCE_VOLUME=${DOCKER_VOL_PREFIX}$1
CLONE_VOLUME=${SOURCE_VOLUME}_clone1
echo Cloning $SOURCE_VOLUME to $CLONE_VOLUME

ssh -l $MGMT_USER $MGMT_LIF vol clone create -flexclone $CLONE_VOLUME -type RW -parent-volume $SOURCE_VOLUME
