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
    """Returns the OS on which this script is running."""
    os_name = platform.system()
    if os_name == "Windows":
        return OS_NAME_WINDOWS
    elif os_name == "Darwin":
        return OS_NAME_MAC
    elif os_name == "Linux":
        return OS_NAME_LINUX
    else:
        return OS_NAME_UNKNOWN

def get_linux_distro():
    """For Linux platforms, detects between Ubuntu, Arch and Manjaro distributions"""

    # Note: We could use the new distro package, but thats not part of the 
    #   standard python packages yet. Using this following method for now
    #   so that we can reduce the distro package as a dependency.
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
    print("Execute MacOS setup script...")
    subprocess.call("./scripts/setup-macos.sh", shell=True)

if detected_os == OS_NAME_LINUX:
    distro = get_linux_distro();
    print("Linux distribution:", distro)

