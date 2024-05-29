#!/bin/bash

EXTEND-DRIVE=/dev/sdb
EXTEND-DRIVE-PCNT=100

##code
parted $EXTEND-DRIVE resize 1 $EXTEND-DRIVE-PCNT%
