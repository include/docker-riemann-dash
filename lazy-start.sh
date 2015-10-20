#!/usr/bin/env bash

CURDIR=$(pwd)

docker run -d \
    -p 4567:4567 \
    -e DATADIR=/vol \
    -v ${CURDIR}:/vol \
    include/docker-riemann-dash
