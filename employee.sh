#!/bin/bash
#collect employee information.
read -r -p "Enter your Employee name : " name
read -r -p "Enter number of hours worked : " hours
read -r -p "Enter rate per hour : " rate

#calculate the basic pay = hours worked * rate
basic_pay=`expr $hours \* $rate`

#calculate tax
if [$basic_pay -gt 70000];
then
	tax=$((0.25 * $basic_pay))

elif [$basic_pay -ge 15000]&&[$basic_pay -le 70000];
then
	tax=$((basic_pay * 0.15))

else
	tax=0 #basic_pay below 15000 no tax
fi

#calculate the net pay = basic pay - tax
net_pay=`expr $basic_pay - $tax`
echo "net pay is : $net_pay"

