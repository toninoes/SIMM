
#!/bin/bash
#EJERCICIO 12

if [ $# -eq 1 ];then
  
  if [ $1 = 'scripts' ];then

    if [ ! -d ~/scripts_organizados ];then
      mkdir ~/scripts_organizados
      mv ./*.sh ~/scripts_organizados
    else
      mv ./*.sh ~/scripts_organizados
    fi
  
  fi

  if [ $1 = 'textos' ];then

    if [ ! -d ~/textos_organizados ];then
      mkdir ~/textos_organizados
      mv ./*.txt ~/textos_organizados
    else
      mv ./*.txt ~/textos_organizados
    fi

  fi

  if [ $1 != 'textos' -a $1 != 'scripts' ];then

    echo "ERROR: argumentos erróneo"

  fi 
 

else
  echo "USO: <nombre de script> <opcion: scripts o textos> "

fi
