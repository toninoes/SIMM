#!/bin/bash

#ejercicio 3 - hoja 7.2

if [ $# -eq 1 -o $# -eq 2 ];then

	if [ $# -eq 1 ];then

		groupadd $1
		if [ $? -eq 0 ];then
			echo "Grupo $1 creado correctamente"
			exit 0
		else
			echo "Error en la creación del grupo $1"
			exit 1
		fi

	fi

	if [ $# -eq 2 ];then

		groupadd $1

		if [ -f "$2" -a -r "$2" ];then

			for var in $(cat $2)
			do

				gpasswd -a $var $1 > /dev/null
				if [ $? -eq 0 ];then

					echo "Usuario $var agregado correctamente al grupo $1"				
								
				fi

			done

		else
			echo "ERROR: el fichero $2 no es accesible"
			exit 1
		fi

	fi

else
	echo "USO: $0 <nombre de grupo> [<fichero de lista de usr>]"
	exit 1
fi
