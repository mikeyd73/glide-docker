#!/bin/bash

set -e

# Use the following environment variables
#   START_SCRIPT
#   GLIDE_PORT
#   GLIDE_WAR_VERSION
#   

GLIDE_WAR_VERSION=glide-12-18-2015_2030.zip

if [ "$1" = "start" ]; then
	if [ -f ${START_SCRIPT} ]; then
		echo >&2 'Error: Glide is not installed'
		exit 1

		java -jar /Downloads/${GLIDE_WAR_VERSION} install -n glide -p ${GLIDE_PORT} -x glide.db.url=jdbc:mysql://db/
	fi

	echo
	echo 'Glide is installed. Ready for start up.'
	echo

	exec ${START_SCRIPT}
fi

exec "$@"