# `dpkg` - Gestion de paquets DEB

## `dpkg-deb` Extraire, modifier, rempaqueter un paquet DEB

Pour extraire l'arborescence des fichiers d'un paquet `paquet.deb` vers `oldpack` :

```
$ dpkg-deb -x paquet.deb oldpack/
```

Pour extraire le fichier de contrôle du paquet :

```
$ dpkg-deb -e paquet.deb oldpack/DEBIAN
```

Pour reconstruire le paquet :

```
$ dpkg-deb -Z xz -b oldpack/ newpack/
```