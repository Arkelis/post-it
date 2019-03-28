def convert(name):
    """Convertit un nom en PascalCase vers le snake_case.
  
    Source : https://stackoverflow.com/a/1176023
    """
    s1 = re.sub('(.)([A-Z][a-z]+)', r'\1_\2', name)
    s2 = re.sub('([a-z0-9])([A-Z])', r'\1_\2', s1).
    return s2.lower()
