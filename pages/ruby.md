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
# => 1
array.first
# => 1
array[-1]
# => 5
array.last
# => 5
array[1]
# => 2
array.at(2)
# => 3
array.fetch(234, :unknown)
# => :unknown
```
### Slices : `tableau[<indice>, <nombre>]`
```ruby
array[0, 1]
# => 1
array[1, 1000]
# => [2, 3, 4, 5]
array[17, 1]
# => nil
```
### Objet range : itérateur incrémental
```ruby
(1..5).to_a
# => [1, 2, 3, 4, 5]
(1...5).to_a
# => [1, 2, 3, 4]
```
### Slices 
```ruby
array[0..2]
# => [1, 2, 3]
array[0...2]
# => [1, 2]
array[0..-1]
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array[-2...-1]
# => [9, 10]
array[-2...-1]
# => [9]
```
### Ajout / Suppression à la fin
```ruby
array << 6
# => [1, 2, 3, 4, 5, 6]
array.push(7)
# => [1, 2, 3, 4, 5, 6, 7]
array << 8 << 9 << 10
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.pop
# => 10
array
# => [1, 2, 3, 4, 5, 6, 7, 8, 9]
```
### Ajout / Suppression au début
```ruby
array.unshfit(0)
# => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
array.shift
# => 0
array
# => [1, 2, 3, 4, 5, 6, 7, 8, 9]
```
### Unpacking
```ruby
a, b = [1, 2] # a=1 et b=2
a, b = [1, 2, 3] # a=1 et b=2
a, b = [[1, 2], 3] # a=[1, 2] et b=3
a, b = [1] # a=1 et b=nil
a, *b = [1, 2, 3] # a=1 et b=[2, 3]
a, = [1, 2] # a=1
a, b = b, a # a=b et b=a
```
## **`Hash` :** dictionnaires
### Création
```ruby
d = {"one" => 1, "two" => 2} # clés String
d = {:one => 1, :two => 2} # clés symboles
d = {one => 1, two => 2} # syntaxe alternative pour des clés symboles

# en utilisant le constructeur
d = Hash.new
d[:one] = 1
d[:two] = 2
```
### Accès
```ruby
d[:one]
# => 1
d[:three]
# => nil
d.default = -1
d[:three]
# => -1

# on peut aussi définir la valeur par défaut lors de la construction
d = Hash.new(-1)
d[:one]
# => -1

d.fetch(:one)
# => KeyError (key not found: :one)
d.fetch(:one, -1)
# => -1
d[:one] = 1
d.fetch(:one)
# => 1
```
## **Chaînes de caractères**
### Définition
```ruby
simple = 'a string called "Simple"'
double = "a string called 'Double'"
double_escaping = "Escaping is \"Simple\""
multiline = %{
I can handle both "simple"
and 'simple' quotes
}
multiline
# => "\nI can handle both \"simple\"\nand 'simple' quotes\n"
multiline.lines
# => 3
doc = <<EOS
Another delimiter
which does not start by a new line
EOS
doc.lines
# => 2
```
### Concaténation et muabilité
```ruby
hello = 'Hello '
world = "world"
hello + world
# => "Hello world"
hello
# => "Hello "
hello += world
hello
# => "Hello world"
hello << "!"
# => "Hello world!"
hello
# => "Hello world!"
```
### Split et join
```ruby
"Coucou toi".split
# => ["Coucou", "toi"]
"a:b:c".split(/:/) # /:/ est une regex
# => ["a", "b", "c"]
["Hello", "world"].join(" ")
"Hello world"
```
## **Symboles**
