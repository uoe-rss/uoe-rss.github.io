---
layout: post-no-feature
comments: false
title: Hardware and Software Setup
---

## First Steps to Start Working on the Project

1. Check that your hardware kit is complete.
2. Check which information is available on this website.
Note that it will be updated regularly, stay tuned.
3. Power up your Raspberry Pi and let it bind to the room's WiFi. 
4. Check you can access it thought SSH on the DICE machines.
5. Without plugging yet any motor or sensor, build the full electronic wiring.
6. Create in the home folder a minimal ```toddler.py``` and start the Sandbox. 
7. Check that the Sandbox runs smoothly and that the ```toddler``` code is executed.
8. Now you can start to connect sensors one by one and experiment for each of them
what are its capability, noise and limitations.
9. Connect one motor and make it spin and stop. The same for the servomotor.
10. Check/observe which legos are available to you as building blocks.
Read the resource hints and tricks about legos.
11. Start the actual design of the robot.

## Hostnames

Each *Raspberry Pi* has been assigned a unique [*hostname*](https://en.wikipedia.org/wiki/Hostname).
We decided to name them after [Digimons](https://en.wikipedia.org/wiki/Digimon) and [Pokemons](https://en.wikipedia.org/wiki/Pokemon).
Therefore, as part of your kit, you should have a *Raspberry Pi* labeled with one of the following identifiers:

**Digimons**  
[Agumon](http://digimon.wikia.com/wiki/Agumon_(Adventure)),
[Armadillomon](http://digimon.wikia.com/wiki/Armadillomon_(Adventure)),
[Biyomon](http://digimon.wikia.com/wiki/Biyomon_(Adventure)),
[Gabumon](http://digimon.wikia.com/wiki/Gabumon_(Adventure)),
[Gatomon](http://digimon.wikia.com/wiki/Gatomon_(Adventure)),
[Gomamon](http://digimon.wikia.com/wiki/Gomamon_(Adventure)),
[Hawkmon](http://digimon.wikia.com/wiki/Hawkmon_(Adventure)),
[Meicoomon](http://digimon.wikia.com/wiki/Meicoomon_(Adventure)),
[Palmon](http://digimon.wikia.com/wiki/Palmon_(Adventure)),
[Patamon](http://digimon.wikia.com/wiki/Patamon_(Adventure)),
[Tentomon](http://digimon.wikia.com/wiki/Tentomon_(Adventure)),
[Veemon](http://digimon.wikia.com/wiki/Veemon_(Adventure)),
[Wormmon](http://digimon.wikia.com/wiki/Wormmon_(Adventure)).

**Pokemons**  
[Bulbasaur](https://pokemondb.net/pokedex/bulbasaur),
[Caterpie](https://pokemondb.net/pokedex/caterpie),
[Charmander](https://pokemondb.net/pokedex/charmander),
[Clefairy](https://pokemondb.net/pokedex/clefairy),
[Diglett](https://pokemondb.net/pokedex/diglett),
[Jigglypuff](https://pokemondb.net/pokedex/jigglypuff),
[Meowth](https://pokemondb.net/pokedex/meowth),
[Pikachu](https://pokemondb.net/pokedex/pikachu),
[Psyduck](https://pokemondb.net/pokedex/psyduck),
[Rattata](https://pokemondb.net/pokedex/rattata),
[Squirtle](https://pokemondb.net/pokedex/squirtle).

## Connecting The Module

When the Raspberry Pi is powered it will boot-up automatically.
The full boot-up sequence takes few seconds, so remember to wait for a short interval before attempting to login to the module. 
The system will automatically connect to the room's WiFi and be accessible by the DICE machines on the network.

Now you're ready to login to your module. 
Bring up a terminal window on a DICE machine and use the SSH command to connect to the module. 
The name of your module will be printed on its top side, for example if the module on your desk is named Panda. 
So to login to Panda as student you would type ```ssh -XC student@Panda```. 

Remember to add the ```-XC``` option so that you can later start graphical text editor and debug your image processing remotely. 
After typing this command you will be asked for a password. The password is ```password```. 
If all that went well you are now able to login to the module. 
You should store all your programs in /home/student/ directory. 
To log out type exit. 
If you want to reboot or turn off the Raspberry use ```sudo reboot``` and ```sudo poweroff```. 
Always turn off the Raspberry using ```sudo poweroff```, otherwise you may cause damage to the SD card and loose your work.

Step by Step:
- Login to the brain brick as ```student``` using password ```password``` (example for brain brick named Panda): ```ssh -XC student@Panda```.
- Write your code on the brain brick or copy it from the DICE machine.
- You can use following text editors on the brain brick: vim (vi), nano (nano) or graphical editor (editor).
- If you prefer to write your code on the DICE machine you can copy the code over using FTP.
- Run program by executing the ```sandbox``` command on the Raspberry (good for debugging) or by shortly pressing the connected button.

## R:SS Sandbox environment

The sandbox environment is a python program that allows you to develop and run python programs for the Raspberry used in the R:SS course at University of Edinburgh. 
The Sandbox handles reading sensors, controlling DC motors and the servo, capturing images from the camera, handling, reporting and logging errors, 
and launching from the Raspberry. 

### What is the Sandbox?

The sandbox consist of three python source files located in ```/urs/local/bin```:
- sandbox.py - Main program
- iotools.py - Tools to interface with hardware
- toddler.py - Default example user code

The sandbox can be launched by shortly pressing the button connected to the Raspberry. 
Pressing the button will either start the sandbox or kill all sandbox processes if there are any running. 
Use the button to start/stop your program during experiments.

The sandbox can also be launched from SSH with the alias commamd: ```sandbox```.
This command will start the Sandbox and print the output of the program into the SSH terminal 
and also display any graphical windows you may have created (e.g. imshow()).

The program will initialize the IO tools (implemented in iotools.py), start logging, and attempt to import a user program from toddler.py. 

### Status and error reporting

- When you connect the Phidgets interface board to your Raspberry, the 3 LEDs connected to the interface board will be used for status and error reporting.
- When the sandbox is not running the LEDs are off.
- When the Sandbox starts, all three LEDs will flash 3 times. Then the green LED (connected to output 0) will flash slowly at regular intervals while the program is running.
- When error occurs, the green LED will be flashing fast. This will happen during any critical error: syntax, division by zero, un-handled exception, ... 
    At this point you may want to stop the program check the error output.

### Logging

When running the Sandbox on DICE or on your own machine, the standard and error output will be displayed in the terminal window.
However, when you run the Sandbox on the Raspberry, the output streams will be piped into /dev/null to prevent the output from blocking your SSH connection. 
A copy of these streams will also be saved into a text file: ```/tmp/sandbox/log.txt```.
Note that the directory ```/tmp/sandbox/``` needs to be created for the log to be generated.

Any print command or error text will be appended to the end of this file. You can SSH into the Raspberry and retrieve this file.
The log file is only temporary and will only exist as long as your robot stays powered. 
Do not disconnect/turn off your Raspberry if you want to retrieve the log file later.

### Uploading Files Onto the Raspberry

You can up/down-loading files to/from the Raspberry via a FTP tool. To do this, you will need:
- your Raspberry's host name - e.g. panda (or the IP address)
- user name - student
- password - password

To upload files via FTP, use the FTP tool of your choosing, specify <host_name>.inf.ed.ac.uk as the server, 
and student and password as user name and password. 
This will allow you to modify file in the home directory. 
You can put the toddler.py in here.

### SSH Into the Raspberry

```ssh -XC student@<host_name>```

Replacing *<host_name>* with the host name of your Raspberry. 
The -XC argument is to allow forwarding of graphical windows (e.g. imshow()).
You can now run all the command available on the Raspberry, e.g. sandbox, cp, mv, ...

