# avahi-daemon - découverte du réseau local

Le démon Avahi permet de découvrir le réseau local. Il fait aussi office de DNS local : chaque machine possédant un nom d'hôte peut être accessible par `hostname.local`, ce qui est pratique par exemple pour une connexion SSH en local sans avoir besoin de l'adresse IP.

## Installation

### Fedora

```text
# dnf install avahi-daemon
```

## Mise en route

### `systemd`

On autorise le service à se lancer au démarrage et on l'active.

```text
# systemctl enable avahi-daemon
# systemctl start avahi-daemon
```

