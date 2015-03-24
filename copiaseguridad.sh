#!/bin/bash

#ejercicio 13

if [ $# -eq 1 ];then

  if [ -f ~/$1 ];then
    echo "ERROR: El fichero ya existe"
    exit 1
  
  else
    tar  -cvzf $1.tgz ~
  fi




else
  echo "USO: <nombre de script>  <fichero>"
  exit 1
fi
