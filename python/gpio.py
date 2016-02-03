import RPi.GPIO as GPIO
from time import sleep

GPIO.setmode(g.BCM)

try:

  GPIO.setup(17, GPIO.OUT) # GPIO17 
  while True:
    GPIO.output(17, GPIO.HIGH)
    sleep(1.5)
    GPIO.output(17, GPIO.LOW)
    sleep(1.5)

except KeyboardInterrupt:
  GPIO.cleanup();

