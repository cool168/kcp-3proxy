#!/bin/bash
KEY_PWD=k3p$KEY_PWD
CONF="/etc/supervisor/conf.d/supervisord.conf"
sed -i "s/KEY_PWD/${KEY_PWD}/g" $CONF

exec "$@"
