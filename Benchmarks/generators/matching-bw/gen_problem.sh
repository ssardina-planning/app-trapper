# $1 - dir $2 - prob no $3 - no of blocks $4 - goals

probdir=$1PFILE$2/ 
mkdir $probdir

cp $1test1/acts.pddl $probdir
cp $1test1/predicates.pddl $probdir

./obj_gen.sh $3 > "$probdir"obj.pddl

./bwstates -n $3 > temp.blocks
./gen_state -d temp.blocks -n $3 -i 1 > "$probdir"init.pddl
./gen_state -d temp.blocks -n $3 > "$probdir"G$4

rm "$probdir"graph.txt

for (( i=0; i<$4; i++ ))
do 
./bwstates -n $3 > temp.blocks
./gen_state -d temp.blocks -n $3 > "$probdir"G$i
echo "$i `expr $i + 1` G$i" >> "$probdir"graph.txt
done 

echo "$4 0 G$4" >> "$probdir"graph.txt




