#!/usr/bin/env bash

set -ex

wget -nv "https://github.com/alif-type/xits/releases/download/v1.302/XITS-1.302.zip"
unzip "XITS-1.302.zip"
sudo find "XITS-1.302" -name "*.otf" -exec sudo mv '{}' /usr/local/share/fonts \;
sudo fc-cache -fv