# FUPS v2.0.05

-------------------------
Introduction
-------------------------

FUPS is an easy to use yet powerfull script to make ai patrol and attack properly in your mission.
It uses markers defining areas for ai to patrol.

-------------------------
Importing
-------------------------

To use FUPS into your mission simply copy the FUPS folder into your mission folder and add following to the class CfgFunctions in the description.ext. If the CfgFunctions don't exist, simply add it:
```
class CfgFunctions {
	#include "FUPS\CfgFunctions.hpp"
};
```

-------------------------
Usage
-------------------------

To make an AI gfroup use FUPS, just add this to it init-Field of _any_ but only one soldier of the group:
```
[this,"marker"] call FUPS_fnc_main;
```
Whereas the "marker" will be the marker in which the group will patrol.

There are optional parameters, listed in the file fn_main.sqf in the folder functions. You may want to look there. Also, FUPS_fnc_spawn and FUPS_fnc_reinforcement may look interesting to you.

-------------------------
include.cfg
-------------------------

You can safely ignore and delete this file. I need this for a personal ArmA 3 mission development enviroment.

-------------------------
Changelog
-------------------------

v2.0.0
* Release

Next version
* Various bugfixes
* FUPS_fnc_spawn can be called from unscheduled enviroment setting sleepTime (param 5) to 0
* FUPS_fnc_reinforcement accepts an object as first parameter now
* FUPS_fnc_do now works correctly
* New function: FUPS_logLevel, if FUPS_logLevel is greater than -1, functions will only be logged, if their log parameter is set to true, or to FUPS_logLevel
