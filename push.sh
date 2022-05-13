#!/bin/bash

companyname=""
message=""
loop="loop"

#echo -e "\t\tcompany select"
#echo -en "\t     1.aws 2.gcp 3.azure"
echo -e "\t     1.aws 2.gcp 3.azure"
echo "=============================================="



while [[ -n "$loop" ]]
do

echo -en "\t\tcompany select : "
read companyname
echo

if [ $companyname -eq 1 ]
then
        companyname="aws"
        loop=""
elif [ $companyname -eq 2 ]
then
        companyname="gcp"
        loop=""


elif [ $companyname -eq 3 ]
then
        companyname="azure"
        loop=""
else
        echo -e "\t\tInvalid input."
fi
done


echo -e "\t\t     $companyname"

echo $companyname > companyname.txt
echo
git add .
echo -en "\t\tEnter your message : "
read message
echo

git commit -m "${message}"
git push origin master
echo
echo -e "\t\tgit push susuccess!!"

