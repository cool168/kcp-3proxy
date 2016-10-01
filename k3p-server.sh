#!/bin/bash
CONF="/etc/3proxy.cfg"
sed -i "s/USER_PWD/${USER_PWD}/g" $CONF
exec "$@"
