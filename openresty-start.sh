#!/bin/sh

sed "s|SOURCE_ROOT|$(pwd)|" nginx.conf.template >nginx.conf
/usr/local/openresty/bin/openresty -c $(pwd)/nginx.conf
echo "**** Access running server ****"
