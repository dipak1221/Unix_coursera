#read var1
#read var2
#read var3

#if [ $var1 -eq $var2 ] && [ $var3 -eq $var2  ];
#then
#echo "EQUILATERAL";
#elif [ $var1 -eq $var2 ] || [ $var3 -eq $var2 ] || [ $var3 -eq $var1 ];
#then
#echo "ISOSCELES";
#else
#echo "SCALENE";
#fi


#=====================================================

#5+50*3/20 + (19*2)/7
#read var
#printf "%.3f" $(echo $var | bc -l)

#======================================================

#if ([[  4 -lt 6 ]]);
#then 
#echo "inside if"
#else
#echo "inside else"
#fi


#======================================================



#!/usr/bin/env bash
# File: nested.sh

# if [[ $1 -gt 3 ]] && [[ $1 -lt 7 ]]
# then
# if [[ $1 -eq 4 ]]
# then
# echo "four"
# elif [[ $1 -eq 5 ]]
# then
# echo "five"
# else
# echo "six"
# fi
# else
# echo "You entered: $1, not what I was looking for."
# fi

#======================================================
#program - Write a Bash script that takes a string as an argument and prints “how proper” if the string starts with a capital letter.

# read var
# if [[ $var =~ ^[A-Z] ]]
# then
# echo "how proper"
# else
# echo "Not proper"
# fi

#======================================================
# Write a Bash script that takes one argument and prints “even” if the first argument is an even number or “odd” if the first argument is an odd number.


# var=$(echo $1%2 | bc)
# if [[ $var == 0 ]]
# then 
# echo "EVEN"
# else 
# echo "ODD"
# fi


#======================================================
# Write a Bash script that takes two arguments. If both arguments are numbers, print their sum, otherwise just print both arguments.

# read a 
# read b 

# if [[ $a =~ [0-9] ]] && [[ $a =~ [a-zA-Z] ]] && [[ $b =~ [0-9] ]] && [[ $b =~ [a-zA-Z] ]];
# then 
# echo "both are not number"
# elif [[ $a =~ [0-9] ]] && [[ ! $a =~ [a-zA-Z] ]] && [[ $b =~ [0-9] ]] && [[ ! $b =~ [a-zA-Z] ]];
# then
# echo "both are number $(echo $a+$b | bc -l )"
# else 
# echo "both are not number"
# fi


#======================================================
# Write a Bash script that prints “Thank Moses it’s Friday” if today is Friday. (Hint: take a look at the date program).


weekDate=$(date +%A)
if [[ $(echo $weekDate | grep -Pi "monday") ]]
then
echo "today is monday"
else 
echo "not a friday"
fi