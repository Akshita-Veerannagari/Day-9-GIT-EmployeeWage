#! /bin/bash

echo "Welcome to employee wage computation"
isPartTime=1
isFullTime=2
MAX_HRS_IN_MONTH=100
empRatePerHr=20
numWorkingDays=20

totalEmpHrs=0
totalWorkingDays=0;

function getWorkingHours()
{
        case $1 in
                $isFullTime) workHrs=8 ;;
                $isPartTime) workHrs=4 ;;
                *) workHrs=0 ;;
        esac
        echo $workHrs
}


while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $numWorkingDays ]]
do
        (( totalWorkingDays++ ))
        empCheck=$(( RANDOM%3 ))
        workHours=`getWorkingHours $empCheck`
        totalEmpHrs=$(( $totalEmpHrs+$workHours ))
done
totalSalary=$(( $totalEmpHrs*$empRatePerHr ))
echo "Salary of all employees in a month is $totalSalary"
