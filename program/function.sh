# function add {
#     read input
#     echo " Hii !! i am in a add function"
#     echo "input was $input"
# }

# add
# add 
# add

# ==============================================================
# function addseq {
#     sum=0
#     for i in $@ 
#     do
#     let sum=$sum+$i
#     done

#     echo $sum
# }

# addseq 1 2 3 4 5 
# variable 'sum' is globally accessible means if we echo $sum , echo $i in shell it will give the value of function executed

# But due to this 'sum' variable will override the value which is set in shell 
# so to overcome this use 'local' keyword in function while assigning a variable due to this shell values will not get effected 


# =============================================================
# function addseq {
#     local sum=0
#     for i in $@ 
#     do
#     let sum=$sum+$i
#     done

#     echo $sum
# }

# dipak@dipak-PC:~/Desktop/Unix_course/program$ source function.sh 
# dipak@dipak-PC:~/Desktop/Unix_course/program$ echo $sum
# 21
# dipak@dipak-PC:~/Desktop/Unix_course/program$ addseq 5 100
# 105
# dipak@dipak-PC:~/Desktop/Unix_course/program$ echo $sum
# 21
# dipak@dipak-PC:~/Desktop/Unix_course/program$ 
# dipak@dipak-PC:~/Desktop/Unix_course/program$ source function.sh 
# dipak@dipak-PC:~/Desktop/Unix_course/program$ echo $sum
# 21
# dipak@dipak-PC:~/Desktop/Unix_course/program$ addseq 5 100
# 105
# dipak@dipak-PC:~/Desktop/Unix_course/program$ echo $sum
# 21
# dipak@dipak-PC:~/Desktop/Unix_course/program$ 



# Write a function called plier which multiplies together a sequence of numbers.

# function plier {
#     local mul=1

#     for i in $@
#     do
#     let mul=$mul*$i
#     done
#     echo $mul
# }
# ipak@dipak-PC:~/Desktop/Unix_course/program$ source function.sh 
# dipak@dipak-PC:~/Desktop/Unix_course/program$ multi=$(plier 3 4 5)
# dipak@dipak-PC:~/Desktop/Unix_course/program$ echo $multi
# 60
# dipak@dipak-PC:~/Desktop/Unix_course/program$ 




# Write a function called isiteven that prints 1 if a number is even or 0 a number is not even.

# function even_odd {
#     if [ $(echo $1%2 | bc) == 0 ]
#     then
#     echo "even"
#     else 
#     echo "odd"
#     fi
# }
# ipak@dipak-PC:~/Desktop/Unix_course/program$ source function.sh 
# dipak@dipak-PC:~/Desktop/Unix_course/program$ ans=$(even_odd 45)
# dipak@dipak-PC:~/Desktop/Unix_course/program$ echo $ans
# odd
# dipak@dipak-PC:~/Desktop/Unix_course/program$ ans=$(even_odd 0)
# dipak@dipak-PC:~/Desktop/Unix_course/program$ echo $ans
# even
# dipak@dipak-PC:~/Desktop/Unix_course/program$ ans=$(even_odd 10)
# dipak@dipak-PC:~/Desktop/Unix_course/program$ echo $ans
# even
# dipak@dipak-PC:~/Desktop/Unix_course/program$




# Write a function called nevens which prints the number of even numbers when provided with a sequence of numbers. Use isiteven when writing this function.

# function even_odd {
#     for i in $@
#     do
#     if [ $(echo $i%2 | bc) == 0 ]
#     then
#     echo "even"
#     else 
#     echo "odd"
#     fi

#     done
# }
# dipak@dipak-PC:~/Desktop/Unix_course/program$ source function.sh 
# dipak@dipak-PC:~/Desktop/Unix_course/program$ ans=$(even_odd 10 5 6 20)
# dipak@dipak-PC:~/Desktop/Unix_course/program$ echo $ans
# even odd even even
# dipak@dipak-PC:~/Desktop/Unix_course/program$ 




# Write a function called howodd which prints the percentage of odd numbers in a sequence of numbers. Use nevens when writing this function.

# function even_odd {
#     local count=0
#     for i in $@
#     do
#     if [ $(echo $i%2 | bc) == 1 ]
#     then
#     let count=$count+1
    
#     fi

#     done
#     ans=$(echo $count*100/$# | bc -l)
#     printf "%0.2f" $ans
# }

# dipak@dipak-PC:~/Desktop/Unix_course/program$ source function.sh 
# dipak@dipak-PC:~/Desktop/Unix_course/program$ ans=$(even_odd 10 5 6 20)
# dipak@dipak-PC:~/Desktop/Unix_course/program$ echo $ans
# 25.00
# dipak@dipak-PC:~/Desktop/Unix_course/program$ ans=$(even_odd 10 5 69 20 33 1)
# dipak@dipak-PC:~/Desktop/Unix_course/program$ echo $ans
# 66.67
# dipak@dipak-PC:~/Desktop/Unix_course/program$ 




# Write a function called fib which prints the number of fibonacci numbers specified.

function fibo {
    local a=0
    local b=1
    # echo "$a $b"
    arr=($a $b)
    for i in $(seq 3 $1)
    do 

    let c=$(echo $a+$b | bc )
    # echo "$c" 
    arr=("${arr[@]}" $c)
    # arr+=($c)  this also works
    let a=$b
    let b=$c 

    done 
    echo ${arr[*]}
}

# dipak@dipak-PC:~/Desktop/Unix_course/program$ source function.sh 
# dipak@dipak-PC:~/Desktop/Unix_course/program$ fibo 10
# 0 1 1 2 3 5 8 13 21 34
# dipak@dipak-PC:~/Desktop/Unix_course/program$ source function.sh 
# dipak@dipak-PC:~/Desktop/Unix_course/program$ fibo 10
# 0 1 1 2 3 5 8 13 21 34
# dipak@dipak-PC:~/Desktop/Unix_course/program$ 


