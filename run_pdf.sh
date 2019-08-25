#!/bin/bash

CUSTOMER_KEY="PUT_YOUR_CUSTOMER_KEY_HERE"
SECRET_PHRASE="" #leave secret phrase empty, if not needed

URL="https://www.google.com"
PAPER="letter"
ORIENTATION="portrait"
MEDIA="print"
BG="nobg"
DELAY="2000"
SCALE="50"

ARGS=(
--data-urlencode "key=$CUSTOMER_KEY" \
--data-urlencode "paper=$PAPER" \
--data-urlencode "orientation=$ORIENTATION" \
--data-urlencode "media=$MEDIA" \
--data-urlencode "bg=$BG" \
--data-urlencode "delay=$DELAY" \
--data-urlencode "scale=$SCALE" \
--data-urlencode "url=$URL"
)

if [[ -n "$SECRET_PHRASE" ]]; then
HASH=$(echo -n $URL$SECRET_PHRASE | md5sum | cut -d ' ' -f 1)
ARGS+=(--data-urlencode "hash=$HASH")
fi

curl -Gs "https://pdfapi.screenshotmachine.com" "${ARGS[@]}" > output.pdf