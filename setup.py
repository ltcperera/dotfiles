"""Developer Environment Setup Script

This script detects the current OS (Windows, Mac or Linux) and variant (Debian vs Arch), 
then executes a corresponding setup script to setup the development environment accordingly.

Usage:
    python setup.py

"""

import platform
import subprocess

# Operating systems
OS_NAME_WINDOWS = "Windows"
OS_NAME_MAC = "Mac"
OS_NAME_LINUX = "Linux"
OS_NAME_UNKNOWN = "Unknown"

def get_host_os():
    os_name = platform.system()
    if os_name == "Windows":
        return OS_NAME_WINDOWS
    elif os_name == "Darwin":
        return OS_NAME_MAC
    elif os_name == "Linux":
        return OS_NAME_LINUX
    else:
        return OS_NAME_UNKNOWN

def get_linux_flavor():
    uname_output = subprocess.run(['uname', '-a'], stdout=subprocess.PIPE)
    os_info = uname_output.stdout.decode().strip().lower()
    if "ubuntu" in os_info:
        return "Ubuntu"
    elif "arch" in os_info:
        return "Arch"
    elif "manjaro" in os_info:
        return "Manjaro"

detected_os = get_host_os()
print("Detected OS:", detected_os)

if detected_os == OS_NAME_MAC:
    print("Bingo")

if detected_os == OS_NAME_LINUX:
    name = get_linux_flavor();
    print("OS:", name)

