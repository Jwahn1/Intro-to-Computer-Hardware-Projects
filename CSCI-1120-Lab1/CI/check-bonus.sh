#!/bin/bash

# exit early if bonus not present
test='[ -d Lab1/Bonus ]'
if $test; then
    echo "Evaluating Bonus"
else 
	echo "Bonus not present."
	exit 0 
fi

cd Task1
results=$(../Lab1/Bonus/command.sh)
echo "Result from user script:"
echo "$results"

if [ "$results" == $'never\ngonna\ngive\nyou\nup' ]; then
    echo "Bonus tested correct"
    exit 0
else
    echo "Bonus incorrect"
    exit -1
fi
