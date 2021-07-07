#!/bin/bash



if [ "$1" == "" ]

then
	echo "Varrendo Dominios"
	echo "Modo de uso: $0 "
	echo "Exemplo $0 google.com"

else
	for url in {};
		do
			wget $1;
			cat index.html | grep href index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 |grep -v "<l" > lista_de_dominios;
done
for site in $(cat lista_de_dominios);
	do
		host $site | grep "has address";
done
fi
