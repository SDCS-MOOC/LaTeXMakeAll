#!/usr/bin/env bash

set -ex

root_dir="${1}"
file_glob="${2}"

python3 main.py --root $root_dir --glob $file_glob
