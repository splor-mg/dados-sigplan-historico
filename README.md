# Série histórica bases SIGPLAN

```bash
python3 scripts/render_template.py
```

```bash
make normalize
```

```bash
dpm concat --resource-name acoes_monitoramento --enrich ppag=period \
           --package datapackages/monitoramento2020/datapackage.json \
           --package datapackages/monitoramento2021/datapackage.json \
           --package datapackages/monitoramento2022/datapackage.json \
           --package datapackages/monitoramento2023/datapackage.json
```

```bash
dpm concat datapackages/planejamento*/**/datapackage.json --resource-name indicadores_planejamento --enrich ppag=period
```
