#!/bin/bash
#
# Runs flowblade in a docker container
# Flowblade's config file is in the CWD
# Tested briefly with nvidia and intel gpus
#
# arunsmtp@gmail.com
#

DockerImage="flowblade-1.16:latest"
CPUS="3"
MEM="4g"

# For ALSA to work ensure uid/gid's are same inside container

  docker run --rm -it \
      --cpus=${CPUS} \
      --memory=${MEM} \
      --user ${UID}:${UID} \
      -v /tmp/.X11-unix:/tmp/.X11-unix \
      -e DISPLAY=unix$DISPLAY \
      --device /dev/dri \
      --name Flowblade \
      -v /etc/passwd:/etc/passwd:ro \
      -v /etc/group:/etc/group:ro \
      -v ${PWD}/fbwork/fbhome/:/home/${USER}/:rw \
      -v ${PWD}/fbwork/:/workdir \
      --device /dev/snd \
      --group-add audio \
      -v /dev/shm:/dev/shm \
    ${DockerImage}
