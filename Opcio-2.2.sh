Opcio-2.2()
{	
	clear
	X="[A-Z,a-z,0-9]*;"
	echo "Introdueix el numero minim de cavalls"
	read A
	echo "Introdueix el numero maxim de cavalls"
	read B
	
	clear
	
	wc -l cars.csv > xxx
	read lines filename < xxx; i=3
	
	while [ $i -le $lines ]
	do
	n1=`head -$i cars.csv | tail -1 | cut -d ';' -f5`
	if [[ $(bc <<< "$n1 > $A") -eq 1 ]]
	then
		if [[ $(bc <<< "$n1 < $B") -eq 1 ]]
		then
			head -$i cars.csv | tail -1 >> YYY1
		fi
	fi
	
	let i+=1
	done
	
	sort -t ";" -g -k5 YYY1 > YYY2
	
	wc -l -w YYY2 > xxx
	read lines world filename < xxx; i=1
	if [ $world -gt 1 ]
	then
		echo "Error. No s'ha trobat cap cotxe en el interval [$A - $B]"
	else
	while [ $i -le $lines ]
	do
		for x in {1..9}
		do
			head -$i YYY2 | tail -1 | cut -d';' -f$x > n$x
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
	rm YYY1
	rm YYY2
	
	read -rs
}

Opcio-2.2
source Opcio-2.sh
