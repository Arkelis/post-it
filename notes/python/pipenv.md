# `pipenv` - Gestionnaire de dépendances et d'environnement virtuel

Pipenv est la manière recommandée par la doc de gérer les dépendances d'un projet.
Avec Pipenv, plus de `pip` ou de `virtualenv`, tout est automatique !

## Installation

Avec `pip` :

```
$ pip install pipenv
```

Au préalable, on peut se placer dans une version de Python avec [pyenv](pyenv.md).

## Utilisation

A la création d'un projet, pas besoin de créer d'environnement virtuel. Il sera
créé dès que l'on installera un paquet. Pour initialiser un environnement virtuel vide
on lance un shell :

```
$ pipenv shell
```

Cela lance un shell dans l'environnement virtuel du projet et le crée s'il n'existe pas.
Cela crée deux fichiers : `Pipfile` et `Pipfile.lock` (semblables à `packages.json` et 
`packages.lock` de `npm`).

Pour installer un paquet :

```
$ pipenvi install paquet
```

Autres commandes listées dans le dépôt : [Pipenv](https://github.com/pypa/pipenv#-usage)