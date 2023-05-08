#!/bin/bash

ifconfig
if [[ -d /settings/$SERVICE_NAME ]]; then
	cp -R /settings/$SERVICE_NAME/* /app 
fi

if [[ -f /app/init.sh ]]; then
	/app/init.sh
fi

nginx -g "daemon off;"
