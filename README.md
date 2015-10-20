# docker-keybox
KeyBox is an open-source web-based SSH console that centrally manages administrative access to systems.
Web-based administration is combined with management and distribution of user's public SSH keys.
Key management and administration is based on profiles assigned to defined users.


## How to use this image

docker run -d -v /my/own/datadir:/a/data -p 8443:8443 adito/keybox

Now you can access keybox at  "https://host-ip:8443"

## How to edit the keybox-config

The keybox-config will be automatically created at the first container start in your "/my/own/datadir".
Now you can edit the file "KeyBoxConfig.properties".

## Supported Docker versions

This image is officially supported on Docker version 1.8.3.

Support for older versions (down to 1.6) is provided on a best-effort basis.

