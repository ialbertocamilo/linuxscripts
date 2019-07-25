 
#!/bin/sh

Q=(3 14 7 23 35 25 17 19 41 28 33 5 12 15 22)

q=16

aux=0
dist=0

for ((i=0 ; i<${#Q[*]};i++));do

	if [[ ${Q[$i]} -gt $q ]] && [[  $dist -lt $aux ]] then

		dist=$((${Q[$i]}-$q))
		aux=$i
	fi	
done

echo $i