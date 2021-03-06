/*/
File: fn_replaceWithVehicle.sqf
Author: 

	Quiksilver

Last Modified:

	13/04/2017 A3 1.68 by Quiksilver

Description:

	Replace Simple Object with vehicle
____________________________________________________________________________/*/

params ['','_prop','_clientOwner','_clientObject','_clientUID'];
if (!isNull _prop) then {
	if (isSimpleObject _prop) then {
		if (!isNil {_prop getVariable 'QS_vehicle_easterEgg'}) then {
			_position = getPosATL _prop;
			_vectorDirAndUp = [(vectorDir _prop),(vectorUp _prop)];
			_type = typeOf _prop;
			missionNamespace setVariable [
				'QS_analytics_entities_deleted',
				((missionNamespace getVariable 'QS_analytics_entities_deleted') + 1),
				FALSE
			];
			deleteVehicle _prop;
			_v = createVehicle [_type,[(random -1000),(random -1000),(1000 + (random 1000))],[],0,'NONE'];
			missionNamespace setVariable [
				'QS_analytics_entities_created',
				((missionNamespace getVariable 'QS_analytics_entities_created') + 1),
				FALSE
			];
			_v setVectorDirAndUp _vectorDirAndUp;
			_v setPosATL _position;
			_v setVariable ['QS_vehicle_delayedDelete',(diag_tickTime + 600),FALSE];
			_v addEventHandler [
				'GetOut',
				{
					params ['_vehicle'];
					if (diag_tickTime > (_vehicle getVariable ['QS_vehicle_delayedDelete',-1])) then {
						if (((crew _vehicle) findIf {(alive _x)}) isEqualTo -1) then {
							deleteVehicle _vehicle;
						};
					};
				}
			];
			[_v] call (missionNamespace getVariable 'QS_fnc_vSetup');
			(missionNamespace getVariable 'QS_garbageCollector') pushBack [_v,'DELAYED_DISCREET',300];
		} else {
			comment 'Insert spawned thread here to ensure it cant be exploited or spammed';
			_i = (missionNamespace getVariable 'QS_v_Monitor') findIf {((_x select 0) isEqualTo _prop)};
			if (!(_i isEqualTo -1)) then {
				_array = (missionNamespace getVariable 'QS_v_Monitor') select _i;
				_array params [
					'_v',
					'_vdelay',
					'_randomize',
					'_configCode',
					'_t',
					'_vpos',
					'_dir',
					'_isRespawning',
					'_canRespawnAfter',
					'_fobVehicleID',
					'_QS_vRespawnDist_base',
					'_QS_vRespawnDist_field',
					'_vRespawnTickets',
					'_nearEntitiesCheck',
					'_isDynamicVehicle',
					'_isCarrierVehicle'
				];
				missionNamespace setVariable [
					'QS_analytics_entities_deleted',
					((missionNamespace getVariable 'QS_analytics_entities_deleted') + 1),
					FALSE
				];
				deleteVehicle _prop;
				_v = createVehicle [_t,[(random -1000),(random -1000),(1000 + (random 1000))],[],0,'NONE'];
				missionNamespace setVariable [
					'QS_analytics_entities_created',
					((missionNamespace getVariable 'QS_analytics_entities_created') + 1),
					FALSE
				];
				_v setDir _dir;
				if (_isCarrierVehicle isEqualTo 0) then {
					_v setVectorUp (surfaceNormal _vpos);
					_v setPos [(_vpos select 0),(_vpos select 1),((_vpos select 2)+0.1)];
				} else {
					if (_isCarrierVehicle isEqualTo 1) then {
						_v setPosWorld _vpos;
					};
				};
				if (!((str _configCode) isEqualTo '{}')) then {
					_v call _configCode;
				};
				[_v] call (missionNamespace getVariable 'QS_fnc_vSetup');
				if (_isCarrierVehicle isEqualTo 0) then {
					_v setPos [(_vpos select 0),(_vpos select 1),((_vpos select 2)+0.1)];
				};
				(missionNamespace getVariable 'QS_v_Monitor') set [_i,[_v,_vdelay,_randomize,_configCode,_t,_vpos,_dir,FALSE,0,_fobVehicleID,_QS_vRespawnDist_base,_QS_vRespawnDist_field,_vRespawnTickets,_nearEntitiesCheck,_isDynamicVehicle,_isCarrierVehicle]];
			};
		};
	};
};