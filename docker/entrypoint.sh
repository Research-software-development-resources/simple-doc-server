#!/bin/bash
set -m
# Copy/override template files only when the destination is missing or the source is newer than the destination
cp -r --update /template/. /usr/share/nginx/html &
nginx -g 'daemon off;'
fg %1

