# braces expansion {1..10}

# for i in {1..10}
# do
# echo "This is index $i"
# done


# Arrays

# arr=(This is an array of string)

# for i in ${arr[*]}
# do
# echo "element is $i"
# done


#list of values

# for i in Hi i am bash programming
# do 
# echo "element is $i"
# done



#commands substitution

# count=1
# for i in $(ls)
# do
# echo "$count st is $i"
# count=$(echo $count+1 | bc)
# done


# C style for-loop

# for ((i=1 ; i<=10; i++))
# do
# echo $i*10 | bc
# done


# rename a file having space with underscore

# for file1 in *\ *; do
# echo ${file1// /_}
#   mv "$file1" "${file1// /_}" #this is shell parameter expansion
# done



# 
# arr=('this is new ' thing "which is discovered")
# # echo ${arr[2]}
# # echo "${arr[@]}"
# # echo {{2..6},f}
# for i in "${arr[@]}"
# do 
# echo "${i//t/T}" # replace t with T
# echo "${i//this/This}" #replace "this" with "This"
# done



# replace file extension from txt to sh

for file in file*.sh;
do 
mv "$file" "${file%.sh}.txt"
done