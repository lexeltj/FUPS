#include "..\..\header\header.hpp"

params ["_group"];

private _isPlayerGroup = {!(isPlayer _x)} count (units _group) == 0;

_group setVariable ["FUPS_grpIsPlayer",_isPlayerGroup];

_isPlayerGroup
