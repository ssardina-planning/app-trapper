#!/bin/bash
# $1 - dir $2 - prob no $3 - rows $4 - columns

probdir=$1PFILE$2/
mkdir $probdir
probdir2=$1PFILE$2-x/
mkdir $probdir2

if [[ $3 -eq 5 ]]
then

cp $1test2/*.pddl $probdir
cp $1test2/*.pddl $probdir2

else

cp $1test1/*.pddl $probdir
cp $1test1/*.pddl $probdir2

fi
k=0
for (( i=1;i<$3;i++ ))
do
for (( j=1;j<=$4;j++ ))
do

tile[$k]="tile_$i-$j"
k=`expr $k + 1` 

done
done

for ((j=1; j<100; j++))
do
pos=$((RANDOM%($k-1)+1))
tmp=${tile[$pos]}
tile[$pos]=${tile[`expr $pos - 1`]}
tile[`expr $pos - 1`]=$tmp
done 

color[0]="white"
color[1]="black"


rm "$probdir"graph.txt
rm "$probdir2"graph.txt

for (( i=0;i<$k;i++))
do
echo "(painted ${tile[$i]} ${color[$((RANDOM%2))]})" > "$probdir"G$i
echo "$i `expr $i + 1` G$i" >> "$probdir"graph.txt
done


j=0
for i in $(seq 0 2 `expr $k + $k - 2`)
do 

echo "(painted ${tile[$j]} white)" > "$probdir2"G$i
echo "(painted ${tile[$j]} black)" > "$probdir2"G`expr $i + 1`

if [[ $i -ne 0 ]]
then
echo "`expr $i - 1` `expr $i + 1` G$i" >> "$probdir2"graph.txt
echo "`expr $i - 1` `expr $i + 2` G`expr $i + 1`" >> "$probdir2"graph.txt
fi

echo "$i `expr $i + 1` G$i" >> "$probdir2"graph.txt
echo "$i `expr $i + 2` G`expr $i + 1`" >> "$probdir2"graph.txt

j=`expr $j + 1`
done
