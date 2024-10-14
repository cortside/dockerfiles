#!/bin/bash

ifconfig
if [[ -d /settings/$SERVICE_NAME ]]; then
	/bin/cp --verbose -R /settings/$SERVICE_NAME/* /
fi

if [[ -f /app/init.sh ]]; then
	/app/init.sh
fi

if [ "${SERVICE_EXECUTABLE}" ]; then
	./$SERVICE_EXECUTABLE
fi
