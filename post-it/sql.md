# SQL

## Quelques commandes SQL

### Méta-opérations

#### Création d'un utilisateur

La commande suivante crée un utilisateur `newuser` qui peut se connecter sur l'hôte `localhost`. L'utilisateur pourra se connecter avec le mot de passe `mdp`.

{% tabs %}
{% tab title="MariaDB 10.3.1" %}
```sql
CREATE USER 'newuser'@'localhost' identified by 'mdp';
```
{% endtab %}

{% tab title="PostgreSQL 12" %}
```sql
CREATE USER 'newuser' WITH ENCRYPTED PASSWORD 'mdp';
```
{% endtab %}
{% endtabs %}

#### Donner les privilèges à un utilisateur sur une base de données

La commande suivante donne à l'utilisateur précédent tous les privilèges sur la table `table`de la base `base`.

{% tabs %}
{% tab title="MariaDB 10.3.1" %}
```sql
GRANT ALL PRIVILEGES ON table.base TO 'newuser'@'localhost';
```
{% endtab %}

{% tab title="PostgreSQL 12" %}
```sql
\c base
GRANT ALL PRIVILEGES ON table TO newuser;
```
{% endtab %}
{% endtabs %}



