#!/bin/bash

Opcio-1()
{
	
	until [ $Exit = 1 ]
	do
		clear
		
		echo "--------------------------------------------------------------"
		echo "			1 - Llistats de cotxes."
		echo "--------------------------------------------------------------"
		echo "	1 Mostrar llistat de cotxes (alfabètic per nom)."
		echo "	2 Mostrar llistat de cotxes ordenat de menys a més consum (MPG - Miles Per Gallon)."
		echo "	3 Mostrar llistat de cotxes ordenat més acceleració a menys."
		echo "	4 Tornar."
	
		read -rsn1 x 
		
		case $x in
		
			1) source Opcio-1.1.sh ;;
			
			2) source Opcio-1.2.sh ;;
			
			3) source Opcio-1.3.sh ;;
			
			4) source cars.sh ;;
			
			*) opcioNoValida ;;
			
		esac
		
	done

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

Opcio-1
