#!/bin/bash
echo "запущен тест сумматора"
chmod +x summator.sh
test_data=summator_data
if [[ ! -f $test_data ]]
then
    echo "данные для теста не найдены"
    exit 1
fi

while read arg1 arg2 expected
do
    result=`./summator.sh $arg1 $arg2`
    if [[ $result -ne $expected ]]
    then
        echo "$arg1 + $arg2 = $result"
        echo "ожидаемое значение: $expected"
        echo "тест провален"
        exit 1
    else
        echo "$arg1 + $arg2 = $result, OK"
    fi
done < $test_data
echo "тест пройден успешно"