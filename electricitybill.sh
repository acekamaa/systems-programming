#!/bin/bash
#Collecting customer information
read -r -p "Enter customerID : " c
read -r -p "Enter customer name : " n
read -r -p "Enter units consumed : " u

#Calculate unit charges per rate
if [$u -le 199];
then
	charge=`$u * 120`
elif [$u -eq 200] && [$u -lt 400]
then
	charge=`$u * 150`
elif [$u -ge 400] && [$u -lt 600]
then
	charge=`$u * 180`
else
	charge=`$u * 200` #for 600 units and above
fi

#Calculate total bill
echo "Total bill : $charge"
