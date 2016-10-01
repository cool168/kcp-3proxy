#!/bin/bash

CONF="/etc/supervisor/conf.d/supervisord.conf"
sed -i "s/KEY_PWD/${KEY_PWD}/g" $CONF

exec "$@"
