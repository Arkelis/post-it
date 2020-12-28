# pipenv - Gestionnaire de dépendances et d'environnement virtuel

Pipenv est la manière recommandée par la doc de gérer les dépendances d'un projet. Avec Pipenv, plus de `pip` ou de `virtualenv`, voire même `pew`, tout est automatique !

{% hint style="warning" %}
Suite à quelques problèmes, notamment la résolution de dépendances qui prend des plombes et qui n'aboutit pas parfois \(trop souvent même\), j'utilise plutôt poetry \(post-it suivant\) qui prend aussi en charge le packaging.

Néanmoins, cet outil n'est pas totalement à jeter à la poubelle ! Il faut suivre son évolution.
{% endhint %}

## Installation

Avec `pip` :

```text
$ pip install pipenv
```

Au préalable, on peut se placer dans une version de Python avec [pyenv](pyenv.md).

## Utilisation

```text
$ pipenv
Usage: pipenv [OPTIONS] COMMAND [ARGS]...

Options:
  --where             Output project home information.
  --venv              Output virtualenv information.
  --py                Output Python interpreter information.
  --envs              Output Environment Variable options.
  --rm                Remove the virtualenv.
  --bare              Minimal output.
  --completion        Output completion (to be eval'd).
  --man               Display manpage.
  --support           Output diagnostic information for use in GitHub issues.
  --site-packages     Enable site-packages for the virtualenv.  [env var:
                      PIPENV_SITE_PACKAGES]
  --python TEXT       Specify which version of Python virtualenv should use.
  --three / --two     Use Python 3/2 when creating virtualenv.
  --clear             Clears caches (pipenv, pip, and pip-tools).  [env var:
                      PIPENV_CLEAR]
  -v, --verbose       Verbose mode.
  --pypi-mirror TEXT  Specify a PyPI mirror.
  --version           Show the version and exit.
  -h, --help          Show this message and exit.


Usage Examples:
   Create a new project using Python 3.7, specifically:
   $ pipenv --python 3.7

   Remove project virtualenv (inferred from current directory):
   $ pipenv --rm

   Install all dependencies for a project (including dev):
   $ pipenv install --dev

   Create a lockfile containing pre-releases:
   $ pipenv lock --pre

   Show a graph of your installed dependencies:
   $ pipenv graph

   Check your installed dependencies for security vulnerabilities:
   $ pipenv check

   Install a local setup.py into your virtual environment/Pipfile:
   $ pipenv install -e .

   Use a lower-level pip command:
   $ pipenv run pip freeze

Commands:
  check      Checks for security vulnerabilities and against PEP 508 markers
             provided in Pipfile.
  clean      Uninstalls all packages not specified in Pipfile.lock.
  graph      Displays currently-installed dependency graph information.
  install    Installs provided packages and adds them to Pipfile, or (if no
             packages are given), installs all packages from Pipfile.
  lock       Generates Pipfile.lock.
  open       View a given module in your editor.
  run        Spawns a command installed into the virtualenv.
  shell      Spawns a shell within the virtualenv.
  sync       Installs all packages specified in Pipfile.lock.
  uninstall  Un-installs a provided package and removes it from Pipfile.
  update     Runs lock, then sync.
```

A la création d'un projet, pas besoin de créer d'environnement virtuel. Il sera créé dès que l'on installera un paquet. Pour initialiser un environnement virtuel vide on lance un shell :

```text
$ pipenv shell
```

Cela lance un shell dans l'environnement virtuel du projet et le crée s'il n'existe pas. Cela crée deux fichiers : `Pipfile` et `Pipfile.lock` \(semblables à `packages.json` et `packages.lock` de `npm`\).

Pour installer un paquet :

```text
$ pipenv install paquet
```

Autres commandes listées dans le dépôt : [Pipenv](https://github.com/pypa/pipenv#-usage)

