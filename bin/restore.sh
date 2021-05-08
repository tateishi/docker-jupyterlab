#! /bin/bash


CONTAINER=docker-jupyterlab_lab_1

cat $1 | docker exec -i ${CONTAINER} tar xvzCf work -
