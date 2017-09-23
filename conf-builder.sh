#!/bin/bash
#the original file pravsingh/Hygieia/UI/docker/conf-builder.sh set API_HOST in the script, which does not match my naming convension, overwrite here.

export API_HOST
export API_PORT

sed s:API_HOST:${API_HOST:-127.0.0.1}: /etc/nginx/conf.d/default.conf.templ |\
sed s:API_PORT:${API_PORT:-8080}: > /etc/nginx/conf.d/default.conf
