#/bin/bash

#read -p "请输入需要配置IP的网卡："  et
#read -p "请输入IP（IPV4）地址："  IP
read -p "input hostname"  hn
read -p "input yum's baseurl:"   url

#nmcli connection modify ${et} ipv4.method manual ipv4.addresses "${IP}" connection.autoconnect yes
#nmcli connetion up ${et}
#echo "IP配置完成！"

hostnamectl set-hostname ${hn}
echo "hostname compelte：${hn}"

echo "
[rhel7.4]
name=rhel7.4
gpgcheck=0
enable=1
baseurl=${url}
" > /etc/yum.repos.d/rhel7.4.repo

yum repolist
 
