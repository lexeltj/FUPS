/*

    Description: Generates a new waypoint for the given group

    PARAMS:
    0 <GROUP> - the group to generate for

    RETURN:
    <ARRAY ForMAT POSITION> - the new waypoint

    Author: [W] Fett_Li
*/

#include "..\..\header\header.hpp"

params ["_group","_area"];

if (isNil "_area") then {
	_area = _group getVariable "FUPS_marker";
};

private _type = [_group] call FUPS_fnc_ai_type;
private _allowWater = [0,0,2,1] select _type;
private _pos = [_group,0,_allowWater,_area] call FUPS_fnc_randomMarkerPos;

if (_type == 1) then {
	private _roads = _pos nearRoads 100;
	if !(_roads isEqualTo []) then {_pos = getPosATL (_roads select 0)};
};

_pos