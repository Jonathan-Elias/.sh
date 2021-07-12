#!/bin/bash

if [ $1 == "" ]
then
	echo "Análise de Logs -  WEB"
	echo "Mode de uso: $0 /caminho/do/arquivo/"
	echo "Exemplo: $0 /var/log"
else

	for list in {}
	do
		cat $1 | cut -d " " -f 1 | sort | uniq -c | sort -unr
echo

CONDIÇÃO

echo "Deseja fazer nova pesquisa?"
echo "================================================================================================================================================="
echo "     y - SIM"
echo "     n - NÃO"
echo "================================================================================================================================================="

read resp
case $resp in
	"y")
		echo
		echo "Qual o Ip: $ip"
		echo
		read ip
		for list in {}
		do
			echo "                                                                         12 PRIMEIROS REGISTOS DO IP $ip"
			echo
			cat $1 | grep "$ip" | head -n12
			echo
			echo "================================================================================================================================================="
			echo "                                                                         12 ÚLTIMOS REGISTROS DO IP $ip"
			echo
			cat $1 | grep "$ip" | tail -n12
			echo "================================================================================================================================================="
#			echo "                                                                          REQUISIÇÕES DO IP $ip"
#			echo
#			cat $1 | grep "$ip" | cut -d '"' -f 2
#			echo "================================================================================================================================================="
#			echo "                                                                          REQUISIÇÕES COM SUCESSO DO IP $ip"
#			echo
#			cat $1 | grep "$ip" | cut -d "]" -f 2 | grep "200"
#			echo "================================================================================================================================================="
			echo "                                                                          REQUISIÇÕES REDIRECIONADAS DO IP $ip"
			echo
			cat $1 | grep  "$ip" | cut -d "]" -f 2 | grep "301"


done
esac

done
fi
