# dockerfile

## Exposed port

- 22
## Default ENV values

- DWL_LOCAL_LANG: 'en_US:en'
- DWL_LOCAL: 'en_US.UTF-8'
- DWL_USER_NAME: 'username'
- DWL_SSH_ACCESS: 'false'
- DWL_USER_ID: '1000'
- DWL_USER_PASSWD: 'secret'
## Available volumes

- /home/username
## LABEL

- dwl.server.os="debian 8.8"

## EXTRA

[ssh to chrooted jail](https://www.cyberciti.biz/faq/debian-ubuntu-restricting-ssh-user-session-to-a-directory-chrooted-jail/)
