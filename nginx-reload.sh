nginx -s stop -c $(pwd)/nginx.conf

sed "s|SOURCE_ROOT|$(pwd)|" nginx.conf.template >nginx.conf
nginx -c $(pwd)/nginx.conf
echo "**** Server restarted ... ****"
