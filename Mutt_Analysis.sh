#!/bin/bash

# This is run as an hourly cron job

cd /data/MUTT/NEW

perl bin/Mutt_Analysis.pl




# Reset the VSM power suply every hour to generate an attach


echo "Power OFF:   Port 1"
expect bin/power_off.exp   192.168.168.168  1
sleep 10
echo "Power OFF:   Port 2"
expect bin/power_off.exp   192.168.168.168  2
sleep 10
echo "Power OFF:   Port 3"
expect bin/power_off.exp   192.168.168.168  3
sleep 10
echo "Power OFF:   Port 4"
expect bin/power_off.exp   192.168.168.168  4
sleep 10
echo "Power OFF:   Port 5"
expect bin/power_off.exp   192.168.168.168  5
sleep 10
echo "Power OFF:   Port 6"
expect bin/power_off.exp   192.168.168.168  6
sleep 10
echo "Power OFF:   Port 7"
expect bin/power_off.exp   192.168.168.168  7
sleep 10
echo "Power OFF:   Port 8"
expect bin/power_off.exp   192.168.168.168  8



sleep 180
echo "Power ON:   Port 1"
expect bin/power_on.exp   192.168.168.168  1
sleep 10
echo "Power ON:   Port 2"
expect bin/power_on.exp   192.168.168.168  2
sleep 10
echo "Power ON:   Port 3"
expect bin/power_on.exp   192.168.168.168  3
sleep 10
echo "Power ON:   Port 4"
expect bin/power_on.exp   192.168.168.168  4
sleep 10
echo "Power ON:   Port 5"
expect bin/power_on.exp   192.168.168.168  5

sleep 10
echo "Power ON:   Port 6"
expect bin/power_on.exp   192.168.168.168  6
sleep 10
echo "Power ON:   Port 7"
expect bin/power_on.exp   192.168.168.168  7
sleep 10
echo "Power ON:   Port 8"
expect bin/power_on.exp   192.168.168.168  8




# To reset the PCs or push new SW to PC, uncomment the lines below

# Reset the PCs every hr to generate an attach 
#for i in `grep PSLTE_MUTT   bin/MUTT_CONFIG.txt  |  awk '{print $3}'`
#do
#	cd bin/PC
#	echo "Putting files on MUTT_PC = $i"
#   	expect put_files_on_pc.exp   $i
#done


