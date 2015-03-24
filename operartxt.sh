#!/bin/bash

#EJERCICIO 11

if [ $# -eq 2 ];then
  
  if [ $1 = '-e' ];then
    nano $2
  elif [ $1 = '-v' ];then
    cat $2
  elif [ $1 = '-p' ];then
    less $2
  fi 

else
  echo "USO: <nombre de script> <opcion> <nombre de fichero>"

fi
