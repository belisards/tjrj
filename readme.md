#Buscador automatizado no TJRJ

Automatiza buscas nominais no site site do TJRJ.

O arquivo nomes.txt deve ser preenchido com um nome em cada linha. 

O script lê o arquivo e faz a busca por nomes em cada competência e origem, separando em subpastas os resultados vazios ("nada") e que precisam ser refinados ("over")

Apenas a busca da 1a instância precisa ser feita em várias competências. As demais, não.

Exemplo para consultar processo pelo número: 
http://www4.tjrj.jus.br/consultaProcessoWebV2/consultaProc.do?v=2&FLAGNOME=&back=1&tipoConsulta=publica&numProcesso=1998.120.015096-6

#Dicionário de códigos

##origem
  1">1ª Instância
  2">Tribunal de Justiça (2ª Instância)
  3">Tribunal de Alçada Cível
  4">Tribunal de Alçada Criminal
  5">Conselho Recursal
  6">Precatórios Judiciais
  7">Juizados Especiais
  8">Vara de Execuções Penais
  9">Conselho da Magistratura

##competencia
  08">Acidentes do Trabalho
  06">Auditoria da Justiça Militar
  01">Cível
  04">Criminal
  05">Criminal - Juri
  17">Dívida Ativa Estadual
  18">Dívida Ativa Federal
  11">Dívida Ativa Municipal
  03">Empresarial
  02">Família
  10">Fazenda Pública
  22">Idoso
  12">Infância e Juventude/I. J. e Idosos
  23">Juizado Fazendário
  07">Órfãos e Sucessões
  16">Registro Civil de Pessoas Naturais
  09">Registro Público
  21">Violência Dom. e Fam. Contra a Mulher
