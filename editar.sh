#!/bin/bash
#ejercicio 3 - hoja 7.3

if [ -f $1 ];then

  if  [ -r $1 -a -w $1 ];then
    nano $1
  else
    echo "ERROR: El usuario no tiene permisos lectura/escritura sobre $1"
   exit 1
  fi

else
  nano $1
fi
