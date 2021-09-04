#!/bin/bash
for scan in $(cat common.txt)
do
#final=$(curl -s -H "User-Agent: SEVEN" -o /dev/null -w "%{http_code}" http://$1/$scan.$2)
final=$(curl -s -H "User-Agent: SEVEN" -o /dev/null -w "%{http_code}" http://$1/$scan)
if [ $final == "200" ]
then
echo "Diretorio encontrado: $1/$scan/"
fi
done
