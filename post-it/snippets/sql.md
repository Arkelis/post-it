# SQL

## Quelques commandes SQL

### Méta-opérations

#### Création d'un utilisateur

La commande suivante crée un utilisateur `newuser` qui peut se connecter sur l'hôte `localhost`. L'utilisateur pourra se connecter avec le mot de passe `mdp`.

```sql
CREATE USER 'newuser'@'localhost' identified by 'mdp';
```

#### Donner les privilèges à un utilisateur sur une base de données

La commande suivante donne à l'utilisateur précédent tous les privilèges sur la table `table`de la base `base`.

```sql
GRANT ALL PRIVILEGES ON table.base TO 'newuser'@'localhost';
```



