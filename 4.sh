#!/bin/bash

flag=t
while [[ "$flag" == "t" ]]
do 
    echo "Please, enter two numbers to find their GCD, or enter void string to exit: "
    read num_1 num_2
    if [[ -n "$num_1" ]] && [[ -n "$num_2" ]]; then 
        remainder=1
        t1=$num_1
        t2=$num_2
        if [ $num_2 -eq 0 ]; then
        echo "GCD is $num_1"
        exit 0
        fi
        while [ $remainder -ne 0 ]
        do
        remainder=`expr $num_1 % $num_2`
        num_1=$num_2
        num_2=$remainder
        done
        echo "GCD is $num_1"
    else flag=f
    fi
done 
echo "Bye"
