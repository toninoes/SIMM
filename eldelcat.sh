#!/bin/bash

#mostrado de 2 o mas ficheros recibidos como argumento, y con algun separador

for variable in $*
do

	cat $variable
	echo "###### Fin de fichero $variable ######"

done
