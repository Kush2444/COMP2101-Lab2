#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls, sum, and average

sides=6
min=1

echo "Rolling the dice..."

die1=$(( RANDOM % sides + min ))
die2=$(( RANDOM % sides + min ))

sum=$(( die1 + die2 ))
average=$(echo "scale=2; $sum / 2" | bc)

echo "You rolled: $die1 and $die2"
echo "The sum of the die is: $sum"
echo "The average of the die is: $average"
