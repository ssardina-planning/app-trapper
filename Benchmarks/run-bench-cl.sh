#!/bin/bash

# $1 - dir; $2 - runs; $3 - planner

#case $3 in
#  "trap") run="trap";;
#  "dfs_trap") run="dfs_trap";;
#  "lmcut") run="no_trap";;
#  "dfs") run="dfs_no_trap";;
#  "lpg") run="lpg";;
#        *) run=""; echo "No planner specified";exit 1;;
#esac

echo "pfile;runs;succ;fail" > $1-cl.csv

for d in `ls $1/*/ -d`
do

succ=0
fail=0

for (( i=1; i<=$2; i++ ))
do

cd $d
../../../PP-LPG/pp-lpg obj.pddl init.pddl predicates.pddl acts.pddl graph.txt $i

if [ $? -eq 1 ]
then
succ=`expr $succ + 1`
else
fail=`expr $fail + 1`
fi

cd ../..

done

echo "$d;$2;$succ;$fail" >> $1-cl.csv

done


 
