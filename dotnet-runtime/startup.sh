#!/bin/bash

ifconfig
if [[ -d /settings/$SERVICE_NAME/app ]]; then
	/bin/cp -R -nf /settings/$SERVICE_NAME/* /
else
	/bin/cp -R -nf /settings/$SERVICE_NAME/* /app
fi

if [[ -f /app/init.sh ]]; then
	/app/init.sh
fi

./$SERVICE_EXECUTABLE
