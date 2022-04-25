/*/
File: fn_gpsJammer.sqf
Author:

	Quiksilver

Last Modified:

	7/04/2018 A3 1.82 by Quiksilver
	
Description:

	GPS Jammer
	
	[1,'QS_jammer_1',QS_aoPos,QS_aoPos,300] call QS_fnc_gpsJammer;
	[2,'QS_jammer_1'] call QS_fnc_gpsJammer;
_____________________________________________________/*/

params ['_type'];
if (_type isEqualTo 0) exitWith {
	params ['','_entity'];
	private _return = FALSE;
	_gpsJammers = missionNamespace getVariable ['QS_mission_gpsJammers',[]];
	if (!(_gpsJammers isEqualTo [])) then {
		if (!((_gpsJammers findIf {((_entity distance2D (_x select 2)) <= (_x select 3))}) isEqualTo -1)) then {
			_return = TRUE;
		};
	};
	_return;
};
if (_type isEqualTo 1) exitWith {
	params ['','_id','_spawnPosition','_effectPosition','_radius',['_createTask',TRUE]];
	if (isNil {missionNamespace getVariable 'QS_mission_gpsJammers'}) then {
		missionNamespace setVariable ['QS_mission_gpsJammers',[],TRUE];
	};
	private _jammer = objNull;
	if (((missionNamespace getVariable ['QS_mission_gpsJammers',[]]) findIf {((_x select 0) isEqualTo _id)}) isEqualTo -1) then {
		_jammerType = ['land_pod_heli_transport_04_box_f','land_pod_heli_transport_04_box_black_f'] select (worldName in ['Tanoa','Lingor3']);
		_jammer = createVehicle [_jammerType,[-500,-500,0],[],30,'NONE'];
		_jammer allowDamage FALSE;
		_jammer spawn {uiSleep 3;_this allowDamage TRUE;};
		_jammer setDir (random 360);
		_jammer setVehiclePosition [_spawnPosition,[],0,'NONE'];
		clearWeaponCargoGlobal _jammer;
		clearMagazineCargoGlobal _jammer;
		clearItemCargoGlobal _jammer;
		clearBackpackCargoGlobal _jammer;
		_jammer enableVehicleCargo FALSE;
		_jammer enableRopeAttach FALSE;
		_jammer setRepairCargo 0;
		_jammer setAmmoCargo 0;
		_jammer setFuelCargo 0;
		_jammer lock 2;
		_jammer enableDynamicSimulation FALSE;
		{
			_jammer setVariable _x;
		} forEach [
			['QS_inventory_disabled',TRUE,TRUE],
			['QS_curator_disableEditability',TRUE,FALSE],
			['QS_client_canAttachExp',TRUE,TRUE],
			['QS_dynSim_ignore',TRUE,TRUE],
			['QS_cleanup_protected',TRUE,TRUE]
		];
		_jammer enableSimulation TRUE;
		private _assocObjects = [];
		private _pole = objNull;
		//_soundSource = createSoundSource ['QS_deviceAssembled',(_jammer modelToWorld [0,0,0]),[],0];
		//_soundSource attachTo [_jammer,[0,0,0]];
		{
			_pole = createSimpleObject [(_x select 0),[-100,-100,0]];
			_pole attachTo [_jammer,(_x select 1)];
			_pole setDir (_x select 2);
			_assocObjects pushBack _pole;
		} forEach [
			['a3\structures_f\ind\transmitter_tower\ttowersmall_1_f.p3d',[0.85,0.1,-2],0],
			['a3\structures_f\ind\transmitter_tower\ttowersmall_1_f.p3d',[-0.85,2.3,-2],180]
		];
		_jammer setVelocity [0,0,0];
		{
			_jammer addEventHandler _x;
		} forEach [
			[
				'Killed',
				{
					params ['_killed','_killer','_instigator',''];
					if (!((attachedObjects _killed) isEqualTo [])) then {
						{
							detach _x;
							deleteVehicle _x;
						} forEach (attachedObjects _killed);
					};
					if (!isNull _instigator) then {
						if (isPlayer _instigator) then {
							_text = format ['%1 ( %2 ) destroyed a GPS jammer!',(name _instigator),(groupID (group _instigator))];
							[[WEST,'BLU'],_text] remoteExec ['sideChat',-2,FALSE];
						} else {
							[[WEST,'BLU'],'GPS jammer destroyed!'] remoteExec ['sideChat',-2,FALSE];
						};
					} else {
						[[WEST,'BLU'],'GPS jammer destroyed!'] remoteExec ['sideChat',-2,FALSE];
					};
					_gpsJammers = missionNamespace getVariable ['QS_mission_gpsJammers',[]];
					if (!(_gpsJammers isEqualTo [])) then {
						_jammerIndex = _gpsJammers findIf {((_x select 4) isEqualTo _killed)};
						if (!(_jammerIndex isEqualTo -1)) then {
							[((_gpsJammers select _jammerIndex) select 0)] call (missionNamespace getVariable 'BIS_fnc_deleteTask');
							[2,((_gpsJammers select _jammerIndex) select 0)] call (missionNamespace getVariable 'QS_fnc_gpsJammer');
						};
					};
				}
			],
			[
				'Deleted',
				{
					params ['_entity'];
					if (!((attachedObjects _entity) isEqualTo [])) then {
						{
							detach _x;
							deleteVehicle _x;
						} forEach (attachedObjects _entity);
					};
					if (alive _entity) then {
						_gpsJammers = missionNamespace getVariable ['QS_mission_gpsJammers',[]];
						if (!(_gpsJammers isEqualTo [])) then {
							_jammerIndex = _gpsJammers findIf {((_x select 4) isEqualTo _entity)};
							if (!(_jammerIndex isEqualTo -1)) then {
								[((_gpsJammers select _jammerIndex) select 0)] call (missionNamespace getVariable 'BIS_fnc_deleteTask');
								[2,((_gpsJammers select _jammerIndex) select 0)] call (missionNamespace getVariable 'QS_fnc_gpsJammer');
							};
						};
						_entity setDamage [1,FALSE];
					};
				}
			],
			[
				'HandleDamage',
				{
					params ['_vehicle','','_damage','','','_hitPartIndex','',''];
					_oldDamage = if (_hitPartIndex isEqualTo -1) then {(damage _vehicle)} else {(_vehicle getHitIndex _hitPartIndex)};
					_damage = _oldDamage + (_damage - _oldDamage) * 0.333;
					_damage;
				}
			]
		];
		if (_createTask) then {
			[
				_id,
				TRUE,
				[
					'The enemy has deployed a GPS jammer. Locate and destroy it!',
					'GPS Jammer',
					'GPS Jammer'
				],
				_effectPosition,
				'CREATED',
				5,
				FALSE,
				TRUE,
				'Destroy',
				TRUE
			] call (missionNamespace getVariable 'BIS_fnc_setTask');
		};
		(missionNamespace getVariable ['QS_mission_gpsJammers',[]]) pushBack [_id,_spawnPosition,_effectPosition,_radius,_jammer,_assocObjects];
		missionNamespace setVariable ['QS_mission_gpsJammers',(missionNamespace getVariable ['QS_mission_gpsJammers',[]]),TRUE];
	};
	_jammer;
};
if (_type isEqualTo 2) exitWith {
	params ['','_id'];
	_gpsJammers = missionNamespace getVariable ['QS_mission_gpsJammers',[]];
	if (!(_gpsJammers isEqualTo [])) then {
		_jammerIndex = _gpsJammers findIf {((_x select 0) isEqualTo _id)};
		if (!(_jammerIndex isEqualTo -1)) then {
			[_id] call (missionNamespace getVariable 'BIS_fnc_deleteTask');
			(_gpsJammers select _jammerIndex) params ['','','','',['_jammerObject',objNull],['_assocObjects',[]]];
			if (!isNull _jammerObject) then {
				_jammerObject setDamage [1,FALSE];
				(missionNamespace getVariable 'QS_garbageCollector') pushBack [_jammerObject,'NOW_DISCREET',0];
			};
			if (!(_assocObjects isEqualTo [])) then {
				{
					if (!isNull _x) then {
						deleteVehicle _x;
					};
				} forEach _assocObjects;
			};
			(missionNamespace getVariable ['QS_mission_gpsJammers',[]]) set [_jammerIndex,FALSE];
			(missionNamespace getVariable ['QS_mission_gpsJammers',[]]) deleteAt _jammerIndex;
			missionNamespace setVariable ['QS_mission_gpsJammers',(missionNamespace getVariable ['QS_mission_gpsJammers',[]]),TRUE];
		};
	};
};
if (_type isEqualTo 3) exitWith {
	params ['','_entity','_signalStrength'];
	private _return = -1;
	_gpsJammers = missionNamespace getVariable ['QS_mission_gpsJammers',[]];
	if (!(_gpsJammers isEqualTo [])) then {
		_jammerIndex = _gpsJammers findIf {((_entity distance2D (_x select 2)) <= (_x select 3))};
		if (!(_jammerIndex isEqualTo -1)) then {
			(_gpsJammers select _jammerIndex) params ['','_spawnPosition','','_radius'];
			_return = _entity distance2D _spawnPosition;
			if (_signalStrength) then {
				if ('MinimapDisplay' in ((infoPanel 'left') + (infoPanel 'right'))) then {
					[1,_spawnPosition,_radius] call (missionNamespace getVariable 'QS_fnc_signalStrength');
				};
			};
		};
	};
	_return;
};
FALSE;