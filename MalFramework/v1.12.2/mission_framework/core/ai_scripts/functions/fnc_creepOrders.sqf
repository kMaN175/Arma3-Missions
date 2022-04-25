#include "script_component.hpp"

/*
    Author:
        nkenny

    Description:
        -

    Arguments:
        -

    Example:
        -

    Returns:
        -
*/

params ["_group", "_target"];

private _nearDist = leader _group distance2d _target;
private _inForest = ((selectBestPlaces [getpos leader _group, 2,"(forest + trees)/2", 1, 1])#0)#1;

if (behaviour leader _group isEqualTo "COMBAT") exitWith {
    _group setCombatMode "RED";

    {
        _x setUnitpos "MIDDLE";
        _x domove (getposATL _target);
        true
    } count units _group;
};

if (_nearDist < 150 && {vehicle _target isKindOf "Landvehicle"}) exitWith {
    _group reveal _target;

    {
        _x setunitpos "DOWN";
        true
    } count units _group;
};

if (_inForest > 0.9 || _nearDist > 200) then {{_x setUnitpos "UP";true} count units _group};
if (_inForest < 0.6 || _nearDist < 100) then {{_x setUnitpos "MIDDLE";true} count units _group};
if (_inForest < 0.4 || _nearDist < 50) then {{_x setUnitpos "DOWN";true} count units _group};
if (_nearDist < 40) exitWith {_group setCombatMode "RED";_group setbehaviour "STEALTH";};

{
    _x doMove (_target getPos [random 10 + _foreachIndex * 5,random 360]);
} foreach units _group;
