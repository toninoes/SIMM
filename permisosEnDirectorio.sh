#!/bin/bash
#ejercicio 02 - hoja 7.1

if [ -d $1 ];then

  echo "Tienes permiso de:"
  if [ -r $1 ];then
    echo "Lectura"
  fi

  if [ -w $1 ];then
    echo "Escritura"
  fi

  if [ -x $1 ];then
    echo "Ejecucion"
  fi

else
  echo "ERROR: introduce solo nombres de directorios"
fi
