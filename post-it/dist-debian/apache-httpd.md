---
description: Notes concernant le serveur HTTP d'Apache (httpd)
---

# Apache httpd

## Installation du MPM event et de PHP-fpm pour gérer le HTTP/2 et PHP avec Apache

**Tiré de :** [DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-configure-apache-http-with-mpm-event-and-php-fpm-on-ubuntu-18-04-fr)

Le module PHP par défaut d'Apache n'est pas compatible avec MPM Event qui permet de gérer le protocole HTTP/2. On va devoir alors installer PHP-FPM pour gérer le PHP avec Apache.

### Installation et activation de MPM Event

Remplacer la version de PHP par la version installée.

```text
sudo a2dismod php7.4
sudo a2dismod mpm_prefork
sudo a2enmod mpm_event
```

## Installation et activation de PHP-FPM

```text
sudo apt install php-fpm
sudo apt install libapache2-mod-fcgid
sudo a2enconf php7.4-fpm
sudo a2enmod proxy
sudo a2enmod proxy_fcgi
sudo systemctl restart apache2
```

