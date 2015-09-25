/*

    Description: Will save the given group as template

    PARAMS:
    0 <GROUP/OBJECT> - group that should be saved
    1 <SCALAR> - the index of the template
    2 <BOOLEAN> - true when the objects should be deleted after saving
    3 <OBJECT> - if present && param 2 is true objects will only be deleted if param 3 is local

    RETURN:
    -

    Author: [W] Fett_Li

*/

params ["_group","_template",["_doDelete",false]];

if (isNil "_group" || isNil "_template") exitWith {};

if (typeName _group == typeName objNull) then {
    _group = group _group;
};

private ["_units","_checked"];
_units = [[vehicle leader _group,skill commander leader _group]];
_checked = [vehicle leader _group];
{
    if !(vehicle _x in _checked) then {
        _units pushBack [vehicle _x,skill commander _x];
        _checked pushBack (vehicle _x);
    };
} forEach (units _group);

{
    (_units select _forEachIndex) set [0,typeOf (_x select 0)];
} forEach _units;

private "_saved";
_saved = [side _group,_units];

if (_template > -1 && {count (FUPS_templates param [_template,[]]) == 0}) then {
    FUPS_templates set [_template,_saved];
};

if (_doDelete) then {
    {
        if (vehicle _x != _x) then {
            deleteVehicle (vehicle _x);
        };
        deleteVehicle _x;
    } forEach (units _group);
};

_saved
