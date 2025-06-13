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
sh -c "curl -sS https://raw.githubusercontent.com/gardengim/keepwsl/main/install.sh"
```
```
sudo systemctl daemon-reload
```
```
sudo systemctl enable --now keepwsl
```