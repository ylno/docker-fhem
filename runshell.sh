docker run \
--name=fhem \
-v `pwd`/mumble-server.ini:/etc/murmur.ini:ro \
-v `pwd`/data/:/data/:rw \
--restart=unless-stopped \
fhem \
/bin/bash

