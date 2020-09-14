/usr/local/openresty/bin/openresty -s stop -c $(pwd)/nginx.conf

sed "s|SOURCE_ROOT|$(pwd)|" nginx.conf.template >nginx.conf
/usr/local/openresty/bin/openresty -c $(pwd)/nginx.conf
echo "**** Server restarted ... ****"
