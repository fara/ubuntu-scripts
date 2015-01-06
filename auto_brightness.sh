#!/bin/sh

case $1 in
	true)
    	echo 40 > /sys/class/backlight/acpi_video0/brightness
    ;;
    false)
	    echo 95 > /sys/class/backlight/acpi_video0/brightness
	;;
esac
