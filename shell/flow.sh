#!/bin/bash

echo "Content-type: text/html"
echo ""
echo "<body style="background-color:#FAEBD7">"



ifconfig eth0 |awk '/inet /{print"</br>eth0的IP为：" $2}'
ifconfig eth0 |awk '/RX p/{print"</br>eth0的流量为：" $5}'
df  |awk '/\/$/{print "</br>根分区剩余容量："$4}'
free |awk '/Mem/{print "</br>内存剩余："$NF}'
echo "</br>"
echo "</br>远程失败的IP地址："
awk '/sshd.*Failed/{print"</br>"$11}' /var/log/secure
echo "</br>"
echo "</br>"
echo "</br>"

awk -F: 'BEGIN{print "用户名 家目录 UID</br>"}
	{print $1,$6,$3"</br>"}
	END{print "总用户量："NR"</br>"}' /etc/passwd 



