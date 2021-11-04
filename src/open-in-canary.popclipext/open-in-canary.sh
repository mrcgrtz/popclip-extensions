#!/usr/bin/env bash
set -Eeuo pipefail

COUNT=0

for URL in $POPCLIP_URLS
do
	(( COUNT+1 ))
	if [[ -n "$URL" ]]; then # if non-empty
		echo "Opening [$URL]"
		open -b com.google.Chrome.Canary "$URL"
	fi
	if [[ $COUNT -ge 10 ]]; then # limit to 10 so as not to go crazy
		break
	fi
done
