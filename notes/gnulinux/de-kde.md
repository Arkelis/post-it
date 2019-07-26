# KDE

## Latte-dock

Pour avoir des panels personnalisables, latte-dock est une alternative aux panels natifs de Plasma.

Pour garder le raccourci `Meta` \(touche Windows\) pour le lanceur d'applications dans Latte-dock, modifier le fichier `~/.config/kwinrc` et ajouter :

```text
[ModifierOnlyShortcuts]
Meta=org.kde.lattedock,/Latte,org.kde.LatteDock,activateLauncherMenu
```

## Wifi

Parfois, le wifi met trois plombes à se connecter au démarrage de Plasma. Pour éviter ça, il faut définir le mot de passe de la box pour tous les utilisateurs \(non chiffré\). Configuration du Wifi -&gt; Sélection de la connexion que l'on utilise -&gt; Sécurité -&gt; Conserver le mdp pour tous les utilisateurs.

## Mise à l'échelle

Lorsque l'on a un écran petit, ça peut être bien d'ajuster le facteur d'échelle.

* KDE : Configuration système -&gt; Affichage et écran -&gt; Affichages.
* Firefox : aller à `about:config` et augmenter la valeur de `layout.css.devPixelsPerPx`

  \(ex : 1.2 pour avoir 120% de zoom\).

