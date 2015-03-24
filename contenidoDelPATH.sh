#!/bin/bash
#ejercicio 6 - hoja 7.1

if [ $# -eq 0 ];then

	var=$(echo $PATH)
	IFS=":"
	ls -l $var | less

else
  echo "Este script no tiene que recibir ningun argumento"
fi


