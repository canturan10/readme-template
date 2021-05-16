#!/bin/bash

echo "Initilaize Your Readme"

# Assign the filename
filename="initilaize.md"

search='Project_Name'
# Take the replace string
read -p "Enter the project name [ex: My Project]: " replace
if [[ $search != "" && $replace != "" ]]; then
sed -i "s/$search/$replace/" $filename
fi

search='project_name'
read -p "Enter the project name [ex: my-project]: " replace
if [[ $search != "" && $replace != "" ]]; then
sed -i "s/$search/$replace/" $filename
fi

search='Project_Description'
read -p "Enter the project description [summary]: " replace
if [[ $search != "" && $replace != "" ]]; then
sed -i "s/$search/$replace/" $filename
fi

search='Project_Website'
read -p "Enter the project website [link]: " replace
if [[ $search != "" && $replace != "" ]]; then
sed -i "s/$search/$replace/" $filename
fi

search='Project_Docs'
read -p "Enter the project docs page [link]: " replace
if [[ $search != "" && $replace != "" ]]; then
sed -i "s/$search/$replace/" $filename
fi

search='Project_Demo'
read -p "Enter the project demo page [link]: " replace
if [[ $search != "" && $replace != "" ]]; then
sed -i "s/$search/$replace/" $filename
fi

mv initilaize.md README.md

echo "Initialization steps finished!"
echo "Now you can customize your README.md file."
echo "🔥"
echo "This Message Will Self Destruct In Five Seconds"
secs=5
shift
while [ $secs -gt 0 ]
do
printf "\r\033[K %.d " $((secs--))
sleep 1
done
echo
rm run.sh