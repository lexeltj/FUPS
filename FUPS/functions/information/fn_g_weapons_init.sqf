#include "..\..\header\header.hpp"

params ["_group"];

private _units = units _group;

private _weapons = [false,false,false];
_weapons set [0, { [(vehicle _x)] call FUPS_fnc_v_weapons select 0 } count _units > 0];
_weapons set [1, { [(vehicle _x)] call FUPS_fnc_v_weapons select 1 } count _units > 0];
_weapons set [2, { [(vehicle _x)] call FUPS_fnc_v_weapons select 2 } count _units > 0];
_weapons set [3, { [(vehicle _x)] call FUPS_fnc_v_weapons select 3 } count _units > 0];
_group setVariable ["FUPS_weapons",_weapons];

_weapons
