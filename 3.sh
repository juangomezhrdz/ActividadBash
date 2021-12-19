#!/bin/bash

#Listado de argumentos en string
argv=("$@")

#Nombre del script
echo "El archivo en ejecución es ${0}"
#Numero de argumentos
echo "El número de argumentos es ${#}"
#Argumentos 1 y 2
echo "Argumentos: ${1} ${2}"

#Bucle del resto de argumentos
for (( i=2; i < $#; i++ )); do
    echo ${argv[${i}]}
done
