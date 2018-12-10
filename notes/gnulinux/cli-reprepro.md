# `reprepro` : Création de dépôt APT

Cet outil permet de créer facilement un dépôt APT.

## Installation

```
# apt install reprepro
```

## Configuration

On considère que l'on mettra le dépôt dans un répertoire `/var/repo`. Pour fonctionner,
`reprepro` a besoin d'un fichier de configuration `repo/conf/distributions`. Configurons
un dépôt (exemple de dépôt PyColore) :

```
Origin: repo.pycolore.fr
Label: repo.pycolore.fr
Codename: cosmic
Architectures: amd64
Components: main
Description: Pycolore APT Repository
SignWith: <id de clé GPG>
```

Les `Codename` et `Components` peuvent être n'importe quoi. J'ai mis `cosmic` ici car le dépôt
est censé être compatible avec Ubuntu 18.04, mais on peut mettre autre chose.

`Signwith` est l'id de la clé GPG qui signera les paquets.

On peut ajouter d'autres dépôts en mettant un nouvel `Origin` et les autres labels qui suivent.

## Ajout des paquets DEB dans le dépôt.

Dans `/var/repo` :

```
# reprepro -b . includedeb cosmic /chemin/vers/le/deb
```

## Ajout de la clé publique dans le dépôt


Dans `/var/repo` :

```
# gpg --export --armor <id> KEY.gpg
```
