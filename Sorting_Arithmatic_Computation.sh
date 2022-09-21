read -p "Enter 1st number: " a
read -p "Enter 2nd number: " b
read -p "Enter 3rd number: " c
echo "Three numbers are: $a $b $c"
echo "$a + $b * $c = $(( a + b * c ))"
echo "$a * $b + $c = $(( a * b + c ))"
echo "$c + $a / $b = $(( c + a / b ))"
echo "$a % $b + $c = $(( a % b + c ))"

first_computation=$(( a + b * c ))
second_computation=$(( a * b + c ))
third_computation=$(( c + a / b ))
fourth_computation=$(( a % b + c ))
echo "$a + $b * $c = $first_computation"
echo "$a * $b + $c = $second_computation"
echo "$c + $a / $b = $third_computation"
echo "$a % $b + $c = $fourth_computation"

declare -A dictionary
declare -a array

dictionary[first_computation]=$first_computation
dictionary[second_computation]=$second_computation
dictionary[third_computation]=$third_computation
dictionary[fourth_computation]=$fourth_computation

index=0
for computation in ${!dictionary[@]}
do 
    echo "$computation = ${dictionary[$computation]}"
    array[index++]=${dictionary[$computation]}
done
echo ${array[@]}

size=${#array[@]}
for(( i = 0; i < size - 1; i++ ))
do
    swapped=0
    for(( j = 0; j < size - i - 1; j++))
    do
        if((array[j] < array[j+1]))
        then
            temp=${array[j]}
            array[j]=${array[j+1]}
            array[j+1]=$temp
            swapped=1
        fi
    done
    if((swapped==0))
    then
        break
    fi
done

echo "Results sorted in descending order: "
echo ${array[@]}
