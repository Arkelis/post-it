# pew - Gestion des environnements virtuels

## Installation

Avec `pipx` :

```text
$ pipx install pew
```

Pew stocke par défaut les environnements virtuels dans `~/.local/share/virtualenvs`. On peut modifier cela en changeant la valeur de la variable d'environnement `WORKON_HOME`.

## Commandes

| Action | Commande |
| :--- | :--- |
| Créer un environnement virtuel | `pew new <name>` |
| Lister les environnements virtuels | `pew ls` |
| Supprimer un environnement virtuel | `pew rm <name>` |
| Activer un environnement virtuel | `pew workon <name>` |
| Aller dans le dossier site-packages | `cd $(pew sitepackages_dir)` |

## Documentation

[Sur le dépôt Github](https://github.com/berdario/pew)

## Utilisation avec pyenv et zsh

Si vous exportez des variables liées au `$PATH` pour pyenv dans `~/.zshenv`, cela peut poser des problèmes lors de l'exécution de la commande `pew workon`. Il faut renommer `~/.zshenv` en `~/.zprofile` \(ce dernier est exécuté plus tard lors de l'initialisation du shell zsh\).

