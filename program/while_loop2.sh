count=1
while [[ $count != 5 ]]
do
sleep 5
read input
sleep 2 
echo Input is - $input
let count=$count+1
done 