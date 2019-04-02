#!/bin/bash
for host in $(cat hosts.txt)
do
resposta='nmap -Pn $host | grep "Host is up."'
if [ " $resposta " == "Host is up." ]
then
echo " $host esta ATIVO "
else
echo " $host INATIVO"
fi
done

