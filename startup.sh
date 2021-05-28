#!/bin/sh
exec java -jar /app/ubooquity/Ubooquity.jar \
	--headless --host 0.0.0.0 --remoteadmin \
	--workdir /config