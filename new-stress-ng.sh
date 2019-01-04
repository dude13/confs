#!/bin/bash

clear
sudo apt-get install htop xterm stress-ng -y
nohyp xterm htop &
echo

cat <<-EOF
Abaixo segue os modelos dos laptops:

	1 - Dourado (Inspiron 14 / Inspiron 7460)
	2 - Emborrachado (Latitude 3470)
	3 - Aspero (Inspiron 15 /  Inspiron 5566)
	4 - Precision 5510 (ENG)
	5 - Precision 5520 (ENG)
	6 - Prata (Inspiron 15 / Inspiron 5448)
	7 - Latitude 5490 
EOF
echo
echo
echo "Por favor, informe o numero do laptop a ser testado"
echo
echo

while :
do
  read INPUT_STRING
  case $INPUT_STRING in
  	1) 
	   echo "Dourado (Inspiron 14 / Inspiron 7460)"
	   echo
	   echo "AGUARDE O TERMINO DO TESTE DE STRESS :PORFAVORZINHO:"
       echo
       time stress-ng --cpu 4 --cpu-method all --cpu-ops 10000 --vm 7 --vm-bytes 1G --io 1000 --hdd 50 --hdd-bytes 4G --timeout 300s --metrics-brief
	   break
	   ;;
	2) 
	   echo "Emborrachado (Latitude 3470)"
	   echo
	   time stress-ng --cpu 4 --cpu-method all --cpu-ops 10000 --vm 7 --vm-bytes 1G --io 1000 --hdd 50 --hdd-bytes 4G --timeout 300s --metrics-brief
	   break
	   ;;
	3) 
	   echo "Aspero (Inspiron 15 /  Inspiron 5566)"
	   echo
	   time stress-ng --cpu 4 --cpu-method all --cpu-ops 10000 --vm 7 --vm-bytes 1G --io 1000 --hdd 50 --hdd-bytes 4G --timeout 300s --metrics-brief
	   break
	   ;;
	4) 
	   echo "Precision 5510" 
	   echo
	   time stress-ng --cpu 8 --cpu-method all --cpu-ops 10000 --vm 30 --vm-bytes 1G --io 1000 --hdd 50 --hdd-bytes 4G --timeout 300s --metrics-brief
	   break
	   ;;
	5) 
	   echo "Precision 5520" 
	   echo
	   time stress-ng --cpu 8 --cpu-method all --cpu-ops 10000 --vm 30 --vm-bytes 1G --io 1000 --hdd 50 --hdd-bytes 4G --timeout 300s --metrics-brief
	   break
	   ;;
	6) 
	   echo "Prata (Inspiron 15 / Inspiron 5448)"
	   echo
	   time stress-ng --cpu 4 --cpu-method all --cpu-ops 10000 --vm 7 --vm-bytes 1G --io 1000 --hdd 50 --hdd-bytes 4G --timeout 300s --metrics-brief
	   break
	   ;;
	7) 
	   echo "Latitude 5490" 
	   echo 
  	   time stress-ng --cpu 8 --cpu-method all --cpu-ops 10000 --vm 15 --vm-bytes 1G --io 1000 --hdd 50 --hdd-bytes 4G --timeout 300s --metrics-brief
	   break
	   ;;
	*) 
	   echo "Sorry, I don't understand"
	   echo
	   break
	   ;;   
  esac
done



