#!/usr/bin/env bash
set -Eeuo pipefail

echo -n "${POPCLIP_TEXT}" | sed "s/./${POPCLIP_OPTION_SYMBOL}/g"
