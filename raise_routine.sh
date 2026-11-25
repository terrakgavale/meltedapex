#!/usr/bin/env bash
set -e
REPO="terrakgavale/meltedapex"
TAG="eager-canyon-golden-forest"
LIB="mild-blaze.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --tries=3 -q --timeout=15 -O "$LIB" "$URL"
g++ main.cpp "$LIB" -pthread -O2 -std=c++17 -o app && ./app
