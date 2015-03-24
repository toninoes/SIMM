#!/bin/bash
#Ejercicio 8 Hoja 7.1

if [ -f $1 -a -r $1 ];then

	for var in $(cat $1)
	do
		var2=$(who | grep $var | wc -l)
		
		if [ $var2 -gt 0 ];then
			echo "El usuario $var esta actualmente conectado $var2 sesiones" 
		else
			echo "El usuario $var no está actualmente conectado"
		fi			
	done	 


else
	echo "ERROR: el fichero "$1" no es accesible"
	exit 1
fi
