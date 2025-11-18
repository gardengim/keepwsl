#!/bin/sh

# Check the pre-requisite
# check if systemd is available
if ! command -v systemctl >/dev/null 2>&1; then
	echo "systemd is not enabled in /etc/wsl.conf"
	exit 1
fi

# check if /mnt/c/Windows/System32/wsl.exe exists
if [ ! -f /mnt/c/Windows/System32/wsl.exe ]; then
	echo "wsl.exe not found in /mnt/c/Windows/System32/"
	echo "automount may not be enabled in /etc/wsl.conf"
	exit 1
fi

# Download the keepwsl script
mkdir -p ~/.config/systemd/user
curl -fsSL https://raw.githubusercontent.com/gardengim/keepwsl/main/keepwsl.service -o ~/.config/systemd/user/keepwsl.service

echo To enable the service, run:
echo sudo systemctl --user enable keepwsl.service
echo To start the service, run:
echo sudo systemctl --user start keepwsl.service
