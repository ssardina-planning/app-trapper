echo "(define (problem matching-bw-typed-n$1)"
echo "(:domain matching-bw-typed)"
echo "(:objects h1 h2 - hand "
q=""
for (( i=1; i<=$1; i++)) 
do 
q=`echo "$q b$i "`
done; 
echo $q" - block)"

