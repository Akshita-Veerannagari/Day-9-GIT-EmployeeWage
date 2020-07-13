#! /bin/bash

echo "Welcome to employee wage computation"
isPartTime=1
isFullTime=2
totalSalary=20
empRatePerHr=20
numWorkingDays=20
for (( day=1; day<=$numWorkingDays; day++ ))
do
        empCheck=$(( RANDOM%3 ))
        case $empCheck in
                $isFullTime) empHrs=8 ;;
                $isPartTime) empHrs=4 ;;
                *) empHrs=0 ;;
        esac

        salary=$(( $empHrs*$empRatePerHr ));
        totalSalary=$(( $totalSalary+$salary ))
done
echo "Salary of all employees in a month is $totalSalary"
