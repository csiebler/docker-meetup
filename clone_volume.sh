#!/bin/bash

if [ -z "$2" ]; then
  echo "Usage: $0 <src_volume_name> <dest_volume_name>"
  exit 1
fi

source ontap.conf

SOURCE_VOLUME=${DOCKER_VOL_PREFIX}$1
CLONE_VOLUME=${DOCKER_VOL_PREFIX}$2

echo Cloning $SOURCE_VOLUME to $CLONE_VOLUME
ssh -l $MGMT_USER $MGMT_LIF vol clone create -flexclone $CLONE_VOLUME -type RW -parent-volume $SOURCE_VOLUME

