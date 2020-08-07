#!/bin/csh
#----------------------------------------
#Assign ID: UNIXLAB5
#File name: SumV.csh
#Purpose: (challenging!!): Write a shell script "AvgV.csh", which accepts 
#           a variable number of integer arguments, computes their decimal 
#           average, then displays the arguments and the decimal average. At 
#           least one argument must be supplied. Only one decimal place is 
#           computed.
# 
#           EXAMPLE 1: % AvgV.csh 8 2 4 7 
#                      VALUES: 8 2 4 7 
#                      AVERAGE = 5.2
#           
#           EXAMPLE 2: % AvgV.csh 17
#                      VALUES: 17
#                     AVERAGE = 17.0
#           
#           EXAMPLE 3: % AvgV.csh 
#                      ERROR - NO ARGUMENTS PROVIDED
#Author: Jonas Toussaint
#Date: 2020 March 14
#----------------------------------------

#--------------------------------------------------
#-| Error Handling
#-------------------------------------------------
if ( $#argv < 1) then
    echo -n "ERROR - NO ARGUMENTS PROVIDED"
    repeat 1 echo " " 
                exit
endif

#--------------------------------------------------
#-| Display the values
#-------------------------------------------------
echo -n "VALUES: "
        foreach i ( $argv )
               echo -n "$i "
end
echo " " 
#--------------------------------------------------
#-| Compute sum of the inputs for each argument
#--------------------------------------------------
@ sum = 0
@ count = 1
@ avg = 0   

foreach i ( $argv )
        @ sum += $i
end

#--------------------------------------------------
#-| Compute the average
#-------------------------------------------------
@ avg = $sum / $#argv

#-------------------------------------------------
#-| Calculate the decimal place
#------------------------------------------------
@ temp = $sum * 10
@ temp2 = $temp / $#argv
@ dec = $temp2 % 10

#--------------------------------------------------
#-| Display Average
#-------------------------------------------------
echo  "AVERAGE = $avg.$dec"
exit





