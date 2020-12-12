#!/bin/bash

status=$(connmanctl technologies | awk '/Powered = (True|False)/{print $3}' | tail -1)

case $status in
	True)
		connmanctl disable wifi
		;;
	False)
		connmanctl enable wifi
		;;
esac
