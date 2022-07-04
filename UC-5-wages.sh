#!/bin/bash -x

isPartTime=1
isFullTime=2
totalSalary=0
empRateperHr=20
numOfWorkingDays=20

for (( day=1; day<=$numOfWorkingDays; day++ ))
do
		Randomcheck=$(($RANDOM%3))
		case $Randomcheck in
				$isFullTime )
				emphrs=8
				;;
				$isPartTime )
				emphrs=4
				;;
				*)
				emphrs=0
				;;
		esac
		salary=$(($emphrs*$empRateperHr))
		totalSalary=$(($totalSalary+$salary))
done
