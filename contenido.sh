#!/bin/bash

if [ $1 ];then
	if [ -f $1 ];then
  		less $1
		exit 0
	else
  		ls -la $1
		exit 0

	fi
else
	echo "USO: <nombre script> <nombre fichero>"
	exit 1
fi
