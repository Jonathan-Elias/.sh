#!/bin/bash
for scan in $(cat common.txt)
do
#final=$(curl -s -H "User-Agent: SEVEN" -o /dev/null -w "%{http_code}" https://www.$scan/$1/)
#final=$(curl -s -H "User-Agent: SEVEN" -o /dev/null -w "%{http_code}" https://www.$1/$scan.$2/)
final=$(curl -s -H "User-Agent: SEVEN" -o /dev/null -w "%{http_code}" https://www.$1/$scan/)
if [ $final == "200" ]
then
#echo "Diretorio encontrado:   ------>  $scan.$1/"
#echo "Diretorio encontrado:   ------>  $1 /$scan.$2/"
echo "Diretorio encontrado:   ------> $1/$scan/"
fi
done
