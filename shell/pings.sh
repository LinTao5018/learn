#!/bin/bash

for i in 176.130.10.{1..254};do
	(ping -c 2 ${i} &>/dev/null && echo ${i}>>a.log)&
done
wait
