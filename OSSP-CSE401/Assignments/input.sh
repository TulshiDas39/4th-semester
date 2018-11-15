#!/bin/bash
i=0
while read Line
do

	echo $Line
	j=0
	 for a in $Line
	   do 
		if [ $j -eq 0 ] ; 
		  then
			idno[ $i ]=$a
			echo "id no=${idno[$i]}"
    		  fi
    		  
    		 if [ $j -eq 8 ] ;
		  then
			time[ $i ]=$a
			echo "time= ${time[$i]}"
    		  fi
    		  
	   	let "j+=1"
	   done
	echo;
	let "i+=1"
	echo "Line:$i"
    
done
ki=5

echo "After all"
sed "${ki}q;d" t.txt
m=2
n=3

echo "the final word is"
var=$(awk -v line="$m" -v field="$n" 'NR==line{print $field}' t.txt)


exit 0

