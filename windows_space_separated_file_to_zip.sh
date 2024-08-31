#!/bin/bash
##################################################################
#Script Name    :  windows_space_separated_file_to_zip.sh                                                                                            
#Description    :This script will be zip the space separated file names (example 'file name.txt' to 'file name.txt.zip')
#Creation Date  :                                                  
#Author         : Harsabardhan Das                                           
#Email          :                    
#Usage          : sh -x windows_space_separated_file_to_zip.sh file_path
##################################################################
#
#
#validate the positional parameters

file_path=$1
echo $file_path

if [ $# -eq 1 ]
then
	echo "correct number of parameters provided"
else
	echo "incorrect numbers of parameters provided"
	exit 8
fi

cd $file_path

for f in *.txt
do
	file=`echo $f`
	zip "${file}.zip" "$f"
done	


#end
