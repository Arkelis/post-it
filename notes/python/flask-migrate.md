# Flask-Migrate : Migrations avec SQLAlchemy & Alembic dans Flask.

## Mise en place

Dans `app.py` ou `app/__init__.py`:

```python
app = Flask(__name__)
# ...  config database
db = SQLAlchemy(app)
migrate = Migrate(app, db)
```

## Commandes 

* Créer la base : `flask db init`
* Créer les migrations : `flask db migrate`
* Appliquer les migrations : `flask db upgrade`

## Documentation

[ICI](https://flask-migrate.readthedocs.io/en/latest/)
