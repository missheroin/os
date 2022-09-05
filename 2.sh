#!/bin/bash

read num

if [[ $num -eq 0 ]] 
then
echo "No students"
elif [[ $num -eq 1 ]]
then
echo "1 student"
elif [[ $num -eq 2 ]]
then
echo "2 students"
elif [[ $num -eq 3 ]]
then
echo "3 students"
elif [[ $num -eq 4 ]]
then
echo "4 students"
elif [[ $num -ge 5 ]]
then
echo "A lot of students"
elif [[ $num -lt 0 ]]
then
echo "Incorrect data"
fi
