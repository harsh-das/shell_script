#!/bin/bash
##################################################################
#Script Name    : File_system_space.sh                                                                                            
#Description    :This script will check the memory usage of the file system
#Creation Date  :                                                  
#Author         : Harsabardhan Das                                           
#Email          :                    
#Usage          : sh -x File_system_space.sh "File_system"
##################################################################
#
#
#validate the positional parameters

file_system=$1
echo $file_system

if [ $# -eq 1 ]
then
        echo "correct number of parameters provided"
else
	echo "incorrect numbers of parameters provided"
	exit 8
fi


memory_usage=`df -h | grep -i ${file_system} | cut -d " " -f12 | cut -d "%" -f1` 
echo "memory usage now for the file system ${file_system} : ${memory_usage}%"

if [ $memory_usage -gt 80 ]
then
echo "Memory usage of file system ${file_system} is getting out of storage and now  ${memory_usage}%"
exit 8
else	
echo "memory usage avalable for file system ${file_system} is : ${memory_usage}%"
echo "memory usage is out of space "
fi




#end
