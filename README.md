# FUPS v2.2.02

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
Other files
-------------------------

You can safely ignore and delete the include.cfg file. I need this for a personal ArmA 3 mission development enviroment.

You can safely ignore and delete the dev-tools folder. This folder is just containing stuff that helps me flesh out FUPS.

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

v2.2.0
* [Changed] FUPS_fnc_stop reworked
* [Changed] FUPS_fnc_reveal got reworked and now accepts object or group as first parameter
* [Changed] Syntax updated
* [Fixed] ai does now correctly share known enemies
* [Fixed] Scripting errors & issues
* [Added] panic system added
* [Added] panic can make a group skip calculation cycles leading to a group acting more slowly
* [Added] panic can make a group cancel their attack
* [Added] panic will lead a group more likely into retreating
* [Added] ai can now hear your shots
* [Added] ai can now target enemies much better, even over very long distances
* [Added] settings files added to FUPS folder
* [Added] FUPS_fnc_log can now display an on-screen error notification
