#! /bin/sh
### BEGIN INIT INFO
# Provides:          dwl-init
# Required-Start:    
# Required-Stop:
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: init
# Description:       initialize container
### END INIT INFO

cd .; cd -;

dwlDir="/dwl";

. ${dwlDir}/envvar.sh
. ${dwlDir}/user.sh
. ${dwlDir}/ssh.sh
echo ">> Os initialized";

. ${dwlDir}/permission.sh
echo ">> Permission assigned";

