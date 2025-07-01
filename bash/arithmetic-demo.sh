#!/bin/bash
#
# this script demonstrates doing arithmetic

# Get 3 numbers from the user
read -p "Enter the First number; " firstnum
read -p "Enter the Second number; " secondnum
read -p "Enter the Third number; " thirdnum

# Perform arithmetic
sum=$((firstnum + secondnum))
difference=$((firstnum - secondnum))
multiplied=$((firstnum * secondnum * thirdnum))
divided=$(printf "%.2f" "$(echo "scale=2; $firstnum / $secondnum" | bc)")
remainder=$((firstnum % secondnum))


# Display results
echo "The sum of $firstnum and $secondnum is $sum"
echo "The difference when $secondnum is subtracted from $firstnum is $difference"
echo "The Product of $firstnum, $secondnum, and $thirdnum is $multiplied"
echo "$firstnum divided by $secondnum is approximately $divided"
echo "The remainder when $firstnum is divided by $secondnum is $remainder"
