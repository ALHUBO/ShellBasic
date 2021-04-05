#!/bin/bash
if [ -z $1 ];then
	echo "Numero de ficheros:"
	find . -maxdepth 100 -type f | wc -l
	echo "Numero de carpetas"
	find . -maxdepth 100 -type d | wc -l
else
	echo "Numero de ficheros:"
	find $1 -maxdepth 100 -type f | wc -l
	echo "Numero de carpetas"
	find $1 -maxdepth 100 -type d | wc -l
fi
