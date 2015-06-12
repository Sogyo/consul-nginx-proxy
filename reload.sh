#!/bin/sh
if [ -f /var/run/nginx.pid ] ; then
  echo "nginx is running -- reloading configuration."
  /usr/sbin/nginx -s reload
else
  echo "Starting nginx."
  /usr/sbin/nginx
fi
