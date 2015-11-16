#!/usr/bin/env bash
# Note - Pi blaster needs this script ran for auto start at boot
# /etc/init.d/pi-blaster.boot.sh start
# 4, 17, 22

AMOUNT=0
DIRECTION="up"
while [ "$AMOUNT" -lt 10 ];
do

sleep 0.0445

echo "4=0.1$AMOUNT" > /dev/pi-blaster
echo "17=0.1$AMOUNT" > /dev/pi-blaster
echo "22=0.1$AMOUNT" > /dev/pi-blaster

echo "18=0.1$AMOUNT" > /dev/pi-blaster
sleep 0.0445

if [ "$AMOUNT" -eq 9 ] && [ "$DIRECTION" == "up" ] ;then
  DIRECTION="down"
fi

if [ "$AMOUNT" -eq 0 ] && [ "$DIRECTION" == "down" ] ;then
  DIRECTION="up"
fi

if [ "$DIRECTION" == "up"  ];then
  AMOUNT=$((AMOUNT+1))
else
  AMOUNT=$((AMOUNT-1))
fi

done