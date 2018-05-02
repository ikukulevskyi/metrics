#!/bin/sh

a=`grep -h -e "^Name" -e "^Pid" -e "^Uid" ./proc/*/status | awk '{print $1 $2}'`
printf '%s\n' $a

exit 0
