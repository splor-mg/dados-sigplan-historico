.PHONY: describe normalize planejamento monitoramento concat

YEAR := 2020 2021 2022 2023

describe:
	python3 scripts/render_template.py

normalize: planejamento monitoramento

planejamento: $(YEAR:%=datapackages/planejamento%/datapackage.json)

datapackages/planejamento%/datapackage.json: datapackages/planejamento%/datapackage.yaml datapackages/planejamento%/schemas/*.yaml
	dpm normalize $< --output-dir datapackages/planejamento$*/ --data-dir datapackages/planejamento$*/data

monitoramento: $(YEAR:%=datapackages/monitoramento%/datapackage.json)

datapackages/monitoramento%/datapackage.json: datapackages/monitoramento%/datapackage.yaml datapackages/monitoramento%/schemas/*.yaml
	dpm normalize $< --output-dir datapackages/monitoramento$*/ --data-dir datapackages/monitoramento$*/data

concat:
	dpm concat datapackages/monitoramento*/**/datapackage.json --resource-name acoes_monitoramento --enrich ppag=period
	dpm concat datapackages/monitoramento*/**/datapackage.json --resource-name relacao_indicadores_apurados --enrich ppag=period
