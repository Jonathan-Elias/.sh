#!/bin/bash



if [ "$1" == "" ]

then
        echo "Varredura de porta - PORTSCAN"
        echo "Mode de uso: $0 Rede e Porta"
        echo "Exemplo: $0 192.168.0"
else
for ip in {};
#port="1337"
do
	hping3 --scan 1-65535 -S -c 1 $1 |grep -v "Not responding"
done
fi
