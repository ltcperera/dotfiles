#!/bin/sh
#
# Set of helper functions for POSIX platforms
#

function is_executable_found () {
    if command -v $1 > /dev/null 2>&1; then
        # Executable was found
        return 0
    else
        # Executable was not found
        return 1
    fi
}

function is_user_response_yes () {
    while true; do
        read -p "Install [Yn]?" yn
        case $yn in
            [Yy]* ) return 0;;
            [Nn]* ) return 1;;
        esac
    done
}
