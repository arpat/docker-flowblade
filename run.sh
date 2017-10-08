#!/bin/bash
#
# Runs flowblade in a docker container
# Flowblade's config file is in the CWD
# Tested briefly with nvidia and intel gpus
# 
# arunsmtp@gmail.com
#

DockerImage="flowblade-1.14:latest"
CPUS="3"
MEM="4g"


  docker run --rm -it \
       --cpus=${CPUS} \
       --memory=${MEM} \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       -e DISPLAY=unix$DISPLAY \
       --device /dev/dri \
       --device /dev/snd \
       -v /dev/shm:/dev/shm \
       -v ${PWD}:/workdir \
       -v ${PWD}/.flowblade:/root/.flowblade \
       --name flowblade-1.14 \
    ${DockerImage}

 

