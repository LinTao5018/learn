#!/bin/bash

echo "正在ping网段176.130.4.0/24，请稍后..."
i=1
while [ $i -le 254 ]
do
   ping -c 1 -i0.1 -W1 176.130.4.$i &>/dev/null
   
   if [ $? -eq 0  ];then
      echo "176.130.4.$i is up " >>/root/log
   else
      echo "176.130.4.$i is down" >>/root/host_down
   fi
   
   let i++
done

echo "网段176.130.4.0/24已ping完，结果请查看/root/log、/root/host_down文件。"


