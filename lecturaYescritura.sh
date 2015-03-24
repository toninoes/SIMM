#!/bin/bash
#ejercicio 5 - hoja 7.1

if [ $# -eq 0 ];then

  ls -l | grep -E "^-rw"

else
  echo "Este script no tiene que recibir ningun argumento"
fi
