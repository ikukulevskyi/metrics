FROM          	busybox:latest
VOLUME        	["/opt/proc"]
WORKDIR 	/opt
COPY 		proces.sh ./proces.sh
CMD           	["./proces.sh"]