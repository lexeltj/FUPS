/* !!! DON'T CALL THIS FUNCTION BY HAND AS IT WILL CLASH WITH THE FUPS PANIC SYSTEM! !!! */

params ["_group"];
private ["_level","_lowerBy"];
_level = _group getVariable ["FUPS_panic",0];
_lowerBy = (FUPS_panic_lowerPanicPerSecond * FUPS_cycleTime) max 0;

_group setVariable ["FUPS_panic",_level - _lowerBy];
