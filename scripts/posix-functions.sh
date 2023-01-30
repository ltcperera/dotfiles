#
# Set of helper functions for POSIX platforms
#

function is_executable_not_found () {
    if command -v $1 > /dev/null 2>&1; then
        # Executable was not found
        return 1
    else
        # Executable was found
        return 0
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
