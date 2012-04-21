#! /bin/bash

### BEGIN INIT INFO
# Provides:          bearinit
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Start daemon at boot time
# Description:       Enable service provided by daemon.
### END INIT INFO

pname="bearinit"
daemonpath="/etc/bears/bearinitc"
# This strips the program call from the arguments to form the message
message=("${$[@]:1:${#$[@]}}")

case "$1" in
'start')
"$daemonpath" start
;;

'adduser')
"$daemonpath" "${B[@]}"
;;

'retrieve')
"$daemonpath" "${B[@]}"
;;

'add')
"$daemonpath" "${B[@]}"
;;

'push')
"$daemonpath" "${B[@]}"
;;

'addpush')
"$daemonpath" "${B[@]}"
;;

'addpushall')
"$daemonpath" "${B[@]}"
;;

'stop')
pkill "$pname"
;;

'restart')
pkill -HUP "$pname"
;;

esac
