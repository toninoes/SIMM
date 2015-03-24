#!/bin/bash
#ejercicio 4 - hoja 7.1

type "$1" > /dev/null

if [ $? -eq 0 ];then

	var=$(grep -E -c "^$1 " ~/.bash_history)
	echo "El usuario $USER ha ejecutado $var veces el comando $1"

else
	echo "ERROR: $1 no es un comando válido"
fi
	


