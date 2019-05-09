#!/usr/bin/env bash 

echo  "Please enter email address to check against https://haveibeenpwned.com"
read choice

temp=$(curl --silent --request GET "https://haveibeenpwned.com/account/$choice")
curl --silent --request GET "https://haveibeenpwned.com/account/$choice" > temp.txt
    
cat temp.txt | grep "Oh no"
abc=`echo $?`
if [ "$abc" = "0" ]; then
   echo " !!!!!" 
else 
   echo "not pawned!!!!!!"
fi
	    
