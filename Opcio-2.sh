#!/bin/bash

Opcio-2()
{
	
	until [ $Exit = 1 ]
	do
		clear
		
		echo "--------------------------------------------------------------"
		echo "			2 - Cerca de cotxes."
		echo "--------------------------------------------------------------"
		echo "	1 Mostrar la fitxa tècnica d'un cotxe determinat."
		echo "	2 Mostrar els cotxes que tenen un mínim i màxim de potència determinada."
		echo "	3 Mostrar les mitjanes de consum per zona d'origen."
		echo "	4 Tornar."
	
		read -rsn1 x 
		
		case $x in
		
			1) source Opcio-2.1.sh ;;
			
			2) source Opcio-2.2.sh ;;
			
			3) source Opcio-2.3.sh ;;
			
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

Opcio-2
