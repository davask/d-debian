#!/bin/bash

cd ~/;

dwlDir="/dwl";

. ${dwlDir}/envvar.sh
. ${dwlDir}/user.sh
. ${dwlDir}/ssh.sh
echo ">> Os initialized";

. ${dwlDir}/permission.sh
echo ">> Permission assigned";

. ${dwlDir}/custom.sh

# . ${dwlDir}/senmail.sh
# sendmail is only available from davask/d-php*
if [ "0" == "1" ]; then
  service sendmail start;
  echo ">> Sendmail initialized";
fi

tail -f /dev/null;
