# count=1
# while [[ $count -lt 10 ]]
# do
# echo $count
# let count=$count+1
# done 



# ===========================================================
# Write serval programs with three levels of nesting and include FOR loops, WHILE loops, and IF statements. Before you run your program try to predict what your program is going to print. If the result is different from your prediction try to figure out why.

# for i in {1..10}
# do
# # echo "starting while loop..."
# # while [[ $i -lt 8 ]]
# # do
#     if [ $(echo "$i%2" | bc) == 1 ] 
#     then
#         echo "even no $i"
#     fi
# # done 
# # echo "ending while loop..."
# done 



# ===========================================================

# count=1

# while [[ $count -lt 10 ]]
# do
# echo "running..."
# let count=$count-1
# done




# ===========================================================

# while read input
# do
# echo $input
#  if [[ "$input" == "" ]]
#  then 
#  break
#  fi
# done


# ===========================================================
# Enter the yes command into the console, then stop the program from running. Take a look at the man page for yes to learn more about the program.

echo "Enter your response  - "
sleep 5;
read input 
sleep 5;
if [[ "$input" == "y" ]] || [[ "$input" == "yes" ]]
then
sleep 5;
echo "enter reponse is positive $input"
sleep 5;
elif [[ "$input" == "no" ]]
then 
sleep 5;
echo "Enter response is negative"
sleep 5;
else 
sleep 5;
echo "no response"
sleep 5;
fi


