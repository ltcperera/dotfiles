#!/bin/bash

os_name=$(uname -s)
if [ "$os_name" == "Darwin" ]; then
    source scripts/setup-macos.sh
else
    if [ -f "/etc/os-release" ]; then
        source /etc/os-release
        if [ "$ID" == "debian" ] || [ "$ID" == "ubuntu" ]; then
            source scripts/setup-ubuntu.sh
        else 
            if [ "$ID" == "manjaro" || [ "$ID" == "arch" ]; then
                source scripts/setup-arch.sh
            fi
        fi
    fi
fi
