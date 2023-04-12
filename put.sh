#!/bin/bash


for IP in lteenbpc055 ; do
	echo "IP=$IP="
	ftp -v -n $IP << END_OF_SESSION
	user lteadm lteadm
	cd /tmp
	prompt
	mput *.tar 
	bye
END_OF_SESSION
done
