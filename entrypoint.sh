#!/usr/bin/env bash

set -ex

echo "Compiling Files"

root_dir="${1}"
file_glob="${2}"

python3 /root/main.py --root "$root_dir" --glob "$file_glob"
