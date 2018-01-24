#!/bin/bash
#
# Post build script for Brennan B2

# Set Bluetooth default on-Air name to: Brennan B2
etc_bt_main_conf=output/target/etc/bluetooth/main.conf
line_num=`grep ^'Name =' $etc_bt_main_conf -n`
line_num=${line_num%:*}
sed -i "${line_num}d" $etc_bt_main_conf
sed -i "${line_num}iName = Brennan B2" $etc_bt_main_conf

# Set network interfaces for ifplugd to monitor - eth0 and wlan0
ifplugd_conf=output/target/etc/ifplugd/ifplugd.conf
line_num=`grep ^INTERFACES= $ifplugd_conf -n`
line_num=${line_num%:*}
sed -i "${line_num}d" $ifplugd_conf
sed -i "${line_num}iINTERFACES=\"eth0 wlan0\"" $ifplugd_conf
