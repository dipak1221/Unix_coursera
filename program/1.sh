read input
sum=0
while [[ $input -gt 0 ]]
do
read n 
let sum=$sum+n
done

echo sum