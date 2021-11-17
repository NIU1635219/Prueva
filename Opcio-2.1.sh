#!/bin/bash

Opcio-2.1()
{	
	clear
	X="[A-Z,a-z,0-9]*;"
	
	tail +3 cars.csv | cut -d ";" -f1 | sort -u
	echo " "
	echo "Introdueix el nom del cotxe desitjat"
	 
	read A B C D
	clear
	grep -w -i ^$A.$B.$C.$D* cars.csv | sort -t ';' -n -k8 > YYY
	
	wc -l -w YYY > xxx
	read lines world filename < xxx; i=1
	
	if [ $world -le 1 ]
	then
		echo "Error: No existeix cap cotxe amb aquest origen."
	else	
	while [ $i -le $lines ]
	do
		for x in {1..9}
		do
			head -$i YYY | tail -1 | cut -d';' -f$x > n$x
		done
		
		echo "Cotxe: `cat n1`"
		echo "MPG: `cat n2`	Nº Cilindres: `cat n3`		Cilindrada: `cat n4`"
		echo "Potència(CV): `cat n5`	Pes: `cat n6`	Acceleració (0 a 100): `cat n7`"
		echo "Model de l'any: `cat n8`		Origen: `cat n9`"
		echo ""
		
		let i+=1
		
		for x in {1..9}
		do
			rm n$x
		done
	done
	fi
	
	rm xxx
	rm YYY
	
	read -rs
}

Opcio-2.1
source Opcio-2.sh
