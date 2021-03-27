# rbenv - Gérer les versions de Ruby

[rbenv](https://github.com/rbenv/rbenv) sert à gérer les différentes versions de Ruby sur le système, pyenv est inspiré de cet outil.

## Installation

### Installation de rbenv

Processus similaire à [pyenv](../python/pyenv.md) :

```text
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshenv
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
exec $SHELL
```

Vérification de l'installation :

```text
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
```

### Installation du plugin pour installer des versions de Ruby

```text
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
```

Pour mettre à jour `ruby-build` : 

```text
git -C "$(rbenv root)"/plugins/ruby-build pull
```

## Commandes

```text
rbenv 1.1.2-44-gd604acb
Usage: rbenv <command> [<args>]

Some useful rbenv commands are:
   commands    List all available rbenv commands
   local       Set or show the local application-specific Ruby version
   global      Set or show the global Ruby version
   shell       Set or show the shell-specific Ruby version
   install     Install a Ruby version using ruby-build
   uninstall   Uninstall a specific Ruby version
   rehash      Rehash rbenv shims (run this after installing executables)
   version     Show the current Ruby version and its origin
   versions    List installed Ruby versions
   which       Display the full path to an executable
   whence      List all Ruby versions that contain the given executable

See `rbenv help <command>' for information on a specific command.
For full documentation, see: https://github.com/rbenv/rbenv#readme

```



