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

- Use control + X to exit, 
	- the editor will ask you if you want to save the file: press Y to save the changes.
	- the editor will ask you the filename, press Enter to confirm the filename.

### 3. Installing the service

- Change the path path-to-service-file to the path of the service file Then run the following commands to install the service:
```
sudo cp /mnt/path-to-service-file/keepwsl.service /etc/systemd/system/keepwsl.service
sudo systemctl enable --now keepwsl
```

- You can now leave the terminal by closing it or type exit.
After that confirm that it keeps running by checking the status of wsl to confirm it is running:
```
wsl -l -v
```

The STATE should be "Running"

---