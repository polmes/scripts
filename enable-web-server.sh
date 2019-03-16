#!/bin/bash

if [ "$EUID" != 0 ]
	then echo "Must be root"
	# exit
fi

sudo systemctl start nginx.service
sudo systemctl start php7.3-fpm.service
sudo systemctl start mariadb.service
