# `pyenv` - Gérer les versions de Python

Ce programme permet d'installer des versions de Python isolées de celle du système. Ainsi, on
n'est plus dépendants des mises à jour de qui font changer la version par défaut de `python3` par
exemple. Ce programme permet de modifier le comportement de la commande `python` (en modifiant 
le `PATH`), que ce soit globalement ou dans un dossier précis. Les versions de Python installées
sont en fait compilées sur la machine.

## Installation

Il est recommandé d'utiliser [`pyenv-installer`](https://github.com/pyenv/pyenv-installer). 
Les instructions d'installation y sont détaillées.

Pour Fedora :

```
$ sudo dnf install zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel \
openssl-devel xz xz-devel libffi-devel findutils
```

Puis :

```
$ curl https://pyenv.run | bash
```

Il faut s'assurer que ces lignes sont ajoutées au `bashrc` : 

```bash
export PATH="~/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
```

```
$ pyenv
pyenv 1.2.9
Usage: pyenv <command> [<args>]

Some useful pyenv commands are:
   commands    List all available pyenv commands
   local       Set or show the local application-specific Python version
   global      Set or show the global Python version
   shell       Set or show the shell-specific Python version
   install     Install a Python version using python-build
   uninstall   Uninstall a specific Python version
   rehash      Rehash pyenv shims (run this after installing executables)
   version     Show the current Python version and its origin
   versions    List all Python versions available to pyenv
   which       Display the full path to an executable
   whence      List all Python versions that contain the given executable

See `pyenv help <command>' for information on a specific command.
For full documentation, see: https://github.com/pyenv/pyenv#readme
```

## Commandes

* Pour lister les versions installées : `pyenv versions`
* Pour lister les versions que l'on peut installer : `pyenv install --list`
* Pour installer une version de Python : `pyenv install <version>`
* Pour afficher la version de Python actuellement utilisée : `pyenv version`
* Pour définir un interpréteur globalement : `pyenv global <version>`
* Pour définir un interpréteur dans le dossier courant : `pyenv local <version>`