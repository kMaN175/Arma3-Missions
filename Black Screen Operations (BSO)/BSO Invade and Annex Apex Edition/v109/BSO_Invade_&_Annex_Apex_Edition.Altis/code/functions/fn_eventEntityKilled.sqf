/*
File: fn_eventEntityKilled.sqf
Author:

	Quiksilver
	
Last modified:

	10/07/2017 A3 1.72 by Quiksilver
	
Description:

	Event Entity Killed
__________________________________________________*/

params ['_killed','_killer','_instigator','_useEffects'];
missionNamespace setVariable [
	'QS_analytics_entities_killed',
	((missionNamespace getVariable 'QS_analytics_entities_killed') + 1),
	FALSE
];
missionNamespace setVariable ['QS_system_entitiesKilled',((missionNamespace getVariable ['QS_system_entitiesKilled',0]) + 1),FALSE];
if (_killed isKindOf 'Man') then {
	if (!(_killed getVariable ['QS_dead_prop',FALSE])) then {
		(missionNamespace getVariable 'QS_garbageCollector') pushBack [_killed,'DEAD_M',(time + 30)];
	} else {
		if (!(allCurators isEqualTo [])) then {
			{
				_x removeCuratorEditableObjects [[_killed],TRUE];
			} forEach allCurators;
		};
	};
} else {
	if (_killed isKindOf 'AllVehicles') then {
		(missionNamespace getVariable 'QS_garbageCollector') pushBack [_killed,'DEAD_V',(time + 60)];
	};
};
if (isPlayer _killed) then {
	if (!isNull _killer) then {
		if (!(_killer isEqualTo _killed)) then {
			missionNamespace setVariable [
				'QS_playerKilledCountServer',
				((missionNamespace getVariable 'QS_playerKilledCountServer') + 1),
				FALSE
			];	
			if (unitIsUAV _killer) then {
				if (!local _killer) then {
					if (([(getPosATL _killer),15,[WEST,CIVILIAN],allPlayers,0] call (missionNamespace getVariable 'QS_fnc_serverDetector')) isEqualTo []) then {
						deleteVehicle _killer;
					};
				};
			};
		};
	};
} else {
	if ((vehicle _killed) isKindOf 'Man') then {
		if (local _killed) then {
			if (!(_killed getVariable ['QS_dead_prop',FALSE])) then {
				{
					_killed setVariable [_x,nil,FALSE];
				} count (allVariables _killed);
			};
		};
		if ((toLower (typeOf _killed)) in ['o_sniper_f','o_ghillie_ard_f','o_ghillie_lsh_f','o_ghillie_sard_f','o_t_sniper_f','o_t_ghillie_tna_f']) then {
			if (!isNull _killer) then {
				if (isPlayer _killer) then {
					if (!((vehicle _killer) isKindOf 'Air')) then {
						_text = format ['Enemy sniper ( %1 ) killed by %2!',(name _killed),(name _killer)];
						['systemChat',_text] remoteExec ['QS_fnc_remoteExecCmd',-2,FALSE];
					};
				};
			};
		};
	} else {
		if (_killed isKindOf 'Reammobox_F') then {
			if (!isNull (attachedTo _killed)) then {
				detach _killed;
			};
		};
		if (_killed isKindOf 'AllVehicles') then {
			{
				if (alive _x) then {
					detach _x;
					_x setDamage [1,FALSE];
					deleteVehicle _x;
				};
			} count (attachedObjects _killed);
		};
	};
};