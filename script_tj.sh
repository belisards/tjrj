
#!/bin/sh

for competencia in 'Fazenda+P%FAblica' 'Acidentes+do+Trabalho' 'Viol%EAncia+Dom.+e+Fam.+Contra+a+Mulher' 'Auditoria+da+Justi%E7a+Militar' 'Criminal+-+Juri' 'Empresarial' 'Idoso' 'D%EDvida+Ativa+Federal' 'D%EDvida+Ativa+Estadual' 'D%EDvida+Ativa+Municipal' ''; do
curl 'http://www4.tjrj.jus.br/consultaProcessoNome/ConsultaNome.do' -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8' -H 'Accept-Language: pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3' --compressed -H 'Referer: http://www4.tjrj.jus.br/ConsultaUnificada/consulta.do' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Cookie: JSESSIONID=0afafa3830df3e119cf121c3468ba244c44e325dcc77.e34NbhiLbNuKbi0PbNePahyTbx10; www4=888863242.20480.0000' -H 'DNT: 1' -H 'Connection: keep-alive' -H 'Upgrade-Insecure-Requests: 1' --data 'acao=consulta&descOrigem=1%AA+Inst%E2ncia&descComarca=Todas+Comarcas&descCompetencia='$competencia'&novaTela=true&tipousuario=&idUsuSegWeb=&origem=1&tiposecinst=1&comarca=TODAS&competencia=10&anoInicio=1980&anoFinal=2018&dataInicio=&dataFim=30%2F09%2F2018&nomeParte="NOME+PESQUISADO' > $competencia'.html'
done

