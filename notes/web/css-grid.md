# CSS : `display: grid`

**Sources**

* [CSS Grid Garden](http://cssgridgarden.com/#fr)
* [CSS Tricks](https://css-tricks.com/snippets/css/complete-guide-grid/)

## Disposition (élément parent)

Ces propriétés concernent l'élément parent (appelé *grid container*)
des éléments qui composeront la grille. Elles définissent la façon 
dont sera organisée la grille.

Cet élément doit être en display grid :

```css
.parent {
  display: grid
}
```

Les propriétés suivantes permettent d'organiser la grille :

* `grid-template-columns` : la largeur des différentes colonnes. Peuvent être des
  * pourcentages : `grid-template-column: 20% 40% 40%`
  * des fractions : `grid-template-column: 1fr 2fr 2fr`
  * des pixels et/ou autres unités (que l'on peut combiner avec les fractions)
  * on peut utiliser `repeat` pour répéter la même chose : 
  `grid-template-column: repeat(5, 1fr)` donne 5 colonnes de même taille
* `grid-template-rows` : idem pour les lignes
* On peut combiner les deux précédents : `grid-template: <lignes> / <colonnes>`
* `grid-template-areas` : permet de créer des zones qui seront occupées par des
  éléments enfants en leur donnant des noms. Par exemple un layout classique serait :
  
  ```CSS
  .parent {
    display: grid;
    grid-template-columns: 20% 1fr;
    grid-template-rows: 100px 1fr 100px;
    grid-template-areas:
      "header header"
      "sidebar body"
      "footer footer"
  }
  ```
  Cela donne une disposition classique avec une sidebar et un body entourées d'un
  header en haut et d'un footer en bas.
* `grid-column-gap` : espacement entre les colonnes (marche avec toutes les unités 
  de longueur, pourcentage et fr compris)
* `grid-row-gap` : espacement entres les lignes
* `grid-gap` : les deux d'un coup

## Positionnement des éléments dans la grille

Les propriétés suivantes concernent les éléments enfants (*grid items*).

### Placement dans la grille

* `grid-column-start` : première colonne occupée par l'élément (la première colonne
  est numérotée 1).
* `grid-column-end` : colonne où s'arrête l'élément. Deux possibilités :
  * numéro de la colonne juste après la dernière occupée par l'élément.
  `grid-column-end: 3` : l'élément occupe les colonnes 1 et 2 (1 inclus à
  3 exclus).
  * en indiquant d'abord le mot-clé span, le nombre de colonnes occupées.
  `grid-column-end: span 2` : l'élément occupe les colonnes 1 et 2. (deux
  colonnes à partir de la colonne 1).
* On peut raccourcir ces deux propriétés en `grid-column: <start> / <end>` :
  `grid-column: 1 / 3` et `grid-column: 1 / span 2` sont les équivalents des exemples
  précédents.
* `grid-row-start` : idem que pour les colonnes mais pour les lignes
* `grid-row-end` : idem
* `grid-row` : idem
* `grid-area` : place l'élément dans la zone indiquée dans la propriété du grid container
  `grid-template-areas`.

### Positionnement au sein d'une cellule

Ces propriétés peuvent s'appliquer à un élément qui occupe une **unique** cellule.

* `align-self: start | end | center | stretch;` : aligne verticalement l'élément au
  sein de sa cellule : haut, bas, centré, remplit la cellule (par défaut).
* `justify-self: start | end | center | stretch;` aligne horizontalement l'élément
  sein de sa cellule : haut, bas, centré, remplit la cellule (par défaut).
* Ces deux propriétés peuvent être combinées en une seule `place-self: <align-self> / <justify-self>`.
  Si uniquement une valeur est renseignée, elle est appliquée aux deux
  propriétés précédentes.
