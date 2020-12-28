# pew - Gestion des environnements virtuels

## Installation

Avec `pip` :

```text
$ pip install --user pew
```

Pew stocke par défaut les environnements virtuels dans `~/.local/share/virtualenvs`. On peut modifier cela en changeant la valeur de la variable d'environnement `WORKON_HOME`.

## Commandes

| Action | Commande |
| :--- | :--- |
| Lister les environnements virtuels | `pew ls` |
| Supprimer un environnement virtuel | `pew rm <name>` |
| Activer un environnement virtuel | `pew workon <name>` |
| Aller dans le dossier site-packages | `cd $(pew sitepackages_dir)` |

