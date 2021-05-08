#! /bin/bash


CONTAINER=docker-jupyterlab_lab_1
NOW=`date '+%Y%m%d-%H%M%S'`
NAME=${1:-jupyter}
BACKUP=/mnt/nfs/backup

docker exec ${CONTAINER} tar czCf work - . > ${BACKUP}/${NAME}-${NOW}.tar.gz
