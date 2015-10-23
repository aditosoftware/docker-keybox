# What is KeyBox?
KeyBox is an open-source web-based SSH console that centrally manages administrative access to systems. Web-based administration is combined with management and distribution of user's public SSH keys. Key management and administration is based on profiles assigned to defined users.
More information on [sshkeybox.com](http://sshkeybox.com/) or [GitHub](https://github.com/skavanagh/KeyBox)

## KeyBox - Version: 2.84.00


## How to use this image
```console
$ docker run -d -v /my/own/datadir:/a/keydb -p 8443:8443 adito/keybox
```
You can replace `/my/own/datadir` with your preferred path on your host 
now you can access keybox at `https://host-ip:8443`
the default user is `admin` and the default password is `changeme`


## Environment Variables

All possible environment variables with their default values are listed below.


#### `resetApplicationSSHKey=false`

set to true to regenerate and import SSH keys


#### `sshKeyType=rsa`

SSH Key Type 'dsa' or 'rsa' for generated keys


#### `sshKeyLength=2048`

SSH Key Length for generated keys


#### `privateKey=`

private ssh key, leave blank to generate key pair


#### `publicKey=`

public ssh key, leave blank to generate key pair


#### `defaultSSHPassphrase=${randomPassphrase}`

default passphrase, leave blank for key without passphrase


#### `enableInternalAudit=false`

enable audit


#### `deleteAuditLogAfter=90`

keep audit logs for in days


#### `auditLogAppender=`

set an audit log server using log4j (ex: logstash). Edit the log4j.xml to configure appender.


#### `serverAliveInterval=60`

The number of seconds that the client will wait before sending a null packet to the server to keep the connection alive


#### `websocketTimeout=0`

default timeout in minutes for websocket connection (no timeout for <=0)


#### `agentForwarding=false`

enable SSH agent forwarding


#### `enableOTP=true`

enable two-factor authentication


#### `keyManagementEnabled=true`

enable key management


#### `forceUserKeyGeneration=true`

set to true to generate keys when added/managed by users and enforce strong passphrases set to false to allow users to set their own public key


#### `authKeysRefreshInterval=120`

authorized_keys refresh interval in minutes (no refresh for <=0)


#### `passwordComplexityRegEx=((?=.*\\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*()+=]).{8\,20})`

Regular expression to enforce password policy


#### `passwordComplexityMsg=Passwords must be 8 to 20 characters\, contain one digit\, one lowercase\, one uppercase\, and one special character`

Password complexity error message


#### `jaasModule=`

specify a external authentication module (ex: ldap-ol, ldap-ad).  Edit the jaas.conf to set connection details


###Example:

```console
$ docker run -d -v /my/own/datadir:/a/keydb -p 8443:8443 -e enableOTP=false -e sshKeyLength=4096 adito/keybox
```
In this example two-factor authentication is disabled and the SSH Key Length is extended to 4096 bits.

## Supported Docker versions

This image is officially supported on Docker version 1.8.3.

Support for older versions (down to 1.6) is provided on a best-effort basis.

## Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/aditosoftware/docker-keybox/issues).