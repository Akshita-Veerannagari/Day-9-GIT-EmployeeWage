#! /bin/bash

echo "Welcome to employee wage computation"
isPresent=1
randomCheck=$(( RANDOM%2 ))
if [ $isPresent -eq $randomCheck ]
then
        empRatePerHr=20
        empHrs=8;
        salary=$(( $empHrs*$empRatePerHr ));
else
        salary=0;
fi
echo "Salary of employee is $salary"

