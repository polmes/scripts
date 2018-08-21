#!/bin/bash

journalctl --user-unit onedrive.service -fn0 -o cat | \
while read line; do
	echo $line | grep -E "Downloading|Uploading"
	if [ $? = 0 ]; then
		notify-send --icon=onedrive -- "OneDrive" "$line"
	else
                echo $line | grep "Failed with result 'core-dump'"
                if [ $? = 0 ]; then
                        notify-send --icon=onedrive -- "OneDrive" "An error occurred. Restarting..."
			/home/p0l/scripts/fix-onderive.sh
                fi
        fi
done
