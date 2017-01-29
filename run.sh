docker run \
--name=mfrankl/fhem \
-p 8083:8083 \
-v `pwd`/fhem.cfg:/cfg/fhem.cfg:ro \
-v `pwd`/logs/:/logs/:rw \
--restart=unless-stopped \
fhem
