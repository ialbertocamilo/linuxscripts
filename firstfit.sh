 #!/bin/sh

mem=( 25 17 42 30 27 18 21 32 25 19 51 17 )

procesos=("P1" "P2" "P3" "P4" "P5" "P6")
req=(25 19 22 5 15 12)

aux=0;
declare -a nuevo=( {1..12})

for ((i=0;i<${#procesos[*]};i++)) ;do


	for ((y=$aux;y<${#mem[*]}-$aux;y++));do

	if [[ ${req[$i]} -le ${mem[$y]} ]] ;then
		mem[$y]=${procesos[$i]};
		let "aux=$y";
		break;
	fi
	done

done

echo ${mem[*]}