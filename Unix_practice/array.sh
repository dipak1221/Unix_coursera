arr=(1 2 3 4 5 6 7 8)

for i in ${arr[*]}
do
echo $i
done

echo ${#arr[*]}
