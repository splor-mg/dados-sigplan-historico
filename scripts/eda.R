library(data.table)

acoes_monitoramento <- fread("datapackages/monitoramento2023/data/acoes_monitoramento.txt", encoding = "Latin-1")

acoes_monitoramento[
  `Previsão Física 2023` != `Fis Programado Inicial de Jan  a Jun`,
  .(
    `Código da Unidade Orçamentária Responsável pela Ação`,
    `Previsão Física 2023`,
    `Fis Programado Inicial de Jan  a Jun`
  )
]
