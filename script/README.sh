#/usr/bin/env bash

branch=${1};
parentBranch=${2};
rootDir=${3};
buildDir=${4};

#############
# README.md #
#############

. ${ITEMPLATES}/readme-template.sh

readmetemplate ${rootDir};
