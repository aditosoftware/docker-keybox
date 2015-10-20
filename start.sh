#!/bin/bash
set -x
if [ ! -f '/a/data/KeyBoxConfig.properties' ]
then
    cp /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties /a/data/KeyBoxConfig.properties
fi
ln -sf /a/data/KeyBoxConfig.properties /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties

mkdir -p /a/data/keydb
rm -rf /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/keydb
ln -sf /a/data/keydb /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/

cd /opt/KeyBox-jetty/jetty/
java -Xmx1024m -jar start.jar