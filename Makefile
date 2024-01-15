.PHONY: normalize planejamento monitoramento

YEAR := 2020 2021 2022 2023

normalize: planejamento monitoramento

planejamento: $(YEAR:%=datapackages/planejamento%/datapackage.json)

datapackages/planejamento%/datapackage.json: datapackages/planejamento%/datapackage.yaml
	dpm normalize $< --output-dir datapackages/planejamento$*/ --data-dir datapackages/planejamento$*/data

monitoramento: $(YEAR:%=datapackages/monitoramento%/datapackage.json)

datapackages/monitoramento%/datapackage.json: datapackages/monitoramento%/datapackage.yaml
	dpm normalize $< --output-dir datapackages/monitoramento$*/ --data-dir datapackages/monitoramento$*/data

