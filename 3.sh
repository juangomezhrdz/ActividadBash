#!/bin/bash

#Listado de argumentos en string
argv=("$@")

#Nombre del script
echo $0
#Numero de argumentos
echo $#
#Argumentos 1 y 2
echo $1 $2

#Bucle del resto de argumentos
for (( i=2; i < $#; i++ )); do
    echo ${argv[${i}]}
done
