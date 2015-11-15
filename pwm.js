// Example of using PWM
// $ sudo-node pwm.js


var wpi = require('wiring-pi');
var async = require('async');
var usleep = require('sleep').usleep;

wpi.setup('gpio');

var pin = 18;
wpi.pinMode(pin, wpi.PWM_OUTPUT);

var start = 0;
var max = 1023;
var direction = "up";

while( start <= 1023 ){
        wpi.pwmWrite(pin, start);
        usleep(450);
        
        switch( direction ){
            case "up":
                start++;
            break;
            default:
                start--;
        }
        
        if( start == max ){
            direction = "down";
        }
        if( start == 0 ){
            direction = "up";
        }
    }