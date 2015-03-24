#!/bin/bash


if [ ! -f $1 ];then
  echo "ERROR: El fichero $1 no existe"
else
 cp -i $1  /tmp/$USER
fi
