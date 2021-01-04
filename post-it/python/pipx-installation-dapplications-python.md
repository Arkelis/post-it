---
description: >-
  pipx permet d'installer des applications écrites en Python dans des
  environnements isolés automatiquement.
---

# pipx - Installation d'applications Python

[pipx ](https://github.com/pipxproject/pipx)est un outil qui permet d'installer des applications Python dans des environnement virtuels automatiquement. A chaque application installée est créé un environnement avec toutes les dépendances requises. De plus, un lien symbolique de l'exécutable est créé dans `~/.local/bin`.

## Installation

Requiert Python 3.6+. Avec pip :

```text
pip install pipx
```

## Commandes

### Installer un programme

Installer une application de PyPI :

```text
pipx install docker-compose
```

Cela créera un environnement virtuel en utilisant l'interpréteur pour lequel pipx est installé. `docker-compose` est un paquet présent dans PyPI.

On peut aussi installer un programme en utilisant une URL de dépôt Git \(cela nécessite un fichier `setup.py` dans le dépôt\) :

```text
pipx install git+https://github.com/psf/black.git
```

### Exécuter une commande

Pour exécuter une commande sans persister l'environnement :

```text
pipx run black
```

L'environnement créé est gardé en cache pendant 14 jours, ce qui permet aux appels suivant d'être plus rapides.

Pour une commande dont la source à installer n'a pas le même nom \(typiquement on utilise un dépôt Git\), on utilise l'option `--spec` :

```text
pipx run --spec git+https://github.com/psf/black.git black
```

Cette option permet aussi de spécifier un numéro de version : 

```text
pipx run --spec PACKAGE==1.0.0 APP
```

## Liens

* [Dépôt Github](https://github.com/pipxproject/pipx)
* [Documentation](https://pipxproject.github.io/pipx/docs/)

