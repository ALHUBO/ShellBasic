#!/bin/bash
if [ -z $1 ];then
	echo "Necesitas ingresar un nombre de usuario"
else
	echo "El usuario es:"
	echo $1
	echo "Directorio home:"
	cat /etc/passwd | grep -o /.*$1
	echo "Shell que tiene asignado:"
	cat /etc/passwd | grep $1 | grep -o /bin.*
	echo "Procesos actuales de $1"
	ps -aux | grep $1
fi
