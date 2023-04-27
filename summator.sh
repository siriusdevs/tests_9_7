#!/bin/bash
if [[ -n $1 && -n $2 ]]
then
    echo $(($1 + $2))
else
    echo "скрипт ожидает два аргумента"
    exit 1
fi