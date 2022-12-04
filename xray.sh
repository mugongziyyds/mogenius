#!/bin/sh
if [ ! -f UUID ]; then
  UUID="fc1e21ea-e7bc-4061-a555-38a09b591f5d"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

