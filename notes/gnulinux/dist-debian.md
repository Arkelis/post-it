# Debian

## Connexion SSH sans mot de passe

À partir de l'ordinateur distant par lequel on veut se connecter, on peut
utiliser la commande `ssh-copy-id`.

```
$ ssh-copy-id ~/.ssh/nom_de_la_cle -i user@host
```

## Mail server config

* Complete installation of Postfix + Dovecot : https://www.tictech.info/post/mail_preparation (à remettre au gout du jour)
* fail2ban : https://reseau.developpez.com/tutoriels/fail2ban/
* Spamassassin : https://vorkbaard.nl/installing-a-mailserver-on-debian-8-part-6-spamfiltering-spamassassin/
