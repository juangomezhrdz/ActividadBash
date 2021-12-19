#!/bin/bash

ARGUMENTO=/$1


if [[  -f  $ARGUMENTO ]]; then
  echo " ${ARGUMENTO} ES ES UN FICHERO NORMAL"
  ls -l $ARGUMENTO
elif [[ -d $ARGUMENTO ]]; then
  echo " ${ARGUMENTO} ES UN DIRECTORIO"
  ls -l $ARGUMENTO
elif [[ $ARGUMENTO ]]; then
  echo " ${ARGUMENTO} ES OTRO TIPO DE FICHERO O NO EXISTE"
fi
