#!/usr/bin/env python

import RPi.GPIO as g
from time import sleep

g.setmode(g.BCM)

try:

  g.setup(17, g.OUT) # GPIO17 
  while True:
    g.output(17, g.HIGH)
    sleep(0.5)
    g.output(17, g.LOW)
    sleep(0.5)

except KeyboardInterrupt:
  g.cleanup();

