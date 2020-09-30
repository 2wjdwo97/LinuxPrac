#!/bin/sh

row=$1
column=$2

if [ $row -lt 1 ] || [ $column -lt 1 ]
then
    echo "parameters must be over 0"
    exit 1
fi

for i in $(seq 1 $row)
do
    for j in $(seq 1 $column)
    do
        result=`expr $i \* $j`
        printf "$i*$j=$result "
    done
    printf "\n"
done

exit 0
