#!/bin/bash
#ejemplo: www.fie.umich.mx
if [ -z $1 ];then
	echo "Se necesita ingresar una Url"
else
	echo " - La URL:"
	echo $1
	echo " - Tiene la ip: "
	ping -4 -c 1 $1 | grep -Eo "([0-9]{1,3}[\.]){3}[0-9]{1,3}" | uniq
fi

