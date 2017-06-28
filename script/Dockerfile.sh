#/usr/bin/env bash

branch=${1};
parentBranch=${2};
rootDir=${3};
buildDir=${4};

##############
# Dockerfile #
##############

. ${ITEMPLATES}/dockerfile-template.sh

dockerfiletemplate ${rootDir};
