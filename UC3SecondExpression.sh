echo "Welcome to Arithmatic computation program"
#!/bin/bash

read -p "Enter the first value 'a':" a
read -p "Enter the second value 'b':" b
read -p "Enter the third value 'c':" c

x=$(( $a +$b *$c))
echo Value of expression a+b*c= $x

y=$(($a*$b+$c))
echo Value of expression a*b+c= $y
