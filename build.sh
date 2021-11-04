#!/usr/bin/env bash
set -Eeuo pipefail

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)

SRC="${script_dir}/src"
DIST="${script_dir}/dist"

rm -rf "${DIST}"
mkdir -p "${DIST}"

for file in "${SRC}"/*.popclipext
do
	filename=$(basename "$file")
	cd "${SRC}"
	zip -r "${DIST}/${filename}z" ./"$filename"
	cd ..
done
