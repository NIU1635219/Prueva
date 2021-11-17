#!/bin/bash

Opcio-2.3()
{	
	clear
	X="[A-Z,a-z,0-9]*;"
	
	tail +3 cars.csv | cut -d ";" -f9 | sort -u
	echo " "
	echo "Introdueix una zona de origen"
	
	read A
	clear
	
	tail +3 cars.csv | cut -d ";" -f2 > n1
	tail +3 cars.csv | cut -d ";" -f9 > n2
	paste n1 n2 | grep -i $A | cut -d "	" -f1 > YYY
	
	rm n1
	rm n2
	
	wc -l -w YYY > xxx
	read lines world filename < xxx; i=1
	
	sum=0
	num=0
	
	if [ $world -ge 1 ]
	then
		while [ $i -le $lines ]
		do
			num="`head -$i YYY | tail -1`"
			
			sum=$(bc <<< "scale=4; $num+$sum")
			
			let i+=1
		done
	
		mitja=$(bc <<< "scale=4; $sum / $i")
	
		echo "La mitjana del consum (MPG) dels cotxes amb aquesta zona d'origen es: $mitja"
	else	
		echo "Error: No existeix cap cotxe amb aquest nom."
	fi
	
	rm xxx
	rm YYY
	
	read -rs
}

Opcio-2.3
source Opcio-2.sh
