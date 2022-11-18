#!/bin/bash

#expected outputs
exp1="1.0 Pounds = 1.36 Dollars
1.0 Pound = 1.19 Euros
Thank you for using the converter!"
exp2="1.0 Euros = 1.31 Dollars
1.0 Euros = 0.84 Pounds
Thank you for using the converter!"
exp3="1.0 Dollars = 0.74 Pounds
1.0 Dollars = 0.88 Euros
Thank you for using the converter!"
exp4="Thank you for using the converter!"

#actual output
actual1=`java CurrencyConverter 1 pounds`
actual2=`java CurrencyConverter 1 euros`
actual3=`java CurrencyConverter 1 dollars`
actual4=`java CurrencyConverter 1 Pounds`
actual5=`java CurrencyConverter 1 Euros`
actual6=`java CurrencyConverter 1 Dollars`
actual7=`java CurrencyConverter 1 POUNDS`
actual8=`java CurrencyConverter 1 EUROS`
actual9=`java CurrencyConverter 1 DOLLARS`
actual10=`java CurrencyConverter " "`
actual11=`java CurrencyConverter "1"` 
actual12=`java CurrencyConverter "pounds "`  

#lowercase tests
if [ "$exp1" == "$actual1" ]; then
        echo "Test 1 Passed" 
else
        echo "Test 1 Failed"
exit 1
fi

if [ "$exp2" == "$actual2" ]; then
        echo "Test 2 Passed" 
else
        echo "Test 2 Failed"
exit 1
fi

if [ "$exp3" == "$actual3" ]; then
        echo "Test 3 Passed" 
else
        echo "Test 3 Failed"
exit 1
fi

#Capitalised tests
if [ "$exp1" == "$actual4" ]; then
	echo "Test 4 Passed" 
else
	echo "Test 4 Failed"
exit 1
fi

if [ "$exp2" == "$actual5" ]; then
        echo "Test 5 Passed" 
else
        echo "Test 5 Failed"
exit 1
fi

if [ "$exp3" == "$actual6" ]; then
        echo "Test 6 Passed" 
else
        echo "Test 6 Failed"
exit 1
fi

#UPPERCASE tests

if [ "$exp1" == "$actual7" ]; then
        echo "Test 7 Passed" 
else
        echo "Test 7 Failed"
exit 1
fi

if [ "$exp2" == "$actual8" ]; then
        echo "Test 8 Passed" 
else
        echo "Test 8 Failed"
exit 1
fi

if [ "$exp3" == "$actual9" ]; then
        echo "Test 9 Passed" 
else
        echo "Test 9 Failed"
exit 1
fi

#invalid arguent tests

if [ "$exp4" == "$actual10" ]; then
        echo "Test 10 Passed" 
else
        echo "Test 10 Failed"
exit 1
fi

if [ "$exp4" == "$actual11" ]; then
        echo "Test 11 Passed" 
else
        echo "Test 11 Failed"
exit 1
fi

if [ "$exp4" == "$actual12" ]; then
        echo "Test 12 Passed" 
else
        echo "Test 12 Failed"
exit 1
fi
