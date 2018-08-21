#!/bin/bash

if [ "$EUID" != 0 ]
	then echo "Must be root"
	# exit
fi

sudo systemctl restart NetworkManager.service
