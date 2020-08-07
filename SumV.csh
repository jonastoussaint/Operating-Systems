#!/bin/csh
#----------------------------------------
#Assign ID: UNIXLAB5
#File name: SumV.csh
#Purpose: Write a shell script "SumV.csh", which accepts a variable number 
#         of integer arguments, computes their sum, then displays the sum 
#         in expression format.
#            
#          EXAMPLE 1: % SumV.csh 8 2 4 7 13 3 1
#                     RESULT: 8 + 2 + 4 + 7 + 13 + 3 + 1 = 38
#            
#          EXAMPLE 2: % SumV.csh 
#                       RESULT: = 0
#Author: Jonas Toussaint
#Date: 2020 March 14
#----------------------------------------

#--------------------------------------------------
#-| Set sum = 0 and count = 0
#--------------------------------------------------
set sum = 0
set count = 1

#--------------------------------------------------
#-| Compute the sum of the inputs 
#--------------------------------------------------
foreach i ( $argv )
    @ sum += $i
end

#--------------------------------------------------
#-| Display the result
#--------------------------------------------------
echo -n "RESULT: "
foreach i ($argv) 
    echo -n "$i "
    if ( $count < $#argv ) echo -n "+ "
    @ count++
end

echo "= $sum"
exit