#!/bin/bash

case "$1" in

    cpu)
	cpuIdle=`cat /proc/stat | grep "cpu " | awk '{print ($5*100)/($2 + $3 + $4 + $5 + $6 + $7 + $8)}'`
	cpuUser=`cat /proc/stat| grep "cpu " | awk '{print ($2*100)/($2 + $3 + $4 + $5 + $6 + $7 + $8)}'`
	cpuGuest=`cat /proc/stat| grep "cpu " | awk '{print ($10*100)/($2 + $3 + $4 + $5 + $6 + $7 + $8)}'`
	cpuIowait=`cat /proc/stat| grep "cpu " | awk '{print ($6*100)/($2 + $3 + $4 + $5 + $6 + $7 + $8)}'`
	cpuStolen=`cat /proc/stat| grep "cpu " | awk '{print ($9*100)/($2 + $3 + $4 + $5 + $6 + $7 + $8)}'`
	cpuSystem=`cat /proc/stat| grep "cpu " | awk '{print ($4*100)/($2 + $3 + $4 + $5 + $6 + $7 + $8)}'`
	echo	'CPU Metrics:
		system.cpu.idle '`printf '%.2f\n' $cpuIdle`'
		system.cpu.user '`printf '%.2f\n' $cpuUser`'
		system.cpu.guest '`printf '%.2f\n' $cpuGuest`'
		system.cpu.iowait '`printf '%.2f\n' $cpuIowait`'
		system.cpu.stolen '`printf '%.2f\n' $cpuStolen`'
		system.cpu.system '`printf '%.2f\n' $cpuSystem`''
    ;;

    mem)
	virtualTotal=`free | grep "Mem:" | awk '{print $2}'`
	virtualUsed=`free | grep "Mem:" | awk '{print $3}'`
	virtualFree=`free | grep "Mem:" | awk '{print $4}'`
	virtualShared=`free | grep "Mem:" | awk '{print $5}'`
	swapTotal=`free | grep "Swap:" | awk '{print $2}'`
	swapUsed=`free | grep "Swap:" | awk '{print $3}'`
	swapFree=`free | grep "Swap:" | awk '{print $4}'`
	echo 	'Memory Metrics:
		virtual total '$virtualTotal'
		virtual used '$virtualUsed'
		virtual free '$virtualFree'
		virtual shared '$virtualShared'
		swap total '$swapTotal'
		swap used '$swapUsed'
		swap free '$swapFree' '
    ;;

    *)
	echo "Usage command:
	cpu - CPU Metrics:
	mem - Memory Metrics:
	"
    ;;

esac

exit 0
