#!/bin/bash
# $1 dir $2 - prob name $3 - prob no

probdir=$1PFILE$3/ 
mkdir $probdir

pfile=`ls probs/$2_AIR*`
pdom="probs/$2_DOMAIN.PDDL"

acpos=( `grep -n -m 1 '(:action' $pdom | grep -o -m 1 "[0-9]*"` )
acpos=${acpos[0]}
domlines=( `wc -l $pdom | grep -o -m 1 "[0-9]*"` )
domlines=${domlines[0]}

problines=( `wc -l $pfile | grep -o -m 1 "[0-9]*"` )
problines=${problines[0]}


il=`grep -n '(:init' $pfile | grep -o "[0-9]*"`
gl=`grep -n '(:goal' $pfile | grep -o "[0-9]*"`

#echo $acpos - $domlines

cat $pdom | sed -n "1,`expr $acpos - 3` p" > "$probdir"predicates.pddl
cat $pdom | sed -n "$acpos,`expr $domlines - 1` p" > "$probdir"acts.pddl

cat $pfile | sed -n "1,`expr $il - 1` p" > "$probdir"obj.pddl
cat $pfile | sed -n "`expr $il + 1`,`expr $gl - 3` p" > "$probdir"init.pddl

tmp=`expr $gl + 2`

goalsstr=`cat $pfile | sed -n "$tmp,$problines p" | grep '(' `

posin=`expr index "$goalsstr" '\)'`
i=0
while [[ $posin -ne 0 ]]
do
goals[$i]=${goalsstr:0:$posin}
goalsstr=${goalsstr:$posin}
#echo $goalsstr
i=`expr $i + 1`
posin=`expr index "$goalsstr" '\)'`
done

for ((j=1; j<100; j++))
do
pos=$((RANDOM%(${#goals[@]}-1)+1))
tmp=${goals[$pos]}
goals[$pos]=${goals[`expr $pos - 1`]}
goals[`expr $pos - 1`]=$tmp
done 

rm "$probdir"graph.txt

for (( i=0; i<${#goals[@]}; i++ ))
do
echo ${goals[$i]} > "$probdir"G$i

echo "$i `expr $i + 1` G$i" >> "$probdir"graph.txt
done
#echo $goals
#echo ${goals[1]} ${#goals[@]}
