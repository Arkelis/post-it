---
description: Notes sur l'installation et l'utilisation de PostgreSQL sur Debian
---

# PostgreSQL sur Debian

Il s'agit de l'utilisation de PostgreSQL sur Debian.

**Ressource utilisée** : [Linuxtricks.fr](https://www.linuxtricks.fr/wiki/debian-10-installer-et-utiliser-postgresql)

## Mise en place

### Installation

```text
# apt update
# apt upgrade
# apt install postgresql postgresql-client
```

### Fichiers de configuration

* Le fichier principal de configuration est `/etc/postgresql/<num-version>/main/postgresql.conf`
* Le fichier gérant l'authentification est `/etc/postgresql/<num>/main/pg_hba.conf`.

### Post-install

L'utilisateur admin de PostgreSQL est l'utilisateur `postgres`. On peut s'y connecter avec `su` en tant que `root` :

```text
# su postgres
```

Le client de PostgreSQL, `psql` permet d'interagir avec le serveur de base de données. On peut ajouter un mot de passe à l'administrateur :

```text
$ psql -c "ALTER USER postgres WITH password 'my-great-passwd'" 
```

## Création d'une base de données

### Création de la base et de son propriétaire

En tant qu'administrateur 

```text
# su postgres
```

On commence par créer l'utilisateur qui possédera la base :

```text
$ createuser dbuser
```

Puis on crée la base en spécifiant son propriétaire :

```text
$ createdb mydb -O dbuser
```

### Cas des utilisateurs non UNIX

**Source :** [https://gist.github.com/AtulKsol/4470d377b448e56468baef85af7fd614](https://gist.github.com/AtulKsol/4470d377b448e56468baef85af7fd614)

Si l'on crée des utilisateurs non UNIX dans PostgreSQL \(par exemple l'utilisateur `dbuser` alors que `dbuser` n'est pas un utilisateur du serveur\), alors il faut changer une règle spécifique dans le fichier `pg_hba.conf`

```text
# TYPE  DATABASE        USER            ADDRESS                 METHOD

# "local" is for Unix domain socket connections only
local   all             all                                     peer
```

La méthode `peer` indique que pour la connexion locale depuis un utilisateur UNIX, on utilise la connexion aux utilisateurs UNIX, sauf que dans notre cas `dbuser` n'est pas un utilisateur UNIX. Deux solutions :

* créer l'utilisateur UNIX `dbuser`
* changer la méthode d'authentification locale

Si l'on ne veut pas créer d'utilisateur UNIX `dbuser`, il faut alors ajouter la ligne suivante :

```text
local   mydb              dbuser                                  md5
```

Comme PostgreSQL parcourt les lignes de haut en bas, il mettre cette ligne en haut pour qu'elle ne soit pas cachée par des règles plus générales. On a un résultat du type :

```text
# DO NOT DISABLE!
# If you change this first entry you will need to make sure that the
# database superuser can access the database using some other method.
# Noninteractive access to all databases is required during automatic
# maintenance (custom daily cronjobs, replication, and similar tasks).
#
# Database administrative login by Unix domain socket
local   all             postgres                                peer

# TYPE  DATABASE        USER            ADDRESS                 METHOD

# mail database owned by mail user
local   mail            mail                                    md5
# "local" is for Unix domain socket connections only
local   all             all                                     peer

```

La méthode `md5` indique que l'on demande systématiquement le mot de passe. Si l'on veut généraliser ce comportement, on peut changer la ligne qui concerne tous les utilisateurs :

```text
# TYPE  DATABASE        USER            ADDRESS                 METHOD

# "local" is for Unix domain socket connections only
local   all             all                                     md5
```

## Connexion à la base de données et requêtes

On peut se connecter à notre base `mydb` en spécifiant l'utilisateur :

```text
$ psql mydb dbuser
```

On arrive alors sur le prompt de PostgreSQL. Pour quitter : `\q`. On peut ici balancer les requêtes SQL.

Pour exécuter une requête SQL en mode sans interaction :

```text
$ psql mydb dbuser -c "SELECT * FROM ..."
```

