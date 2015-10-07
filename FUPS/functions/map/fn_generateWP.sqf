params ["_group","_area"];

if (isNil "_area") then {
	_area = _group getVariable "FUPS_marker";
};

private ["_type","_allowWater","_pos"];
_type = [_group] call FUPS_fnc_ai_type;
_allowWater = [0,0,2,1] select _type;
_pos = [_group,0,_allowWater,_area] call FUPS_fnc_randomMarkerPos;

if (_type == 1) then {
	private "_roads";
	_roads = _pos nearRoads 100;
	if !(_roads isEqualTo []) then {_pos = getPosATL (_roads select 0)};
};

_pos