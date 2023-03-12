#!/bin/bash

DecryptedUsers=$(cat EncryptTemp.txt | xxd -ps -r)
echo "Beginning cleanup process"
for i in $DecryptedUsers
do
    userdel $i > /dev/null 2>&1
done
rm EncryptTemp.txt > /dev/null 2>&1
rm temp1.txt > /dev/null 2>&1
rm DecryptTemp.txt > /dev/null 2>&1
rm DecryptTemp2.txt > /dev/null 2>&1
apt remove apache2 -y --purge > /dev/null 2>&1
apt remove mysql-server -y --purge > /dev/null 2>&1
apt remove nmap -y --purge > /dev/null 2>&1
apt remove wireshark -y --purge > /dev/null 2>&1
rm /var/www/html/dump.csv > /dev/null 2>&1
rm CheatSheet.txt > /dev/null 2>&1
ip link set dev PCDC0 down
brctl delbr PCDC0
echo "Finished!"
