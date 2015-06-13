/*

    Description: Will save the given group as template

    PARAMS:
    0 <GROUP/OBJECT> - group that should be saved
    1 <SCALAR> - the index of the template
    2 <BOOLEAN> - true when the objects should be deleted after saving
    3 <OBJECT> - if present and param 2 is true objects will only be deleted if param 3 is local

    RETURN:
    -

    Author: [W] Fett_Li

*/

private ["_group","_template","_units"];

_group      = _this select 0;
if (isNull _group) exitWith {};
if (typeName _group == typeName objNull) then {
    _group = group _group;
};
_template   = _this select 1;
_doDelete = count _this < 3 || {_this select 2};
_ownerObj = if (count _this < 4) then {objNull} else {_this select 3};

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

if (_template >= 0 && ((count FUPS_templates <= _template) || { isNil {FUPS_templates select _template} })) then {
    FUPS_templates set [_template,[side _group,_units]];
};

if (_doDelete && (isNull _ownerObj || local _ownerObj)) then {
    {
        if (vehicle _x != _x) then {
            deleteVehicle (vehicle _x);
        };
        deleteVehicle _x;
    } forEach (units _group);
};
