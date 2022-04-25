/*/
File: fn_AIXSuppressiveFire.sqf
Author:

	Quiksilver
	
Last modified:

	8/04/2018 A3 1.82 by Quiksilver
	
Description:

	Attempt suppressive fire
__________________________________________________/*/

params ['_unit'];
_unit removeEventHandler ['FiredMan',_thisEventHandler];
_unit setVariable ['QS_AI_UNIT_sfEvent',FALSE,FALSE];
_targets = [(assignedTarget _unit),(_unit findNearestEnemy _unit)] select {
	(
		((_x isKindOf 'CAManBase') && (alive _x) && ((lifeState _x) in ['HEALTHY','INJURED']) && (([_unit,'FIRE',_x] checkVisibility [(eyePos _unit),(aimPos _x)]) > 0.1)) || 
		((!(_x isKindOf 'CAManBase')) && (alive _x) && (([_unit,'FIRE',_x] checkVisibility [(eyePos _unit),(aimPos _x)]) > 0.1))
	)
};
if (!(_targets isEqualTo [])) then {
	if (!((combatMode _unit) isEqualTo 'RED')) then {
		_unit setCombatMode 'RED';
	};
	if (!((behaviour _unit) isEqualTo 'COMBAT')) then {
		_unit setBehaviour 'COMBAT';
	};
	_target = _targets select 0;
	{
		if (!(_x isEqualTo _target)) then {
			_unit forgetTarget _x;
		};
	} forEach (_unit targets [TRUE,150]);
	_unit doWatch _target;
	if ((_unit isKindOf 'AllVehicles') || {(_unit isKindOf 'CAManBase')}) then {
		_unit doTarget _target;
	};
	_unit doSuppressiveFire (aimPos _target);
	_unit setVariable ['QS_AI_UNIT_lastSuppressiveFire',(diag_tickTime + (random [20,40,60])),FALSE];
} else {
	_unit setVariable ['QS_AI_UNIT_lastSuppressiveFire',(diag_tickTime + (random [5,10,15])),FALSE];
};