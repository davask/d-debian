# dockerfile

[![[dwl] debian:8.8 in prod][badge-shields]](https://hub.docker.com/r/davask/d-debian/)
[![FOSSA Status][badge-fossa]](https://app.fossa.io/projects/git%2Bhttps%3A%2F%2Fgithub.com%2Fdavask%2Fd-debian?ref=badge_shield)

[![[dwl] debian:8.8 image][badge-docker]](https://hub.docker.com/r/davask/d-debian/)

[badge-docker]: https://dockeri.co/image/davask/d-debian "[dwl] debian:8.8 image"
[badge-shields]: https://img.shields.io/badge/davask%2Fd--debian-prod-brightgreen.svg?style=flat "[dwl] debian:8.8 in prod"
[badge-fossa]: https://app.fossa.io/api/projects/git%2Bhttps%3A%2F%2Fgithub.com%2Fdavask%2Fd-debian.svg?type=shield "[dwl] debian:8.8 license"

## Exposed port

- 22
## Default ENV values

- DWL_LOCAL_LANG: 'en_US:en'
- DWL_LOCAL: 'en_US.UTF-8'
- DWL_USER_NAME: 'username'
- DWL_USER_PASSWD: 'secret'
- DWL_USER_ID: '1000'
- DWL_SUDO_USER: 'false'
- DWL_SSH_ACCESS: 'false'
## Available volumes

- /home/host
## LABEL

- dwl.server.os="debian 8.8"

## EXTRA

[ssh to chrooted jail](https://www.cyberciti.biz/faq/debian-ubuntu-restricting-ssh-user-session-to-a-directory-chrooted-jail/)
