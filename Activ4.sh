#!/bin/bash
for dir in profesores administrativos alumnos; do
	if [ -d  $dir ];then
		echo "Ya existe el Directorio $dir"
	else
		mkdir $dir
	fi
done

cd profesores/
while read name; do
	if [ -d $name ];then
		echo "Ya existe el Directorio $name"
	else
		mkdir $name
	fi
	for dirTw in Examenes Tareas Practicas; do
		if [ -d "$name/$dirTw" ];then
			echo "Ya existe el Directorio $name/$dirTw"
		else
		mkdir "$name/$dirTw"
		fi
	done
done < ../profesores.txt
chmod -R 740 ../profesores/

cd ../administrativos/
while read name; do
	if [ -d $name ];then
		echo "Ya existe el Directorio $name"
	else
		mkdir $name
	fi
	for dirTw in Facturas Reportes; do
		if [ -d "$name/$dirTw" ];then
			echo "Ya existe el Directorio $name/$dirTw"
		else
		mkdir "$name/$dirTw"
		fi
	done
done < ../administrativos.txt
chmod -R 700 ../administrativos/

cd ../alumnos/
for i in $(seq 1 100); do
	if [ -d "alumno$i" ];then
		echo "Ya existe el Directorio alumno$i"
	else
		mkdir "alumno$i"
	fi
	for dirTw in Documentos Imagenes Practicas; do
		if [ -d "alumno$i/$dirTw" ];then
			echo "Ya existe el Directorio alumno$i/$dirTw"
		else
		mkdir "alumno$i/$dirTw"
		fi
	done
done
chmod -R 600 ../alumnos/
cd ..
tim=$(date +"%m-%d-%Y_%T")
echo "Alejandro Huerta Bolaños" > "numeroFicheros_$tim.txt"
echo "1207620X" >> "numeroFicheros_$tim.txt"
find . -maxdepth 5 -type f | wc -l >> "numeroFicheros_$tim.txt"
find . -maxdepth 5 -type d | wc -l >> "numeroFicheros_$tim.txt"










