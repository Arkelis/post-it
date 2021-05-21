---
description: Activation IPv6 pour un serveur Debian VPS OVH
---

# VPS OVH : Configuration IPv6

### Configuration de l'adresse IPv6

Éditer le fichier `/etc/network/interfaces`. En dessous de 

```text
# The normal eth0
allow-hotplug eth0
iface eth0 inet dhcp
```

Ajouter les lignes 

```text
iface eth0 inet6 static
    address <adresse ipv6>
    netmask 128
    gateway <gateway ipv6>
```

### Redémarrage du réseau

```text
sudo /etc/init.d/networking restart
# ou
sudo systemctl restart networking
```



