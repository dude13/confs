#!/bin/bash

clear
sudo apt-get install htop xterm stress-ng -y

echo

cat <<-EOF
Please, choose your laptop model:
(1) Dourado (Inspiron 14 / Inspiron 7460)
(2) Emborrachado (Latitude 3470)
(3) Aspero (Inspiron 15 /  Inspiron 5566)
(4) Precision 5510 
(5) Precision 5520 
(6) Prata (Inspiron 15 / Inspiron 5448)
(7) Latitude 5490 
EOF
echo "Please talk to me"
while :
do
  read INPUT_STRING
  case $INPUT_STRING in
  	1) 
	   echo "Dourado (Inspiron 14 / Inspiron 7460)"
	   time stress-ng --cpu 4 --cpu-method all --cpu-ops 10000 --vm 7 --vm-bytes 1G --io 1000 --hdd 50 --hdd-bytes 4G --timeout 180s --metrics-brief
	   break
	   ;;
	2) 
	   echo "Emborrachado (Latitude 3470)"
	   time stress-ng --cpu 4 --cpu-method all --cpu-ops 10000 --vm 7 --vm-bytes 1G --io 1000 --hdd 50 --hdd-bytes 4G --timeout 180s --metrics-brief
	   break
	   ;;
	3) 
	   echo "Aspero (Inspiron 15 /  Inspiron 5566)"
	   time stress-ng --cpu 4 --cpu-method all --cpu-ops 10000 --vm 7 --vm-bytes 1G --io 1000 --hdd 50 --hdd-bytes 4G --timeout 180s --metrics-brief
	   break
	   ;;
	4) 
	   echo "Precision 5510" 
	   time stress-ng --cpu 8 --cpu-method all --cpu-ops 10000 --vm 30 --vm-bytes 1G --io 1000 --hdd 50 --hdd-bytes 4G --timeout 180s --metrics-brief
	   break
	   ;;
	5) 
	   echo "Precision 5520" 
	   time stress-ng --cpu 8 --cpu-method all --cpu-ops 10000 --vm 30 --vm-bytes 1G --io 1000 --hdd 50 --hdd-bytes 4G --timeout 180s --metrics-brief
	   break
	   ;;
	6) 
	   echo "Prata (Inspiron 15 / Inspiron 5448)"
	   time stress-ng --cpu 4 --cpu-method all --cpu-ops 10000 --vm 7 --vm-bytes 1G --io 1000 --hdd 50 --hdd-bytes 4G --timeout 180s --metrics-brief
	   break
	   ;;
	7) 
	   echo "Latitude 5490" 
  	   time stress-ng --cpu 8 --cpu-method all --cpu-ops 10000 --vm 15 --vm-bytes 1G --io 1000 --hdd 50 --hdd-bytes 4G --timeout 180s --metrics-brief
	   break
	   ;;
	*) 
	   echo "Sorry, I don't understand"
	   break
	   ;;   
  esac
done

xterm htop&

