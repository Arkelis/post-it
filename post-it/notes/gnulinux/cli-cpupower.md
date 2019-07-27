# cpupower - Gestion de la fréquence du CPU

## Installation

Sur Fedora, cet outil fait partie de `kernel-tools` :

```text
# dnf install kernel-tools
```

## Gestion

L'outil utilise des "gouverneurs". Il y en a deux disponibles sur mon PC \(mais il y en a d'autres, cf. [ArchWiki](https://wiki.archlinux.org/index.php/CPU_frequency_scaling)\).

* `performance` pour des performances optimales ;
* `powersave` pour économiser l'énergie.

Pour avoir des infos sur le fonctionnement actuel du processeur :

```text
# cpupower -c 0-3 frequency-info
```

* `-c` pour les coeurs qu'on veut contrôler \(j'en ai 4 donc de 0 à 4\)

  Pour passer en mode "économie d'énergie" :

```text
# cpupower -c 0-3 frequency-set -g powersave
```

* `-g` pour choisir le gouverneur

Pour passer en mode performance :

```text
# cpupower -c 0-3 frequency-set -g performance
```

