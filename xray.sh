#!/bin/sh
if [ ! -f UUID ]; then
  UUID="5e65abfb-d3fa-4bf0-9553-992a8f2fe857"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

