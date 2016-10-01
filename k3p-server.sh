#!/bin/bash

CONF="/etc/supervisor/conf.d/supervisord.conf"
sed -i "s/USER_PWD/${USER_PWD}/g" $CONF

exec "$@"
