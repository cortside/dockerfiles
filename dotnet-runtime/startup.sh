#!/bin/bash

ifconfig
if [[ -d /settings/$SERVICE_NAME/app ]]; then
	/bin/cp --verbose -R /settings/$SERVICE_NAME/* /
else
	/bin/cp --verbose -R /settings/$SERVICE_NAME/* /app
fi

if [[ -f /app/init.sh ]]; then
	/app/init.sh
fi

if [ "${SERVICE_EXECUTABLE}" ]; then
	./$SERVICE_EXECUTABLE
fi
