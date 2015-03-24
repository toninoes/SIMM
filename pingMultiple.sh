#!/bin/bash
#ejercicio 7 - hoja 7.1

if [ $# -gt 0 ];then

	for IP in $*
	do
		ping -c 4 $IP > /dev/null
		if [ $? -eq 0 ];then
			echo "La direccion $IP responde correctamente"
		else
  			echo "La direccion $IP no responde"
		fi
	done 

else
	echo "Introduce una o más IPs separadas por un espacio"
fi

