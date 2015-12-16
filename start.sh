#!/bin/bash

#writing variables in configuration file, i found no better way to do this
echo resetApplicationSSHKey=${resetApplicationSSHKey:-false} > /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties
echo sshKeyType=${sshKeyType:-rsa} >> /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties
echo sshKeyLength=${sshKeyLength:-2048} >> /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties
echo privateKey=${privateKey:-} >> /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties
echo publicKey=${publicKey:-} >> /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties
echo defaultSSHPassphrase=${defaultSSHPassphrase:-'${randomPassphrase}'} >> /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties
echo enableInternalAudit=${enableInternalAudit:-false} >> /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties
echo deleteAuditLogAfter=${deleteAuditLogAfter:-90} >> /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties
echo serverAliveInterval=${serverAliveInterval:-60} >> /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties
echo websocketTimeout=${websocketTimeout:-0} >> /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties
echo agentForwarding=${agentForwarding:-false} >> /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties
echo oneTimePassword=${oneTimePassword:-optional} >> /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties
echo keyManagementEnabled=${keyManagementEnabled:-true} >> /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties
echo forceUserKeyGeneration=${forceUserKeyGeneration:-true} >> /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties
echo authKeysRefreshInterval=${authKeysRefreshInterval:-120} >> /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties
echo passwordComplexityRegEx=${passwordComplexityRegEx:-'((?=.*\\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*()+=]).{8\,20})'} >> /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties
echo passwordComplexityMsg=${passwordComplexityMsg:-'Passwords must be 8 to 20 characters\, contain one digit\, one lowercase\, one uppercase\, and one special character'} >> /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties
echo clientIPHeader=${clientIPHeader:-} >> /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties
echo jaasModule=${jaasModule:-} >> /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties

#link database directory
rm -rf /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/keydb
ln -sf /a/keydb /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/


#Start keybox
cd /opt/KeyBox-jetty/jetty/
java -Xmx1024m -jar start.jar