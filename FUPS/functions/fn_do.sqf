
/*

    This function will order any group to exectue given task. The task has to be defined via FUPS_fnc_registerTask.

    PARAMS:
    	0 <GROUP> - group to order the task
    	1 <STRING> - the task
    	@optional 2 <BOOL> - true to force the group to do the task, if false the group will wait to patrol and then do it

    RETURN:
        nil

    AUTHOR: [W] Fett_Li

*/

params ["_grp","_task",["_force",false]];
if (isNil "_grp" || isNil "_task" || {!(missionNamespace getVariable [_task + "_isTask",false])}) exitWith {
	[["Error: wrong params given ([%1,%2,%3])",_grp,_task,_force],true,true,true] call FUPS_fnc_log;
};

if (_force) then {
	private _orders = [[_task,_force]];
    _orders append (_grp getVariable "FUPS_orders");
	_grp setVariable ["FUPS_orders",_orders];

	_grp setVariable ["FUPS_break",{true}];
} else {
	(_grp getVariable "FUPS_orders") pushBack [_task,_force];
};
