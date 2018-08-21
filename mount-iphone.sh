#!/bin/bash

# Init
export PKG_CONFIG_PATH="${HOME}/usr/lib/pkgconfig:${PKG_CONFIG_PATH}"
export CPATH="${HOME}/usr/include:${CPATH}"
export MANPATH="${HOME}/usr/share/man:${MANPATH}"
export PATH="${HOME}/usr/bin:${PATH}"
export LD_LIBRARY_PATH="${HOME}/usr/lib:${LD_LIBRARY_PATH}"

# Try to mount
idevicepair pair

read -p "Press Enter when done"

# Actually mount
idevicepair pair
ifuse ~/usr/mnt/

# Browse
open ~/usr/mnt/

read -p "Press Enter when done"

# Unmount
fusermount -u ~/usr/mnt/
