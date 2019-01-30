#!/bin/bash

hostname
hostname -I
ls /home
sudo dmidecode | grep -e  "BIOS Revision" -e "Product Name"

sudo dmidecode -s system-product-name
sudo dmidecode -s bios-version
sudo dmidecode -s system-serial-number

fdisk -l | grep "Disk /dev/sda"
cat /etc/issue

