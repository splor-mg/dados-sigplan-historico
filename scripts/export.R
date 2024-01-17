library(frictionless)
library(data.table)
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
         vlr_prog_fisica_inicial, # this is not comparable between bimesters
         vlr_previsao_fisica,
         vlr_fisico_realizado, 
         ppag) |> 
  filter(acao_cod == 4428)

indicadores_planejamento <- read_resource(package, "indicadores_planejamento")

indicadores_planejamento |> 
  filter()


