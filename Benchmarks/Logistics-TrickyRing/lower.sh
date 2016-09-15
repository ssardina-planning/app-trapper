for p in `ls */*.pddl`
do

mv $p $p.tmp

echo "$p"

cat $p.tmp | tr '[:upper:]' '[:lower:]' > $p
rm $p.tmp

done
