#!/bin/bash

result=$(ls -a1 Lab1/ | wc -l)

if (( $result > 5 )); then
    echo "Failure. There is an extra file or folder present in Lab1/."
    exit -1
fi

echo "Lab1/ directory count correct."

result=$(ls -a1 Lab1/Challenge1/ | wc -l)
if (( $result > 3 )); then
    echo "Failure. There is an extra file or folder present in Lab1/Challenge1."
    exit -1
fi

echo "Lab1/Challenge1/ file count correct."

result=$(ls -a1 Lab1/Challenge2/ | wc -l)
if (( $result > 3 )); then
    echo "Failure. There is an extra file or folder present in Lab1/Challenge2."
    exit -1
fi

echo "Lab1/Challenge2/ file count correct."

ndirs=$(ls -a1 Lab1/ | wc -l)
if (( $ndirs == 5 )); then
	echo "Lab1/Bonus/ directory found."
    result=$(ls -a1 Lab1/Bonus/ | wc -l)
    if (( $result > 3 )); then
        echo "Failure. There is an extra file or folder present in Lab1/Bonus."
        exit -1
    fi
	echo "Lab1/Bonus/ file count correct."
fi

echo "All files correctly counted."

exit 0
