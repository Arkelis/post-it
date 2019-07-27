# Debian

## Connexion SSH sans mot de passe

À partir de l'ordinateur distant par lequel on veut se connecter, on peut utiliser la commande `ssh-copy-id`.

```text
$ ssh-copy-id ~/.ssh/nom_de_la_cle -i user@host
```

## Mail server config \(liens\)

* Complete installation of Postfix + Dovecot : [https://www.tictech.info/post/mail\_preparation](https://www.tictech.info/post/mail_preparation) \(à remettre au gout du jour\)
* fail2ban : [https://reseau.developpez.com/tutoriels/fail2ban/](https://reseau.developpez.com/tutoriels/fail2ban/)
* Spamassassin : cf. [le grand mémo](https://www.pycolore.fr/debian/serveur-mail/spamassassin.html)

### Éviter les mails doublons

On utilise Sieve de Dovecot pour créer un script qui supprime les doublons. Dans `/etc/dovecot/conf.d/90-sieve.conf` on décommente la ligne

```text
sieve_before = /var/lib/dovecot/sieved.d/
```

Et on active l'extension `duplicate` :

```text
sieve_extensions = +duplicate
# sieve_extensions = +vnd.dovecot.duplicate  # si dovecot < 2.2.18
```

On crée maintenant le script dans `/var/lib/dovecot/sieved.d/` \(il faudra sûrement créer ce dossier\).

```text
# deduplicate.sieve
# Permet de supprimer les doublons

require "duplicate";
# require "vnd.dovecot.duplicate"; # si dovecot < 2.2.18

if duplicate {
    discard;
    stop;
}
```

Il faut maintenant compiler le script :

```text
$ sievec deduplicate.sieve
```

Enfin, il faut relancer Dovecot.

```text
# systemctl reload dovecot
```

**Source :** [https://serverfault.com/a/743913](https://serverfault.com/a/743913)

