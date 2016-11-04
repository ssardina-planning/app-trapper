echo "(define (problem bw-typed-n$1)"
echo "(:domain blocksworld)"
echo "(:objects "
q=""
for (( i=1; i<=$1; i++)) 
do 
q=`echo "$q b$i "`
done; 
echo $q" - block)"

