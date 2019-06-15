# JavaScript : ReactJS

## Création d'un projet

### Fedora

Installer nodejs :

```
$ sudo dnf install nodejs
```

Installer yarn, une alternative plus rapide à npm :
```
$ curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
$ sudo dnf install yarn
```

Créer une application React grâce à l'outil développé par Facebook :

```
$ npx create-react-app nom_de_lapplicaton
```

Lancer le serveur :

```
$ yarn start
```

Cela ouvre un navigateur sur un port libre et affiche une page de bienvenue.

## Structure

Deux dossiers:

1. `public` qui contient l'html
2. `src` qui contient l'app JS

Dans le dossier `src`, le fichier `index.js` import les dépendances nécessaires
à React et importe une classe `App` du fichier`App.js`. Ce fichier contient un
ou plusieurs Component.

## Component
C'est une classe JS (typescript) qui hérite de `Component`. Plusieurs choses
caractérisent un composant (Component) :

1. Les propriétés (`props`) : des données immuables qui permettent de transférer 
   des données entre les composants.
2. L'état (`state`), constamment mué, représente l'état du composant.

Un Component doit posséder une méthode `render()` qui renvoie du code qui ressemble
à du HTML, il s'agit de la syntaxe JSX. Par exemple :


```js
class App extends Component {
    render() {
        return (
            <h1>Hello World!</h1>
        );
    }
}
```

### Props

Les props (raccourcis de propriétés) sont le moyen de transmettre des variables
d'un composant parent à un composant enfant. Pour se faire, on passe les props
en arguments des composants enfants dans la fonction `render()` du composant
parent. Par exemple, un composant `App` appelle un composant enfant `Welcome`
en lui donnant une prop `name` de valeur `"Guillaume"`. Cette `prop` est immuable
et est accessible pour l'enfant à `this.props.name`.

```js
// App.js

import Welcome from './Welcome'; // pas besoin de .js

class App extends Component {
    render() {
        return (
            <Welcome name='Guillaume'/>
        );
    }
}

// Welcome.js

class Welcome extends Component {
    render() {
        return (
            <h1>Welcome {this.props.name}</h1>
            // name est accessible dans les propriétés de l'objet
        );
    }
}

export default Welcome;
```

### State

Le `state` d'un Component représente son état, i.e. permet de mémoriser des
paramètres qui lui sont propres. L'état est initialisé dans le constructeur 
du composant.

```javascript
class Welcome extends Component {
    constructor(props) {
        super(props)
        this.state = {
            inc: 0
        }
    }
    
    render() {
        return (
            <h1>Welcome {this.props.name}</h1>
            // name est accessible dans les propriétés de l'objet
        );
    }
}
```
> Note : Il faut toujours prendre au moins `props` en paramètre et commencer
  par appeler le constructeur parent : `super(props)`.
  
Les variables de l'état sont accessibles par `this.state.clé`. L'état peut être modifié grâce à la méthode `setState({ clé: nouvelleValeur })`.

### Événements

On peut rendre nos composants interactifs avec grâce aux événements.

```javascript
class Welcome extends Component {
    constructor(props) {
        super(props)
        this.state = {
            inc: 0
        }
    }
    
    render() {
        return (
            <div>
              <h1>Welcome {this.props.name}</h1>
              <button onClick={() => this.setState({inc: this.state.inc + 1})}>
                Clique !
              </button> {this.state.inc}
            </div>
        );
    }
}
```

### Fonctions Components

On peut écrire un composant sous forme de fonction. Si on reprend le composant `Welcome` comme il était à l'origine :

```javascript
class Welcome extends Component {
    render() {
        return (
            <h1>Welcome {this.props.name}</h1>
            // name est accessible dans les propriétés de l'objet
        );
    }
}
```

On pourrait l'écrire comme ceci :

```javascript
function Welcome(props) {
    return (
        <h1>Welcome {props.name}</h1>
    );
}
```

Pas besoin d'indiquer `this`. Il y a aussi un avantage pour l'appel de fonctions.
Imaginons :

```js
class App extends Component {
    constructor(props) {
        super(props)
        this.state = {
            inc: 0
        }
    }
    
    render() {
        return (
            <Welcome 
              name = 'Guillaume'
              onClick = {() => this.setState({ inc: this.state.inc + 1})}
              inc = {this.state.inc}
            />
        );
    }
}

function Welcome(props) {
    return (
        <div>
          <h1>Welcome {this.props.name}</h1>
          <button onClick = {props.onClick}>
            Clique !
          </button>{props.inc}
    );
}
```

Pour faire référence à une fonction, plus besoin de `() => fonction()` mais simplement `fonction`.
