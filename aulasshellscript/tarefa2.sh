#!/bin/bash
for palavra in $(cat lista.txt)
do
arquivos=$(curl -s -o /dev/null -w "%{http_code}" $1/$palavra)
if [ $arquivos == "200" ]
then
echo "Arquivo encontrado: $palavra"
echo "################################################"
fi
diretorios=$(curl -s -o /dev/null -w "%{http_code}" $1/$palavra/)
if [ $diretorios == "200" ]
then
echo "Diretorio encontrado: $palavra"
echo "################################################"
fi
done
