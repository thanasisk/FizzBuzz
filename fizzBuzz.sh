#!/bin/bash
for i in {1..100}
do
   v=""
   if [ $[$i % 3] == 0 ]; then v=${v}fizz; fi
   if [ $[$i % 5] == 0 ]; then v=${v}buzz; fi
   if [ "$v" == "" ]; then 
	echo $i; 
   else 
	echo $v; fi
done


