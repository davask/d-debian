#/usr/bin/env bash

branch=${1};
parentBranch=${2};
rootDir=${3};
buildDir=${4};

######################
# docker-compose.yml #
######################

. ${ITEMPLATES}/compose-template.sh

composetemplate ${rootDir};
