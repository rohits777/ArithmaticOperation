echo "Welcome to Arithmatic computation program"
#!/bin/bash

read -p "Enter the first value 'a':" a
read -p "Enter the second value 'b':" b
read -p "Enter the third value 'c':" c


declare -A dictionary

x=$(( $a +$b *$c))
echo Value of expression a+b*c= $x

y=$(($a*$b+$c))
echo Value of expression a*b+c= $y

z=$(($c+$a/$b))
echo Value of expression c+a/b= $z

p=$(( $a%$b+$c ))
echo value of expression a%b+c= $p

dictionary[1]=$x
dictionary[2]=$y
dictionary[3]=$z
dictionary[4]=$p

echo Values in Dictionary: ${dictionary[@]} \keys are:${!dictionary[@]}

for((count=1; count <= 4; count++))
do
        arr[$count]=${dictionary[$count]}
done
echo "Actual Array: ${arr[@]}"
arr2=($(echo ${arr[*]} | tr " " "\n" | sort -n))

echo "Sorting in Asecending Order"
echo "Sorted Array  : ${arr2[@]}"

arr3=($(echo ${arr[*]} | tr " " "\n" | sort -nr))

echo "Sorting in Descending Order"
echo "Sorted Array  : ${arr3[@]}"
