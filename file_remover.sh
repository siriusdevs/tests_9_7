#!/bin/bash
if [[ -f $1 ]]
then
    rm $1
    echo "Файл $1 был удален"
else
    echo "Файл $1 не существует"
fi