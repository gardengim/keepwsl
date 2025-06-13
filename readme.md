# keepwsl
A simple service to keep WSL alive

## Requirements
- Installation of WSL2 with a Linux distribution (e.g., Debian, Ubuntu, etc.)
- Copy of this repository to your local machine

## Installation
---

### 1. Opening the terminal

- Open the terminal with the target wsl distro, in the example we use Debian, you can replace it with your distro.
```
wsl --distribution Debian
```

### 2. Changing the wsl.conf file

- Change the wsl.conf file inside wsl to enable systemd and automount.
  - For example we use nano editor, you can use any editor you prefer.
```
sudo nano /etc/wsl.conf
```

  - Change the content to the following

#### `/etc/wsl.conf`
```conf
[boot]
systemd=true

[automount]
enabled = true
```

- Use control + X to exit, and Y to save the changes.

### 3. Installing the service

- Then run the following commands to install the service:
```
sudo cp /mnt/c/path/to/service-file/keepwsl.service /etc/systemd/system/keepwsl.service
sudo systemctl enable --now keepwsl
```
---
## To run every boot of windows

You can enable the wsl to start automatically at every boot of Windows by copying the startup.bat to
%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup.bat