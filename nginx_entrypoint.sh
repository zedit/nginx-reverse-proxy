#!/bin/bash

NGINX_INTEGARATIONS_EPIC_ENCRYPT_HOST=${NGINX_INTEGARATIONS_EPIC_ENCRYPT_HOST:-"localhost:3001"}
NGINX_INTEGARATIONS_EPIC_HOST=${NGINX_INTEGARATIONS_EPIC_HOST:-"localhost:3001"}
NGINX_ROOT_HOST=${NGINX_ROOT_HOST:-"localhost:3001"}
NGINX_SUPERADMIN_HOST=${NGINX_SUPERADMIN_HOST:-"127.0.0.1:3011"}
NGINX_SOCKETIO_HOST=${NGINX_SOCKETIO_HOST:-"localhost:3001"}
nginx_conf_file=/etc/nginx/conf.d/default.conf

function set_hosts_values() {
  sed -i "s/NGINX_INTEGARATIONS_EPIC_ENCRYPT_SED/${NGINX_INTEGARATIONS_EPIC_ENCRYPT_HOST}/" "${nginx_conf_file}"
  sed -i "s/NGINX_INTEGARATIONS_EPIC_SED/${NGINX_INTEGARATIONS_EPIC_HOST}/" "${nginx_conf_file}"
  sed -i "s/NGINX_ROOT_SED/${NGINX_ROOT_HOST}/" "${nginx_conf_file}"
  sed -i "s/NGINX_SUPERADMIN_HOST/${NGINX_SUPERADMIN_HOST}/" "${nginx_conf_file}"
  sed -i "s/NGINX_SOCKET.IO_SED/${NGINX_SOCKETIO_HOST}/" "${nginx_conf_file}"

}

set_hosts_values
exec nginx -g 'daemon off;' 
