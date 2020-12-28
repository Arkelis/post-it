---
description: L'outil permet de faire des recherches dans le système de fichiers
---

# find - recherche de fichier

## `find` - search for files in a directory hierarchy

Lister tous les répertoires et fichiers d'un dossier :

```text
$ find <dossier>
```

### Recherche par nom

* Sensible à la casse `find <dossier> -name <nom>`
* Insensible : `find <dossier> -iname <nom>`

Lorsque l'on fait une recherche, on peut utiliser des caractères spéciaux :

* Le filtre de recherche `*.ogg` va sélectionner tous les fichiers OGG.
* Le filtre de recherche `*A*` va sélectionner tous les fichiers contenant un A majuscule.
* Le filtre de recherche `1?3` va sélectionner tous les fichier nommés 1X3 où X est n'importe quel caractère.

### Recherche par type d'entrée

* Rechercher uniquement les fichiers : `find -type f`
* Rechercher uniquement les répertoires : `find -type d`

### Recherche par taille

* Rechercher les fichiers de plus de 10 Go : `find -size +10G` 
* Rechercher les fichiers de moins de 10 Mo : `find -size -10M` 
* Rechercher les fichiers dont la taille est comprise entre 10 et 20 Go : `find -size +10G -size -20G`

### Recherche par date d'accès / création / modification

* Rechercher les fichiers lus dans les 30 derniers jours : `find -atime -30` 
* Rechercher les fichiers créés aujourd'hui : `find -ctime 0` 
* Rechercher les fichiers modifiés il y a plus de 90 jours : `find -mtime +90` 

### Recherche par utilisateur

* Rechercher les fichiers possédés par un utilisateur : `find -user <nom-utilisateur>`
* Recherche par UID : `find -uid <uid>`

La liste des identifiants d'utilisateurs peut être récupérée en exécutant la commande `id`.

### Exécuter une commande sur les fichiers trouvés

On récupère le chemin du fichier entre accolades `{}`. Par exemple, si on veut récupérer les information fournies par `ls` : 

```text
$ find <options...> -exec ls -lh {} \;
```

### Cacher les lignes "permission non accordée"

Parfois on a pas les droits sur certains dossiers / fichiers. Pour cacher les lignes "permission non accordée", on peut rediriger la sortie d'erreur vers `/dev/null` pour les cacher.

```text
$ find <options...> 2> /dev/null
```

