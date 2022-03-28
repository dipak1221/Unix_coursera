#bash program 1

echo $@
var1=$1
var2=$2
var3=$(echo $var1+$var2 | bc)
echo $var3
echo "multiplying = $(echo $var1*$var2 | bc)"

echo "Number of argument are $#"
