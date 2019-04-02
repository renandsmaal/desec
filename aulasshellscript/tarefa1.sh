#!/bin/bash
echo "Descobrindo os mail servers"
echo "##################################################################"
nslookup -q=mx $1 | grep "mail." | cut -d " " -f1 | grep -v "internet" | cut -d "	" -f1
echo "##################################################################"
echo "Descobrindo os name servers"
echo "##################################################################"
nslookup -q=ns $1 | grep "nameserver" | cut -d " " -f3
echo "##################################################################"
echo "Descobrindo Sub DOminios"
for url in $(cat "lista.txt");
do
host $url.$1 | grep "has address"
done
echo "##################################################################"
echo "Transferindo Zona"
for server in $(host -t ns $1 | cut -d " " -f4);
do
host -l $1 $server;
done
