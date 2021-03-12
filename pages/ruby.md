---
title: Ruby
---

## **Tout est objet en Ruby** comme en Python :)
### Y compris l'objet nul `nil` (équivalent de `None` en Python)
On peut tester si un objet est nul grâce à la méthode `.nil?`
Cette méthode renvoie un booléen : `true` ou `false`
### On récupère la classe d'un objet grâce à la méthode `.class`
### On récupère sa représentation grâce à la méthode `.inspect`
### On peut le convertir en chaîne de caractère avec `to_s`
### On peut tester l'appartenance d'un objet à une classe avec `.is_a?`
```ruby
1.is_a?(Object)
=> true
```
### On récupère l'id d'un objet avec la méthode `.object_id`
Deux objets différents ont en général deux identifiants différents.
Un petit entier a un id fixe qui est égale à sa valeur * 2 + 1
### La méthode `.clone` permet de créer une copie d'un objet
## **Symboles**
### Les symboles ont un rôle d'identificateur, ce ne sont pas des chaînes de caractères, ils peuvent prendre le rôle d'enumeration
### Syntaxe : préfixer le symbole de deux points : `symbol = :foo`
## **Tableaux**
### Tableau vide : `Array.new` ou `[]`
### Accès :
```ruby
array = [1, 2, 3, 4, 5]
array[0]
=> 1
array[-1]
=> 5
```
### Slices : `tableau[<indice>, <nombre>]`
```ruby
array[0, 1]
=> 1
array[1, 1000]
=> [2, 3, 4, 5]
array[17, 1]
=> nil
```
### Ajout
```ruby
array << 6
[1, 2, 3, 4, 5, 6]
array.append(7)
[1, 2, 3, 4, 5, 6, 7]
array << 8 << 9 << 10
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```
