#!/bin/bash

if [ "$EUID" != 0 ]
	then echo "Must be root"
	# exit
fi

sudo systemctl start nginx.service
sudo systemctl start php7.1-fpm.service
sudo service mariadb start
