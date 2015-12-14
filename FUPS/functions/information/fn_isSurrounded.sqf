scopeName _fnc_scriptname;

private _directions = _this;
if (_directions isEqualTo []) exitWith { false };

_directions sort true;
private _lastindex = count _directions - 1;

private _surrounded = true;
for "_i" from 0 to (_lastindex - 1) do {
    if ((_directions select (_i + 1)) - (_directions select _i) >= 120) then {
        false breakOut _fnc_scriptname;
    };
};

(360 + (_directions select 0)) - (_directions select _lastindex) < 120
