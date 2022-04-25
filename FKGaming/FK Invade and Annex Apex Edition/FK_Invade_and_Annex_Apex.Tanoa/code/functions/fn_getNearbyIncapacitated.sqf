/*/
File: fn_getNearbyIncapacitated.sqf
Author:

	Quiksilver

Last Modified:

	4/12/2018 A3 1.86 by Quiksilver
	
Description:

	Get Nearby Incapacitated
_____________________________________________/*/

params ['_origin','_radius','_fn_enemySides'];
private _incapacitated = ((_origin select [0,2]) nearEntities ['CAManBase',_radius]) select {
	( ((lifeState _x) isEqualTo 'INCAPACITATED') && ( (isNull (group _x)) || {(!((side (group _x)) in ((player getVariable ['QS_unit_side',WEST]) call _fn_enemySides)))}) )
};
private _v = objNull;
{
	_v = _x;
	if (alive _v) then {
		if (!(((crew _v) findIf {(alive _x)}) isEqualTo -1)) then {
			{
				if (alive _x) then {
					if ((lifeState _x) isEqualTo 'INCAPACITATED') then {
						if (isNull (group _x)) then {
							_incapacitated pushBackUnique _x;
						} else {
							if (!((side (group _x)) in ((player getVariable ['QS_unit_side',WEST]) call _fn_enemySides))) then {
								_incapacitated pushBackUnique _x;
							};
						};
					};
				};
			} forEach (crew _v);
		};
	};
} forEach ((_origin select [0,2]) nearEntities [['LandVehicle','Air','Ship'],_radius]);
missionNamespace setVariable ['QS_client_medicIcons_units',_incapacitated,FALSE];