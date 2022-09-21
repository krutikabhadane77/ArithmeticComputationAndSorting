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
dictionary[first_computation]=$first_computation
dictionary[second_computation]=$second_computation
dictionary[third_computation]=$third_computation
dictionary[fourth_computation]=$fourth_computation

for computation in ${!dictionary[@]}
do 
    echo "$computation = ${dictionary[$computation]}"
done
