#!/bin/sh

sed -i "s|https://petstore.swagger.io/v2/swagger.json|${URL}|g" /usr/share/nginx/html/index.html

exec nginx -g 'daemon off;'
