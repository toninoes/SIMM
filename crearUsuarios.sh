#!/bin/bash

#Ejercicio 2 - hoja 7.2

if [ $# -eq 0 ];then

	read -p "Pulsa C: Crear usuario ; S: Salir   " OPCION
	
	if [ $OPCION = "S" -o $OPCION = "s" ];then
		exit 1
	fi
	
	if [ $OPCION = "C" -o $OPCION = "c" ];then
		
		read -p "Introduce nombre de login " USUARIO
		read -p "Introduce shell de entrada" SHELL
		read -p "Introduce clave" CLAVE
		useradd -s $SHELL $USUARIO -p $CLAVE		
			
	fi
	
	

else
	echo "Este script no recibe parametros"
fi
