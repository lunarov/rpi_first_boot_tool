#!/bin/bash

echo "Kurulum başlatılıyor...."
echo "apt güncelleniyor...."
sudo apt update && sudo apt upgrade -y
echo "git yükleniyor...."
sudo apt install git -y
echo "pip yükleniyor...."
sudo apt install python3-pip -y
echo "netatalk yükleniyor...."
sudo apt-get install netatalk -y
echo "netatalk konfigürasyonları yapılıyor...."
sudo rm /etc/netatalk/afp.conf
sudo cp /home/pi/all_setup_1/afp.conf /etc/netatalk/
sudo systemctl restart netatalk
sudo apt install vim -y
