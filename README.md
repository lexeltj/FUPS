# FUPS v2.1.3

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
Personalization
-------------------------

To personalize your overall FUPS experience you can modify variables in all settings... files in the FUPS folder.
Feel free to edit all the values, but don't delete any of them!

-------------------------
include.cfg
-------------------------

You can safely ignore and delete this file. I need this for a personal ArmA 3 mission development enviroment.

-------------------------
Changelog
-------------------------

v2.0.0
* Release

v2.1.0
* [Changed] FUPS_fnc_spawn can be called from unscheduled enviroment setting sleepTime (param 5) to 0
* [Changed] FUPS_fnc_spawn sleeps now after each unit spawned instead of each group
* [Changed] FUPS_fnc_reinforcement accepts an object as first parameter now
* [Fixed] Various bugfixes
* [Fixed] FUPS_fnc_do now works correctly for most people this error lead to FUPS_fnc_reinforcement not working properly
* [Fixed] Some errors in FUPS_fnc_reinforcement fixed
* [Added] FUPS_logLevel, if FUPS_logLevel is greater than -1, functions will only be logged, if their log parameter is set to true, or to FUPS_logLevel
* [Added] FUPS_fnc_createmarkerFromData, creates a marker out of the marker data generated by FUPS

Next Version
* panic system added
* panic can make a group skip calculation cycles leading to a group acting more slowly
* panic can make a group cancel their attack
* panic will lead a group more likely into retreating
* ai can now hear your shots
* settings files added to FUPS folder
* new system of target acquiring (basic functions added, folder targeting)
