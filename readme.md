# keepwsl
A simple service to keep WSL alive

## Prerequisite
### `/etc/wsl.conf`
```conf
[boot]
systemd=true

[automount]
enabled = true
```

## Installation
```
sudo sh -c "curl -sS https://raw.githubusercontent.com/gardengim/keepwsl/main/install.sh | sh"
```
```
systemctl --user daemon-reload
```
```
systemctl --user enable --now keepwsl
```
