# `chmod` - Permissions de fichiers et répertoires

## Permissions

Cette commande permet de modifier les permissions sur un fichier/répertoire. Il
y a trois types de permission :

* `r` permission de lecture.
* `w` permission d'écriture.
* `x` permission d'exécution pour un fichier, d'explorer pour un répertoire.

Elles sont modifiables à trois niveaux :

* `u` au niveau de l'utilisateur.
* `g` au niveau du groupe de l'utilisateur.
* `o` tous les autres utilisateurs.

Ces permissions sont visibles lorsqu'on `ls -l` un dossier. Pour un fichier ça
ressemble en général à ça :

```
-rw-r--r-- 2 user user 4,0K sept. 20  2018 
```

Décortiquons : `-rw-r--r--`.

* Le premier caractère indique si l'entrée est un fichier (`-`) ou un dossier (`d`).
* Les trois suivants indiquent les permissions de l'utilisateur propriétaire (`user`).
  Si la permission est accordée, elle apparaît, sinon il y a un `-` à la place. Elles sont
  toujours dans l'ordre `rwx`.
* Les trois suivants indiquent les permissions des utilisateurs de son groupe.
* Les trois derniers indiquent les permissions de tous les autres utilisateurs.

## Notation numérique

Il est possible d'utilisation numérique. Les trois types de permissions peuvent être
représentées par leur somme :

* la permission de lecture vaut 4
* la permission d'écriture vaut 2
* la permission d'exécution vaut 1

En juxtaposant ce chiffre pour l'utilisateur, le groupe et les autres on obtient un
nombre à trois chiffres (ex : 777 pour tous les droits).

Pour un fichier, on applique en général 644 (équivalent de `rw-r--r--`) : on ne veut
pas qu'on puisse l'exécuter par défaut par sécurité.

Pour un répertoire, on applique en général 755 (équivalent de `rwxr-xr-x`) : on veut pouvoir
explorer un répertoire !


## Changer les permissions

### Notation classique

On indique les permissions que l'on veut ajouter/enlever.

* Pour ajouter le droit d'exécution à l'utilisateur : `chmod u+x fichier`.
* Pour enlever le droit d'écriture au groupe : `chmod g-w fichier`.
* Si on veut affecter tous les objets d'un répertoire, il faut ajouter l'option de récursivité : `chmod -R o-w rep`.
* Pour enlever le droit d'exécution pour tout le monde : `chmod a-w fichier` (`a` pour tout le monde).

### Notation numérique

On indique le code à appliquer.

* Pour n'affecter que les dossiers : `find /path/to/base/dir -type d -exec chmod 755 {} + `.
* Pour n'affecter que les fichiers : `find /path/to/base/dir -type f -exec chmod 644 {} +`.