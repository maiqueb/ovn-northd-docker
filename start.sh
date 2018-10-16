#!/bin/sh

/usr/share/openvswitch/scripts/ovn-ctl start_northd \
                --db-sb-create-insecure-remote=yes \
                --db-nb-create-insecure-remote=yes


ovn-nbctl set-connection ptcp:6641:0.0.0.0 -- \
            set connection . inactivity_probe=60000

ovn-sbctl set-connection ptcp:6642:0.0.0.0 -- \
            set connection . inactivity_probe=60000

sleep 1

ovsdb-client monitor tcp:127.0.0.1:6641 ALL &

tail -f /var/log/openvswitch/*

