# keepwsl
A simple service to keep WSL alive

## Requirement
### `/etc/wsl.conf`
```conf
[boot]
systemd=true

[automount]
enabled = true
```

## Installation


## Usage
```
sudo systemctl enable --now keepwsl
```