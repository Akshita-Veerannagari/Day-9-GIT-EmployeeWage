#! /bin/bash

echo "Welcome to employee wage computation"
isPartTime=1
isFullTime=2
empRatePerHr=20
empCheck=$(( RANDOM%3 ))
case $empCheck in
        $isFullTime) empHrs=8 ;;
        $isPartTime) empHrs=4 ;;
        *) empHrs=0 ;;
esac

salary=$(( $empHrs*$empRatePerHr ));
echo "Salary of the employee is $salary"
