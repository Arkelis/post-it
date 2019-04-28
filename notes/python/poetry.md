# `poetry` - Gestion de dépendances et packaging de projets Python

[Poetry](https://github.com/sdispater/poetry) est un outil puissant permettant
d'empaqueter facilement un projet Python et de gérer les dépendances d'un projet.

## Installation et mise à jour

En utilisant la version de Python appropriée :

```
$ curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python
```

Pour mettre à jour poetry :

```
$ poetry self:update
```

## Utilisation

Pour créer un nouveau projet :

```
$ poetry new <nom-du-projet>
```

Cela va créer une jolie arborescence normalisée.

Pour initialiser Poetry dans un projet déja créé

```
$ poetry init
```

Cela va créer le fameux fichier [`pyproject.toml`](https://poetry.eustace.io/docs/pyproject/).

Pour ajouter une dépendance :

```
$ poetry add <nom-du-paquet>
```

Poetry se charge de créer des virtualenv comme un grand.

Pour installer les dépendances d'un projet Poetry :

```
$ poetry install
```

Pour créer une archive installable avec `pip` :

```
$ poetry build
```

Pour publier sur [PyPI](https://pypi.org) :

```
$ poetry publish
```

## Docs

[Site officiel](https://poetry.eustace.io/docs/)
