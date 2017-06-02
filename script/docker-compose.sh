#/usr/bin/env bash

branch=${1};
parentBranch=${2};
rootDir=${3};
buildDir=${4};

######################
# docker-compose.yml #
######################

echo "d-debian:
  ports:
  - 65502:22/tcp
  environment:
    DWL_LOCAL_LANG: en_US:en
    DWL_LOCAL: en_US.UTF-8
    DWL_USER_NAME: username
    DWL_SSH_ACCESS: 'true'
    DWL_USER_ID: '1000'
    DWL_USER_PASSWD: secret
    DWL_KEEP_RUNNING: 'true'
  tty: true
  hostname: localhost
  image: davask/d-debian:${branch}
  net: bridge
  volumes:
  - ${rootDir}/volumes/home/admin:/home/username

# docker-compose -f ${HOME}/docker-images/base/d-debian/docker-compose.yml up -d
" > ${rootDir}/docker-compose.yml

echo "docker-compose.yml generated with debian:${branch}";

