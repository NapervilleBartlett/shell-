#!/bin/bash

# Usage health.sh date

echo "1=$1="


echo "####  Looking for reset  \\n"
grep -i reset $1/*/*CONSOLE*/* | grep -i reason


echo ""
echo ""
echo ""
echo "####  Looking for exception  "
grep -i exception $1/*/*CONSOLE*/*



echo ""
echo ""
echo ""
echo "####  Looking for additional  "
egrep -i "unassigned|additional" $1/*/*CONSOLE*/*


