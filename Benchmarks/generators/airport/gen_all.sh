#!/bin/bash

for (( i=1;i<=20;i++ ))
do
if [[ $i -lt 5 ]]
then
./gen_prob.sh ../../Airport/ P0`expr $i + 5` $i
else
./gen_prob.sh ../../Airport/ P`expr $i + 7` $i
fi
done
