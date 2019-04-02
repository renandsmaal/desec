#!/bin/bash
for url in $(cat "lista.txt");
do
host $url.$1 | grep "has address"
done
