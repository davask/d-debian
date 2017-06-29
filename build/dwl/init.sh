#! /bin/bash
### BEGIN INIT INFO
# Provides:          /dwl/init.sh
# Required-Start:    
# Required-Stop:
# Default-Start:     5
# Default-Stop:
# Short-Description: initialize container
# Description:       Configure anything required to make the container compliant with dwl requirement
### END INIT INFO

cd .; cd -;

dwlDir="/dwl";

. ${dwlDir}/envvar.sh
. ${dwlDir}/user.sh
. ${dwlDir}/ssh.sh
echo ">> Os initialized";

. ${dwlDir}/permission.sh
echo ">> Permission assigned";

