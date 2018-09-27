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
The Sandbox is responsive for stoping these loops when the program terminate.

## Understanding IO Tools

