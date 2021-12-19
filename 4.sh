#!/bin/bash

RUTAORIGEN=$1
RUTADESTINO=$2


if [[ $# != 2 ]]; #Se condiciona todo a solo 2 argumentos
then
  echo "FALTAN O SOBRAN PARAMETROS. SON SOLO 2 ORIGEN y DESTINO"
else #
  if [[ -f $RUTAORIGEN && -f $RUTADESTINO ]];#Se valida que sean dos archivos
  then #Si es así se sobrescribe
    cp -f $RUTAORIGEN $RUTADESTINO
    echo "Se ha copiado el archivo correctamente"
  else
    echo "El fichero de origen o destino está con problemas"
  fi
fi
