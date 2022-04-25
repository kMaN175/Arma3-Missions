/*
File: fn_taskSetSingleWaypoint.sqf
Author:

	Quiksilver
	
Last modified:

	19/06/2016 A3 1.62 by Quiksilver
	
Description:

	Set single waypoint
	
	[_grp,[_pos,0],1,"MOVE","SAFE","RED","LINE","LIMITED",50,[5,10,6],['true','hint "hello";'],'script.sqf','wp name','wp descr',FALSE,FALSE,FALSE] call QS_fnc_taskSetSingleWaypoint;
__________________________________________________________*/

params [
	'_grp',
	'_wpCenter',
	'_wpRadius',
	'_wpType',
	'_wpBehaviour',
	'_wpCombatMode',
	'_wpFormation',
	'_wpSpeed',
	'_wpCompletionRadius',
	'_wpAttachedEntity',
	'_wpTimeout',
	'_wpStatements',
	'_wpScript',
	'_wpName',
	'_wpDescription',
	'_wpVisible',
	'_wpLock',
	'_wpForceBehaviour'
];
_newWP = _grp addWaypoint [_wpCenter,_wpRadius];
if (!(_wpType isEqualTo '')) then {
	_newWP setWaypointType _wpType;
};
if (!(_wpBehaviour isEqualTo '')) then {
	_newWP setWaypointBehaviour _wpBehaviour;
};
if (!(_wpCombatMode isEqualTo '')) then {
	_newWP setWaypointCombatMode _wpCombatMode;
};
if (!(_wpFormation isEqualTo '')) then {
	_newWP setWaypointFormation _wpFormation;
};
if (!(_wpSpeed isEqualTo '')) then {
	_newWP setWaypointSpeed _wpSpeed;
};
if (!(_wpCompletionRadius isEqualTo -1)) then {
	_newWP setWaypointCompletionRadius _wpCompletionRadius;
};
if (!isNull _wpAttachedEntity) then {
	if ((_wpAttachedEntity isKindOf 'LandVehicle') || {(_wpAttachedEntity isKindOf 'Air')} || {(_wpAttachedEntity isKindOf 'Ship')}) then {
		_newWP waypointAttachVehicle _wpAttachedEntity;
	} else {
		_newWP waypointAttachObject _wpAttachedEntity;
	};
};
if (!(_wpTimeout isEqualTo [])) then {
	_newWP setWaypointTimeout _wpTimeout;
};
if (!(_wpStatements isEqualTo [])) then {
	_newWP setWaypointStatements _wpStatements;
};
if (!(_wpScript isEqualTo '')) then {
	_newWP setWaypointScript _wpScript;
};
if (!(_wpName isEqualTo '')) then {
	_newWP setWaypointName _wpName;
};
if (!(_wpDescription isEqualTo '')) then {
	_newWP setWaypointDescription _wpDescription;
};
if (!isNil '_wpVisible') then {
	_newWP setWaypointVisible _wpVisible;
};
if (!isNil '_wpLock') then {
	_grp lockWP _wpLock;
};
if (!isNil '_wpForceBehaviour') then {
	_newWP setWaypointForceBehaviour _wpForceBehaviour;
};
_newWP;