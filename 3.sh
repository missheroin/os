#!/bin/bash

name=1
age=1
while [[ "$name" != '0' ]] && [[ -n "$name" ]] && [[ "$age" != '0' ]] && [[ "$age" != '' ]] 
do 
    read -p "Please, write your name: " name
    if [[ "$name" == '0' ]] || [[ "$name" == "" ]] 
    then echo "You write incoored data. Try again later."
    echo "Bye"
    break
    fi
    read -p  "Please, write your age: " age

    if [[ "$age" == '' ]] || [[ "$age" -eq '0' ]]
    then echo "You write incorred data. Try again later."
    echo "Bye"
    break
    fi
    if [[ "$age" -le 16 ]];
        then group="childe"
    fi

    if [[ "$age" -gt 17 ]] && [[ "$age" -le 25 ]];
        then group="youth"
    fi

    if [[ "$age" -gt 25 ]];
        then group="adult"   
    fi 
    echo "Hello $name, your group is: $group"

done