---
layout: post-no-feature
comments: false
title: Software Documentation
---

## Coding With the Sandbox

This section will describe all the features of the Sandbox and 
provide examples of how to start writing your own programs inside the sandbox.

### Toddler in the Sandbox

Your code will reside inside a file named ```toddler.py```. 
This file **must** be directly created in your home folder ```/home/student/toddler.py```.
Note that you can simply start by copying the default one available at: ```/usr/local/bin/toddler.py```.

### Minimal Example Structure

```python
#!/usr/bin/env python

import time
import numpy
import cv2

class Toddler:

    def __init__(self, IO):
        print('[Toddler] I am toddler playing in a sandbox')
        self.camera = IO.camera.initCamera('pi', 'low')
        self.getInputs = IO.interface_kit.getInputs
        self.getSensors = IO.interface_kit.getSensors
        self.mc = IO.motor_control
        self.sc = IO.servo_control

    def control(self):
        print('{}\t{}'.format(self.getSensors(), self.getInputs()))
        time.sleep(0.05)

    def vision(self):
        image = self.camera.getFrame()
        self.camera.imshow('Camera', image)
        time.sleep(0.05)
```

To break this down, the ```toddler.py``` must define a class called ```Toddler```:
```python
class Toddler:
```
This class must have an initialiser that takes and instance of the IO tools as an argument:
```python
def __init__(self,IO):
```
The IO tools get initialised by the Sandbox and passed onto the Toddler class. 
We store the instance in a member variable self.IO so it can be used within the class later.

The toddler class must also define two callback functions:
```python
def Control(self, OK):
```
and
```python
def Vision(self, OK):
```
Each of these callbacks runs on a separate thread. 
You can block one of them with time.sleep() command or with computation 
without stopping the other. 
If you pass data between these two threads, you need to pay attention 
to data integrity and synchronisation (mutex).

The both callback functions ```Control()``` and ```Vision()``` are actually run in a loop
within the Sandbox. 
When the callback ends (returns), it will be then re-called again and again.
The Sandbox is responsive for stopping these loops when the program terminate.

## Understanding IO Tools

The IOTools class gets instantiated/initialised by the Sandbox. 
**DO NOT CREATE AN INSTANCE OF THIS CLASS YOURSELF!**

Note that if you need more precision about the API,
don't hesitate to directly take a look to the file located 
on the Raspberry at: ```/urs/local/bin/iotools.py```.

### DC Motor Speed Control

The Direct Current lego motors are directly controlled in velocity (through applied voltage) by the motor board.

- ```self.mc.setMotor(id, speed)```:
Set the target speed of the motor with given id.
The speed range is 0%-100%. The speed is the percentage of supply voltage modulated by PWM. 
Values below 80% usually won't make the motors move due to friction. 
Values lower than 100% also cause the motor to draw more power. 
This is due to the design of the DC motors. 
We recommend using the motors at speed either 0% or 100% over different periods of time for best performance.
Negative values make the motor spin the other way.
- ```self.mc.stopMotor(id)```:  
Stop the motor with given id.
- ```self.mc.stopMotors()```:  
Stops all motors.


### Servo-Motor Position Control

The servo-motor connected to the Phidget AdvancedServo board is controlled in position with following methods:

- ```self.sc.engage()```:  
Enable the position servoing of the servo motor. 
You are not able to move the servo by hand anymore since it is actively controlling its angular position.
- ```self.sc.disengage()```:  
Disable the servo motor position servoing.
- ```self.sc.setPosition(position)```:  
Set the servo-motor desired angular position in degrees within the range 0°-180°.

The servo can be powered up/down using the ```engage```() and ```disengage()``` methods. 
Servo will only move when it is engaged. 
When the servo is engaged, it will actively maintain it's position. 
This will draw power. 
When the servo is not loaded (no/little torque is applied on its axle) it will maintain it's position due to the friction in gearbox anyway.

### Read Sensors

How to read the sensor data captured by the Phidget Interface Kit board.
The Interface Kit keeps track of states of analogue sensors (IR, light) and digital/binary sensors (switches, whiskers, hall effect). 
You can retrieve the current state of these sensors **as array** using ```getSensors()``` and ```getInputs()```:


- ```analog = self.IO.getSensors()```:  
 Get all analogue sensor values (floats)
- ```digital = self.IO.getInputs()```:  
 Get all digital sensor values (boolean)

The sensor values may get updated at high frequency. 
If you are looking for a short activation, you will have to call this function more often (e.g. in a loop with a short sleep delay). 
We do NOT recommend relying on signals of short duration though. 
With other code running on the Raspberry, it will become difficult to reliably detect if the signal appeared or not. 
The hardware and the interfaces have not been designed for high frequency signal processing.

### Image Capture And Image Display

- ```self.camera = IO.camera.initCamera('pi', 'low')```:  
Initialize the camera and set the resolution within ```__init__()``` function. 
The resolution can be specified as a string:
    - "low" - 160x128 (very fast)
    - "medium" - 640x480
    - "high" - 800x608 (use this for extra detail)
- ```image = self.camera.getFrame()```:  
Capture an image from the Raspberry's camera and returned it.
- ```self.camera.imshow('Camera', image)```:  
One-to-one wrapper of ```cv2.imshow()``` which checks if the program is running on the robot or not. 
It won't show the image if the Sandbox is running on the robot (using the supervisor), since there is no screen to display the image to. 
This allows you put ```imshow()``` commands in your code for debugging without worrying about the performance at runtime. 
If SSH into your Raspberry and start your program using the sandbox command, the images will still be displayed via the SSH tunnel on your host computer. 
The display is only disabled when using the button to start the Sandbox.

