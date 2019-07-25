
#!/bin/bash

nombres=( {A..H} )
Ti=( 0 2 5 8 10 12 13 15 )
Te=( 4 3 2 4 3 1 5 3 )


declare -a Tfinalizacion
declare -a Tretorno
declare -a Tespera

let sum=0;
#sum=${Ti[*]}

#echo ${nombres[*]}

#tiempo fin
let "fin = ${#Ti[*]}";
until [[ $i -eq  $fin ]] ; do

	let " sum=$sum + ${Te[$i]}"
	Tfinalizacion[$i]=$sum;
	let " i=$i+1 " ;
done

echo ${Tfinalizacion[*]}

i=0

let "fin = ${#Ti[*]}";
until [[ $i -eq  $fin ]] ; do

	let "sum=${Tfinalizacion[$i]}-${Ti[$i]}";
	Tretorno[$i]=$sum
	let " i=$i+1 " ;
	
done
echo ${Tretorno[*]}


i=0

let "fin = ${#Ti[*]}";
until [[ $i -eq  $fin ]] ; do

	let "sum=${Tretorno[$i]}-${Te[$i]}";
	Tespera[$i]=$sum
	let " i=$i+1 " ;
	
done
echo ${Tespera[*]}



echo "fin"
