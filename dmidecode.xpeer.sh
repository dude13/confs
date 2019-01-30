#!/bin/bash


hostname
sudo dmidecode | grep -e  "BIOS Revision" -e "Product Name" 
fdisk -l | grep "Disk /dev/sda"

