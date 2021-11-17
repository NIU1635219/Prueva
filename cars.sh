#!/bin/bash

OpcioMenu()
{
	Exit=0
	
	until [ $Exit = 1 ]
	do
		clear
		
		echo "--------------------------------------------------------------"
		echo "Base de Dades de cotxes"
		echo "--------------------------------------------------------------"
		echo "	1 Llistats de cotxes."
		echo "	2 Cerca de cotxes."
		echo "	3 Comprovem si ets realment un Expert en cotxes."
		echo "	4 Altes, baixes i modidicacions de la base de dades."
		echo "	0 Sortir."
	
		read -rsn1 x 
		
		case $x in
		
			1) source Opcio-1.sh ;;
			
			2) source Opcio-2.sh ;;
			
			3) enDesenvolupament ;;
			
			4) enDesenvolupament ;;
			
			0) let Exit=1 ;;
			
			*) opcioNoValida ;;
			
		esac
		
	done
	
	clear
}

enDesenvolupament()
{
	clear
	echo "En Desenvolupament"
	read -n 1 -s -r
}

opcioNoValida()
{
	clear
	echo "Error: opcio no valida."
	sleep 1s
}

OpcioMenu
