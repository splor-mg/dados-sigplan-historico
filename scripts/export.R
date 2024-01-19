library(frictionless)
library(dplyr)

package <- read_package("datapackage.json")

acoes_monitoramento <- read_resource(package, "acoes_monitoramento")

acoes_monitoramento |> 
  select(uo_acao_cod,
         uo_acao_nome,
         programa_cod,
         programa_desc,
         acao_cod,
         acao_desc,
         produto_desc,
         vlr_credito_inicial,
         vlr_credito_autorizado,
         vlr_despesa_realizada,
         vlr_previsao_fisica,
         vlr_fisico_realizado, 
         ppag)

relacao_indicadores_apurados <- read_resource(dp, "relacao_indicadores_apurados")

relacao_indicadores_apurados |> 
  select(programa_cod,
         programa_nome,
         indicador,
         unidade_de_medida,
         polaridade,
         dt_apuracao_indice_referencia,
         indice_de_referencia,
         previsao_ano0,
         apurado_ano0,
         notas_do_usuario
        )
