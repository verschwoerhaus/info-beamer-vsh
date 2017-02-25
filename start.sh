#!/bin/sh
export INFOBEAMER_LOG_LEVEL=3
export INFOBEAMER_BLANK_MODE=layer
export NODE=info-beamer-vsh
export INFOBEAMER_TARGET_X=50
export INFOBEAMER_TARGET_Y=30
export INFOBEAMER_TARGET_W=94%
export INFOBEAMER_TARGET_H=94%


modprobe bcm2708_wdog
export INFOBEAMER_WATCHDOG=15

cd /home/pi/info-beamer-vsh
exec python2 service & exec python2 twitter/service & exec nice -n -5 ionice -c 1 -n 0 /home/pi/info-beamer-pi/info-beamer . 2>&1
