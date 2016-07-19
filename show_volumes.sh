#!/bin/bash

source ontap.conf
ssh -l $MGMT_USER $MGMT_LIF vol show -volume $DOCKER_VOL_PREFIX* -fields volume, size
