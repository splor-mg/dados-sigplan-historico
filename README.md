# Série histórica bases SIGPLAN

Os schemas das bases de dados do SIGPLAN são diferentes entre os bimestres e anos tanto em relação a quantidade de colunas quanto ao nomes das mesmas. Para gerar o schema adequado para cada ano depois de fazer unzip da pasta `datapackages.tar.gz` execute:

```bash
python3 scripts/render_template.py
```

Para normalizar os nomes das colunas de tal forma que seja possível empilhar os vários anos execute:

```bash
make normalize
```

Finalmente para concatenar os 4 anos execute

```bash
make concat
```

Serão gerados dois recursos descritos no arquivo `datapackage.json`.
