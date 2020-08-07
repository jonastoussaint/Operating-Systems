#!/bin/csh
#----------------------------------------
#Assign ID: UNIXLAB5
#File name: Sum4.csh
#Purpose: Write an argument-less shell script "Sum4.csh", which reads four 
#         integer values from the keyboard, computes their sum, then 
#         displays the sum. 
#         EXAMPLE: % Sum4.csh
#                  Enter the first number: 4 
#                  Enter the second number: 7 
#                  Enter the third number: 3 
#                  Enter the fourth number: 11 
#                  RESULT: 4 + 7 + 3 + 11 = 25
#
#Author: Jonas Toussaint
#Date: 2020 March 14
#----------------------------------------

#--------------------------------------------------
#-| Read inputs num1, num2, num3, and num4.
#--------------------------------------------------

echo -n "Enter the first number: " 
set num1 = $<

echo -n "Enter the second number: " 
set num2 = $<

echo -n "Enter the third number: " 
set num3 = $<

echo -n "Enter the fourth number: " 
set num4 = $<

#--------------------------------------------------
#-| Compute sum of the inputs.
#--------------------------------------------------

@ sum = $num1 + $num2 + $num3 + $num4

#--------------------------------------------------
#-| Display the Result
#--------------------------------------------------

#-| Skip 3 lines, then display.
repeat 3 echo " "    

echo -n "RESULT: $num1 + $num2 + $num3 + $num4 = $sum"

#-| Skip 1 lines, then exit.
repeat 1 echo " "   
exit  #-- end of script