#!/bin/bash
# $1 - dir $2 - prob no $3 - problem file 

woodgoal()
{
g=`grep "(wood $2" "$probdir"init.pddl`
if [[ -z $g ]]
then
pos=$((RANDOM%${#wood[@]}))
echo "(wood $2 ${wood[$pos]})" > $1
else
echo $g > $1
fi
}

colorgoal()
{
pos=$((RANDOM%${#color[@]}))
echo "(colour $2 ${color[$pos]})" > $1
}

treatgoal()
{
pos=$((RANDOM%${#treat[@]}))
echo "(treatment $2 ${treat[$pos]})" > $1
}


dispatch()
{
case $3 in
  0) woodgoal $1 $2 ;;
  1) colorgoal $1 $2 ;;
  2) treatgoal $1 $2 ;;
  *) echo "dipatch error" ;;
esac
}

treat=( 'varnished' 'glazed' )

probdir=$1PFILE$2/ 
mkdir $probdir

cp $1test1/acts.pddl $probdir
cp $1test1/predicates.pddl $probdir

il=`grep -n '(:init' $3 | grep -o "[0-9]*"`
gl=`grep -n '(:goal' $3 | grep -o "[0-9]*"`

cat $3 | sed -n "1,`expr $il - 1` p" > "$probdir"obj.pddl
cat $3 | sed -n "`expr $il + 1`,`expr $gl - 2` p" > "$probdir"init.pddl

wood=( `grep 'awood' "$probdir"obj.pddl | sed 's/\- awood//g'` )
color=( `grep 'acolour' "$probdir"obj.pddl | sed 's/\- acolour//g'` )
parts=`grep '\- part' "$probdir"obj.pddl | sed 's/\- part//g'`

#echo ${wood[1]} ${#wood[@]}
#echo ${color[0]} ${#color[@]}
#echo ${parts[1]} ${#parts[@]}

#woodgoal G0 p1

#if [[ -z `grep '(wood' init.pddl` ]]; then echo "no"; fi

rm "$probdir"graph.txt
node=0
goalno=0
for part in $parts
do 

for (( i=1;i<=3;i++ ))
do 
#echo $part - $i
rnd=$((RANDOM%3))
dispatch "$probdir"G$goalno $part $rnd
echo $node `expr $node + $i` G$goalno >> "$probdir"graph.txt
goalno=`expr $goalno + 1`
rnd2=$((RANDOM%3))
while [[ $rnd -eq $rnd2 ]]
do
rnd2=$((RANDOM%3))
done
dispatch "$probdir"G$goalno $part $rnd2
echo `expr $node + $i` `expr $node + 4` G$goalno >> "$probdir"graph.txt
#echo "(available $part)" >> "$probdir"G$goalno
goalno=`expr $goalno + 1`

done

node=`expr $node + 4`

done

