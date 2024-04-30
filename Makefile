.PHONY: describe normalize planejamento monitoramento concat transform

include config.mk

YEAR := 2020 2021 2022 2023
packages := $(wildcard datapackages/monitoramento*/**/datapackage.json)

describe:
	$(PYTHON) scripts/render_template.py

normalize: planejamento monitoramento

planejamento: $(YEAR:%=datapackages/planejamento%/datapackage.json)

datapackages/planejamento%/datapackage.json: datapackages/planejamento%/datapackage.yaml datapackages/planejamento%/schemas/*.yaml
	dpm normalize $< --output-dir datapackages/planejamento$*/ --data-dir datapackages/planejamento$*/data

monitoramento: $(YEAR:%=datapackages/monitoramento%/datapackage.json)

datapackages/monitoramento%/datapackage.json: datapackages/monitoramento%/datapackage.yaml datapackages/monitoramento%/schemas/*.yaml
	dpm normalize $< --output-dir datapackages/monitoramento$*/ --data-dir datapackages/monitoramento$*/data

concat:
	dpm concat --package datapackages/monitoramento2020/datapackage.json \
	--package datapackages/monitoramento2021/datapackage.json \
	--package datapackages/monitoramento2022/datapackage.json \
	--package datapackages/monitoramento2023/datapackage.json \
	--resource-name acoes_monitoramento \
	--resource-name relacao_indicadores_apurados \
	--resource-name localizadores_monitoramento_todos \
	--enrich ppag=period

transform:
	Rscript scripts/export.R
