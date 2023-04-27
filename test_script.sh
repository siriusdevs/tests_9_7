#!/bin/bash
value=100
echo "запущен тест вывода script.sh"
chmod +x script.sh
result=`echo $value | ./script.sh`
expected="ваш текст: 100"
if [[ $result == $expected ]]
then
    echo "тест пройден успешно"
    exit 0
else
    echo "тест провален"
    exit 1
fi