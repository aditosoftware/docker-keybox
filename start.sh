#!/bin/bash

if [ -f '/a/data/KeyBoxConfig.properties' ]
then
    ln -sf /a/data/KeyBoxConfig.properties /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties
else
    cp /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties /a/data/KeyBoxConfig.properties
    ln -sf /a/data/KeyBoxConfig.properties /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties
fi

mkdir -p /a/data/keydb
rm -rf /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/keydb
ln -sf /a/data/keydb /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/


cd /opt/KeyBox-jetty/jetty/
java -Xms1024m -Xmx1024m -jar start.jar