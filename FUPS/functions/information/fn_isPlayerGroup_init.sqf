private ["_group","_isPlayerGroup"];
_group = param [0,grpNull,[grpNull]];
_isPlayerGroup = {!(isPlayer _x)} count (units _group) == 0;

_group setVariable ["FUPS_grpIsPlayer",_isPlayerGroup];

_isPlayerGroup
