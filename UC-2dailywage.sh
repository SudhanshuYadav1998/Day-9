#!/bin/bash -x
present=1
randomcheck=$((RANDOM%2))
if [ $present -eq $randomcheck ]
then
	rateperhrs=20
	hrs=8
	salary=$(($rateperhrs*$hrs))
else
	salary=0
fi

