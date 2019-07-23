#!/bin/bash

CUSTOMER_KEY="PUT_YOUR_CUSTOMER_KEY_HERE"
SECRET_PHRASE="" #leave secret phrase empty, if not needed

URL="https://www.google.com"
DIMENSION="1366x768" # or "1366xfull" for full length screenshot
DEVICE="desktop"
FORMAT="png"
CACHE_LIMIT="0"
DELAY="2000"


ARGS=(
--data-urlencode "key=$CUSTOMER_KEY" \
--data-urlencode "dimension=$DIMENSION" \
--data-urlencode "device=$DEVICE" \
--data-urlencode "format=$FORMAT" \
--data-urlencode "cacheLimit=$CACHE_LIMIT" \
--data-urlencode "delay=$DELAY" \
--data-urlencode "url=$URL"
)

if [[ -n "$SECRET_PHRASE" ]]; then
  HASH=$(echo -n $URL$SECRET_PHRASE | md5sum | cut -d ' ' -f 1)
  ARGS+=(--data-urlencode "hash=$HASH")
fi

curl -Gs "https://api.screenshotmachine.com" "${ARGS[@]}" > output.png


