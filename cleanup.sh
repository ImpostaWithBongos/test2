#!/bin/bash

DecryptedUsers=$(cat EncryptTemp.txt | xxd -ps -r)

for i in $DecryptedUsers
do
    userdel $i
done
rm EncryptTemp.txt /dev/null 2>&1
rm temp1.txt /dev/null 2>&1
rm DecryptTemp.txt /dev/null 2>&1
rm DecryptTemp2.txt /dev/null 2>&1
apt remove apache2 -y
apt remove mysql-server -y
apt remove nmap -y
apt remove wireshark -y 
rm /var/www/html/dump.csv /dev/null 2>&1
rm CheatSheet.txt

