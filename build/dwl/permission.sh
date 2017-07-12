#!/bin/bash

if [ ! -d /dwl/home/host ]; then
    sudo mkdir -p /dwl/home/host;
fi
if [ -d /dwl/home/host/files ]; then
    if [ -d /home/${DWL_USER_NAME}/files ]; then
        sudo rm -rdf /home/${DWL_USER_NAME}/files;
    fi
    sudo cp -rdf /dwl/home/host/files /home/${DWL_USER_NAME};
fi

sudo chown -R ${DWLC_USER_NAME}:${DWLC_USER_NAME} /home/${DWLC_USER_NAME}/;
# sudo chown root:root /home/${DWLC_USER_NAME};
