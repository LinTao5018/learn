#!/bin/bash

for i in 176.130.4.{1..254};do

expect <<EOF

spawn ssh -o StrictHostKeyChecking=no $i;if [ $? -eq 0 ];then echo $i >>/root/log ;fi

expect "yes/no" {send "yes\n"}
expect "passwdord" {send"Taren1\n"}
expect "#" {send "mkdir /root/桌面/hh\n"}
expect "#" {send "exit\n"}
	
EOF
done

	
	

