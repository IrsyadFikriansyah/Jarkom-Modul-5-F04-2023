#!/bin/bash

bash /root/install-script.sh

cp /root/named.conf.options /etc/bind/named.conf.options

service bind9 restart
