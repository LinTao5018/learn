#!/bin/bash

case $1 in 
all)
	echo "none"
	exit 0;;
none)
	echo "all"
	exit 0;;
*)
	echo "/root/test.sh none|all"  >&2
	exit 1;;
esac

