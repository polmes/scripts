#!/bin/bash

#if [ "$EUID" != 0 ]
#	then echo "Must be root"
#	# exit
#fi

sudo systemctl stop nginx.service
sudo systemctl stop php7.1-fpm.service
sudo service mariadb stop
