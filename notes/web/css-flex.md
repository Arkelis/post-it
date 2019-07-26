# CSS : display: flex

Le `display: flex` permet entre autre d'aligner et de positionner les éléments au sein d'un conteneur.

**Sommaire**

* [Au niveau du parent](css-flex.md#au-niveau-du-parent)
  * [Alignement horizontal](css-flex.md#alignement-horizontal)
  * [Alignement vertical au sein d'une ligne](css-flex.md#alignement-vertical-au-sein-dune-ligne)
  * [Direction](css-flex.md#direction)
  * [Retour à la ligne](css-flex.md#retour-à-la-ligne)
  * [Alignement vertical de plusieurs lignes](css-flex.md#alignement-vertical-de-plusieurs-lignes)
* [Au niveau de l'élément](css-flex.md#au-niveau-de-lélément)
  * [Alignement d'un élément](css-flex.md#alignement-dun-element)
  * [Ordre d'affichage d'un élément](css-flex.md#ordre-daffichage-dun-element)

**Sources**

* [Flexbox Froggy](http://flexboxfroggy.com/#fr)
* [CSS Tricks](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)

## Propriétés au niveau du parent

On commence par donner la propriété `display: flex` au conteneur.

```css
.container {
  display: flex;
}
```

### Alignement horizontal

Pour positionner horizontalement les éléments, on utilise la propriété `justify-content`.

```css
.container {
  justify-content: flex-start | flex-end | center | space-between | space-around | space-evenly;
}
```

* `flex-start` : les éléments s'alignent au côté gauche du conteneur ;
* `flex-end` : les éléments s'alignent au côté droit du conteneur ;
* `center` : les éléments s'alignent au centre du conteneur ;
* `space-between` : les éléments sont séparés d'un même espacement ;
* `space-around` : les éléments sont entourés d'une même marge \(deux fois plus

  d'espacement entre deux éléments qu'entre un élément et le bord du conteneur\) ;

* `space-evenly` : les espacements sont tous égaux \(même espacement entre deux 

  éléments et entre un élément et le bord du conteneur\).

### Alignement vertical au sein d'une ligne

Pour aligner veticalement les éléments d'une ligne, on utiliser la propriété `align-items`.

```css
.container {
  align-items: flex-start | flex-end | center | baseline | stretch;
}
```

* `flex-start` : Les éléments s'alignent en haut ;
* `flex-end` : les éléments s'alignent en bas ;
* `center` : les éléments s'alignent au centre du conteneur ;
* `baseline` : les éléments s'alignent à la ligne de base du conteneur ;
* `stretch` : les éléments sont étirés verticalement.

### Direction

Pour décider de la directon \(de gauche à droite, de haut en bas, etc.\), on utilise la propriété `flex-diection`.

```css
.container {
  flex-direction: row | row-reverse | column | column-reverse;
}
```

* `row` dans le sens du texte ;
* `row-reverse` dans le sens opposé de celui du texte ;
* `column` : de haut en bas ;
* `column-reverse` : de bas en haut.

### Retour à la ligne

Pour décider si les éléments doivent tenir sur une ligne ou occuper plusieurs lignes, on utilise la propriété `flex-wrap`.

```css
.container {
  flex-wrap: nowrap | wrap | wrap-reverse;
}
```

* `nowrap` : tous les éléments sont écrasés pour tenir sur une ligne ;
* `wrap` : s'il n'y a pas la place en fin de ligne, on passe à la ligne

  suivante ;

* `wrap-reverse` : idem sauf que la première ligne se situe tout en bas.

On peut combiner `flex-diection` et `flex-wrap` en `flex-flow` :

```css
.container {
  flex-flow: <flex-direction> || <flex-wrap>;
}
```

Par défaut, `flex-flow` vaut `row wrap`.

### Alignement vertical de plusieurs lignes

Pour aligner veticalement plusieurs lignes, on utiliser la propriété `align-content`.

```css
.container {
  align-content: flex-start | flex-end | center | space-between | space-around | stretch;
}
```

* `flex-start` : Les lignes s'alignent en haut ;
* `flex-end` : les lignes s'alignent en bas ;
* `center` : les lignes s'alignent au centre du conteneur ;
* `space-between` : les lignes sont séparées d'un même espacement ;
* `space-around` : les lignes sont entourées d'un même espacement ;
* `stretch` : les lignes s'étirent en hauteur pour remplir l'espace.

## Au niveau de l'élément

### Alignement d'un élément

On peut positionner verticalement un élément lui-même en lui donnant la propriété `align-self`.

```css
.element {
  align-self: auto | flex-start | flex-end | center | baseline | stretch;
}
```

### Ordre d'affichage d'un élément

Par défaut, les éléments sont affichés dans l'ordre du code. On peut changer cet ordre d'affichage des éléments en leur donnant un ordinal :

```css
.element {
  order: <entier>;
}
```

Les éléments sont affichés de l'ordre croissant. Cette propriété vaut 0 par défaut.

