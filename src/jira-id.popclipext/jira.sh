#!/usr/bin/env bash
set -Eeuo pipefail

URL="$POPCLIP_OPTION_JIRA/browse/$POPCLIP_TEXT"

open "$URL"
echo "$URL" | pbcopy
