#/bin/bash

echo
echo
echo system atualization ...
echo
sudo apt-get update 
echo

echo package atualization ...
echo
sudo apt-get upgrade -y 
echo OKAY

echo clean apt
echo
sleep 1
sudo apt-get clean  
echo OKAY

echo autoremove apt
echo
sleep 1
sudo apt autoremove 
echo

echo Update/Upgrade realized
echo
echo


