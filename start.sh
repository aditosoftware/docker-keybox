#!/bin/bash

echo \
resetApplicationSSHKey=${resetApplicationSSHKey:-'false'}"
"sshKeyType=${sshKeyType:-'rsa'}"
"sshKeyLength=${sshKeyLength:-'2048'}"
"privateKey=${privateKey:-}"
"publicKey=${publicKey:-}"
"defaultSSHPassphrase=${defaultSSHPassphrase:-'${randomPassphrase}'}"
"enableInternalAudit=${enableInternalAudit:-'false'}"
"deleteAuditLogAfter=${deleteAuditLogAfter:-'90'}"
"auditLogAppender=${auditLogAppender:-}"
"serverAliveInterval=${serverAliveInterval:-'60'}"
"websocketTimeout=${websocketTimeout:-'0'}"
"agentForwarding=${agentForwarding:-'false'}"
"enableOTP=${enableOTP:-'true'}"
"keyManagementEnabled=${keyManagementEnabled:-'true'}"
"forceUserKeyGeneration=${forceUserKeyGeneration:-'true'}"
"authKeysRefreshInterval=${authKeysRefreshInterval:-'120'}"
"passwordComplexityRegEx=${passwordComplexityRegEx:-'((?=.*\\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*()+=]).{8\,20})'}"
"passwordComplexityMsg=${passwordComplexityMsg:-'Passwords must be 8 to 20 characters\, contain one digit\, one lowercase\, one uppercase\, and one special character'}"
"jaasModule=${jaasModule:-}\
> /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/KeyBoxConfig.properties

rm -rf /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/keydb
ln -sf /a/keydb /opt/KeyBox-jetty/jetty/keybox/WEB-INF/classes/

cd /opt/KeyBox-jetty/jetty/
java -Xmx1024m -jar start.jar