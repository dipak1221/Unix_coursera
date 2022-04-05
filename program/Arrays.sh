# arr=(1 2 3 4 5 6 Array stored different element)
# echo ${#arr[*]}
# arr+=(this is new array lets see what happen)
# echo ${arr[*]:40:56}


# ========================================================
# Write a bash script where you define an array inside of the script, and the first argument for the script indicates the index of the array element that is printed to the console when the script is run.

# arr=(1 2 3 4 5 6 Array stored different element)
# echo ${arr[$1]}


# ========================================================
# Write a bash script where you define two arrays inside of the script, and the sum of the lengths of the arrays are printed to the console when the script is run.

arr1=(1 2 3 4 5 Array stored different element)
arr2=(this is new one)

echo ${#arr1[*]}*${#arr2[*]} | bc -l 