#!/bin/bash

EXTEND-DRIVE=/dev/sdb
EXTEND-DRIVE-PART=1
EXTEND-DRIVE-PCNT=100
LVM-DEVICE=/dev/mapper/LVG_DATA-LV_DATA
##code
echo parted $EXTEND-DRIVE resize $EXTEND-DRIVE-PART $EXTEND-DRIVE-PCNT%
echo pvresize $EXTEND-DRIVE
echo lvextend -l +100%FREE $LVM-DEVICE
