#!/bin/bash

function bye {

	echo "PolyBar Cambiada con exito!" 
}

if [ $# -eq 0 ]; then
	
	echo "Introduce como único parametro el numero de la opcion que quieres: " 

	echo "1.- Bifuz configuration default polybar"
	echo "2.- S4vitar polybar to HackTheBox"
	exit 0
fi

# Este es el launch.sh
if [ $1 -eq 1 ]; then
	
	(cd ~/.config/polybar; ./my_launch.sh &>/dev/null &)
	bye
	exit 0
fi

if [ $1 -eq 2 ]; then

	(cd ~/.config/polybar; ./launch.sh &>/dev/null &)
	bye
	exit 0
fi 

echo "Numero incorrecto"
exit 1
