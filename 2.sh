#!/bin/bash

argumento=$1
nombreArchivo="${argumento%.*}"
extension="${argumento##*.}"

#Comprobar si existe el archivo
if [[ -f $argumento ]]; then
    #Comprobar si es la extension correcta
    if [[ "$extension" == "jpg" ]]; then
        #Crear el directorio si no existe
        if [[ ! -d "~/fotos/" ]]; then
           sudo mkdir ~/fotos/
        fi
        sudo cp $argumento ~/fotos/
    else 
        echo "${nombreArchivo} --> EL FORMATO ES ERRONEO. DEBE SER .jpg o .jpeg"
    fi
else 
    echo "${nombreArchivo} --> NO EXISTE O NO ES UN ARCHIVO"
fi