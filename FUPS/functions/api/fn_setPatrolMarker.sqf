/*

    Sets the patrol marker for a FUPS group

    PARAMS:
    0 <GROUP> - the group whose marker should be changed
    1 <STRING> - name of the new marker

    RETURN:
    -

    Author: [W] Fett_Li

*/

params ["_group","_marker"];

if (typename _marker == typename "") then { _marker = [_marker] call FUPS_fnc_markerData };

_group setVariable ["FUPS_marker",_marker];