#!/bin/bash

Opcio-1.1()
{
	clear
	tail +3 cars.csv | sort > YYY
	
	wc -l YYY > xxx
	read lines filename < xxx; i=1
	
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
	
	rm xxx
	rm YYY
	
	read -rs
}

Opcio-1.1
source Opcio-1.sh
