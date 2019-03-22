#!/bin/sh
rm -r over nada validos resultados.txt
for nome in $(cat nomes.txt  | sed -e 's/ /+/g'); do
for competencia in $(seq 12 && seq 16 18 && seq 21 23); do
echo "Baixando" $nome "na 1a instância com o cod. de competência" $competencia
curl 'http://www4.tjrj.jus.br/consultaProcessoNome/ConsultaNome.do' --data 'acao=consulta&descOrigem='$origem'&descComarca=Todas+Comarcas&descCompetencia='$competencia'&novaTela=true&tipousuario=&idUsuSegWeb=&origem='$origem'&tiposecinst=1&comarca=TODAS&competencia='$competencia'&anoInicio=1980&anoFinal=2018&dataInicio=&dataFim=21%2F03%2F2019&nomeParte="'$nome'"' > $nome'-instancia1-c'$competencia'.html'
done
for origem in $(seq 9); do
echo "Baixando" $nome "com a origem" $origem
curl 'http://www4.tjrj.jus.br/consultaProcessoNome/ConsultaNome.do' --data 'acao=consulta&descOrigem='$origem'&descComarca=Todas+Comarcas&novaTela=true&tipousuario=&idUsuSegWeb=&origem='$origem'&tiposecinst=1&comarca=TODAS&anoInicio=1980&anoFinal=2018&dataInicio=&dataFim=21%2F03%2F2020&nomeParte="'$nome'"' > $nome'-'$origem'.html'
done
done

mkdir over nada validos
find . -maxdepth 1 -name '*.html' -print0  | xargs -0r grep -Z -l "Nenhum" | xargs -0r mv -t "nada"
find . -maxdepth 1 -name '*.html' -print0  | xargs -0r grep -Z -l "refine" | xargs -0r mv -t "over"
mv *.html validos
touch resultados.txt
for arquivo in $(ls validos/*.html); do cat $arquivo | hxnormalize -x | hxselect 'table' | w3m -dump  -T 'text/html' >> resultados.txt
done
more resultados.txt
