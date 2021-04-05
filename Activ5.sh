#!/bin/bash
tim=$(date +"%m-%d-%Y_%T")
if [ -d  "Respaldo_$tim" ];then
	echo "Ya existe el Directorio Respaldo_$tim"
else
	mkdir "Respaldo_$tim"
fi
cd "Respaldo_$tim/"
mkdir "profesores/"
cd ..
cp -r "profesores/" "Respaldo_$tim/"
cp -r "administrativos/" "Respaldo_$tim/"
cp -r "alumnos/" "Respaldo_$tim/"
cp numeroFicheros_*.txt "Respaldo_$tim/"
#rm numeroFicheros_*.txt

zip -r "Respaldo_$tim.zip" "Respaldo_$tim"
#rm -r "Respaldo_$tim/"
