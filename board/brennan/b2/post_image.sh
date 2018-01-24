#!/bin/bash
#
# Post build script for Brennan B2

# Add 'loglevel=3' to kernel command line to suppress boot messsages
# Also add 'logo.nologo' to remove Raspberry from boot screen
# Also add 'dwc_otg.fiq_fsm_mask=0xF' to fix bluetooth audio streaming
cd output/images/rpi-firmware
exec < cmdline.txt
read cmdline
if [ `echo $cmdline | grep -c "loglevel=3"` == 0 ]
then
	echo "$cmdline loglevel=3 logo.nologo dwc_otg.fiq_fsm_mask=0xF" > ~cmdline.txt
	mv ~cmdline.txt cmdline.txt
fi
