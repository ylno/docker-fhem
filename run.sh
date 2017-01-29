#!/bin/sh

mkdir -p logs 
chown 100 logs

docker run \
-d \
--name=fhem \
-p 8083:8083 \
-v `pwd`/fhem.cfg:/cfg/fhem.cfg:ro \
-v `pwd`/logs/:/logs/:rw \
--restart=unless-stopped \
mfrankl/fhem
