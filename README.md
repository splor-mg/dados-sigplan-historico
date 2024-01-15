dpm concat --resource-name acoes_monitoramento --enrich ppag=period --package datapackages/monitoramento2020/datapackage.json --package datapackages/monitoramento2021/datapackage.json --package datapackages/monitoramento2022/datapackage.json --package datapackages/monitoramento2023/datapackage.json


dpm normalize datapackages/monitoramento2022/datapackage.yaml --output-dir datapackages/monitoramento2022/ --data-dir datapackages/monitoramento2022/data