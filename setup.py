import platform
OS_NAME_WINDOWS = "Windows"
OS_NAME_MAC = "Mac"
OS_NAME_LINUX = "Linux"

def detect_os():
    os_name = platform.system()
    if os_name == "Windows":
        return OS_NAME_WINDOWS
    elif os_name == "Darwin":
        return OS_NAME_MAC
    elif os_name == "Linux":
        return OS_NAME_LINUX
    else:
        return "Unknown"

def linux_flavor():
    os_info = platform.linux_distribution()
    return os_info[0], os_info[1]

detected_os = detect_os()
print("Detected OS:", detected_os)

if detected_os == OS_NAME_MAC:
    print("Bingo")

if detected_os == OS_NAME_LINUX:
    name, version = linux_flavor();
    print("OS:", name)
    print("Version:", version)

