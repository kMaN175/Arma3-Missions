/*/
File: fn_AIXHitEvade.sqf
Author:

	Quiksilver
	
Last modified:

	14/04/2018 A3 1.82 by Quiksilver
	
Description:

	Evade hits
__________________________________________________/*/
params ['_u','_s','',''];
if (local _u) then {
	if ((random 1) > 0.5) then {
		if (alive _s) then {
			if (isPlayer _s) then {
				_u playAction (selectRandom ['TactLB','TactRB','TactL','TactR','TactLF','TactRf']);
				if ((random 1) > 0.5) then {
					_u playAction (selectRandom ['TactLB','TactRB','TactL','TactR','TactLF','TactRf']);
				};
			};
		};
	} else {
		if ((random 1) > 0.9) then {
			if (diag_tickTime > (_u getVariable ['QS_AI_UNIT_lastSmoke',-1])) then {
				_u setVariable ['QS_AI_UNIT_lastSmoke',(diag_tickTime + (random [15,30,45])),FALSE];
				[_u,(_u findNearestEnemy _u),'SMOKE',((random 1) > 0.5)] call (missionNamespace getVariable 'QS_fnc_AIXThrow');
			};
		};
	};
	if ((random 1) > 0.5) then {
		_u removeEventHandler ['Hit',_thisEventHandler];
		_u setVariable ['QS_AI_UNIT_gestureEvent',FALSE,FALSE];
	};
};