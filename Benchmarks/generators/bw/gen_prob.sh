# $1 - dir $2 - prob no $3 - no of blocks 

nxt=`expr $2 + 1`
probdir=$1PFILE$2/
probdir2=$1PFILE$nxt/ 
mkdir $probdir
mkdir $probdir2

cp $1test1/acts.pddl $probdir
cp $1test1/predicates.pddl $probdir
cp $1test1/acts.pddl $probdir2
cp $1test1/predicates.pddl $probdir2


./obj_gen.sh $3 > "$probdir"obj.pddl
./obj_gen.sh $3 > "$probdir2"obj.pddl

./bwstates -n $3 > temp.blocks
./gen_init -d temp.blocks -n $3 > "$probdir"init.pddl
cp "$probdir"init.pddl "$probdir2"init.pddl

t=`expr $3 - 1`
s=( `seq $t` )

for ((j=1; j<1000; j++))
do
pos=$((RANDOM%($t-1)+1))
tmp=${s[$pos]}
s[$pos]=${s[`expr $pos - 1`]}
s[`expr $pos - 1`]=$tmp
done 

rm "$probdir"graph.txt
rm "$probdir2"graph.txt

for (( i=1; i<$3; i++ ))
do
echo "(on b`expr $3 - $i` b`expr $3 - $i + 1`)" > "$probdir"G$i
echo "(on b`expr $3 - $i` b`expr $3 - $i + 1`)" > "$probdir2"G$i

echo "`expr $i - 1` $i G$i" >> "$probdir"graph.txt
echo "`expr $i - 1` $i G${s[`expr $i - 1`]}" >> "$probdir2"graph.txt
done


