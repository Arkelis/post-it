# smartctl : outil de contrôle et de surveillance pour les disques durs SMART

Cet utilitaire permet d'effectuer des tests de santé sur un disque dur. Pour effectuer un test sur `/dev/sda` :

```text
# smartctl -t short /dev/sda
```

Pour visualiser les résultats des tests :

```text
# smartctl -l selftest /dev/sda
```

