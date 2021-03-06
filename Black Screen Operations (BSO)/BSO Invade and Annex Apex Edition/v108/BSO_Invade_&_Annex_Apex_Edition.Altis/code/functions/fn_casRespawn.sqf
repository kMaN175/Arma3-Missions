/*/
File: fn_casRespawn.sqf
Author: 

	Quiksilver
	
Last modified:

	8/04/2018 A3 1.82 by Quiksilver

Description: 

	Respawn CAS
	
List of jets:

	'b_plane_cas_01_f',
	'b_plane_cas_01_dynamicloadout_f',
	'b_plane_cas_01_cluster_f',
	'b_plane_fighter_01_f',
	'b_plane_fighter_01_stealth_f',
	'b_plane_fighter_01_cluster_f',
	'o_plane_cas_02_f',
	'o_plane_cas_02_dynamicloadout_f',
	'o_plane_cas_02_cluster_f',
	'o_plane_fighter_02_f',
	'o_plane_fighter_02_stealth_f',
	'o_plane_fighter_02_cluster_f',
	'i_plane_fighter_03_aa_f',
	'i_plane_fighter_03_cas_f',
	'i_plane_fighter_03_dynamicloadout_f',
	'i_plane_fighter_03_cluster_f',
	'i_plane_fighter_04_f',
	'i_plane_fighter_04_cluster_f'
___________________________________________________________________________/*/

if (!(alive (missionNamespace getVariable 'QS_fighterPilot'))) exitWith {};
_casJetObj = missionNamespace getVariable ['QS_casJet',objNull];
if ( (!(canMove _casJetObj)) && ((fuel _casJetObj) isEqualTo 0) && (((getPosATL _casJetObj) select 2) < 10) && ((crew _casJetObj) isEqualTo []) ) then {
	_casJetObj setDamage [1,FALSE];
};
if (alive _casJetObj) exitWith {};
_missionConfig_CAS = missionNamespace getVariable ['QS_missionConfig_CAS',2];
if (_missionConfig_CAS isEqualTo 0) exitWith {};
private _exit = FALSE;
private _pool = [];
private _isCarrier = FALSE;
private _pos = [0,0,0];
private _dir = 0;
private _typeOverride = '';
if (_missionConfig_CAS isEqualTo 1) then {
	_pool = [
		'O_Plane_CAS_02_dynamicLoadout_F',1,
		'O_Plane_Fighter_02_F',1,
		'B_Plane_Fighter_01_F',2,
		'B_Plane_CAS_01_dynamicLoadout_F',2,
		'I_Plane_Fighter_04_F',1
	];
};
if (_missionConfig_CAS isEqualTo 2) then {
	_pool = [
		'O_Plane_CAS_02_dynamicLoadout_F',1,
		'O_Plane_Fighter_02_F',1,
		'B_Plane_Fighter_01_F',2,
		'B_Plane_CAS_01_dynamicLoadout_F',2,
		'I_Plane_Fighter_04_F',1
	];
};
if (_missionConfig_CAS isEqualTo 3) then {
	private _pilot = missionNamespace getVariable ['QS_fighterPilot',objNull];
	_uid = getPlayerUID _pilot;
	if (_uid isEqualTo '') exitWith {_exit = TRUE;};
	private _airIndex = ((missionNamespace getVariable 'QS_CAS_jetAllowance') findIf {((_x select 0) isEqualTo _uid)});
	if (_airIndex isEqualTo -1) exitWith {_exit = TRUE;};
	diag_log format ['***** CAS RESPAWN ***** SPAWNING JET FOR %1 * %2 *****',(name _pilot),((missionNamespace getVariable 'QS_CAS_jetAllowance') select _airIndex)];
	private _aircraftPool = ((missionNamespace getVariable 'QS_CAS_jetAllowance') select _airIndex) select 1;
	if (_aircraftPool >= 3) exitWith {
		if (isPlayer _pilot) then {
			if (_pilot getUnitTrait 'QS_trait_fighterPilot') then {
				[
					[],
					{
						if (player getUnitTrait 'QS_trait_fighterPilot') then {
							endMission 'QS_RD_end_7';
						};
					}
				] remoteExec ['call',_pilot,FALSE];
			};
		};
		_exit = TRUE;
	};
	if (!(missionNamespace getVariable ['QS_casJet_destroyedAtBase',FALSE])) then {
		_aircraftPool = _aircraftPool + 1;
	};
	if (!((missionNamespace getVariable ['QS_casJet_destroyedAtBase_type','']) isEqualTo '')) then {
		_typeOverride = missionNamespace getVariable ['QS_casJet_destroyedAtBase_type',''];
		missionNamespace setVariable ['QS_casJet_destroyedAtBase_type','',FALSE];
	};
	(missionNamespace getVariable 'QS_CAS_jetAllowance') set [_airIndex,[_uid,_aircraftPool]];
	missionNamespace setVariable ['QS_casJet_destroyedAtBase',FALSE,FALSE];
	['sideChat',[WEST,'AirBase'],(format ['Aircraft spawning (%1/%2) ...',_aircraftPool,(missionNamespace getVariable ['QS_CAS_jetAllowance_value',3])])] remoteExec ['QS_fnc_remoteExecCmd',_pilot,FALSE];
	private ['_newCasType','_dir','_obstructions','_obstructionArray'];
	comment 'Now lets decide what will spawn';
	private [
		'_playerPilot','_pilotTransportRank','_pilotLeaderboards','_pilotLeaderboardIndex','_pilotScore','_countLeaderboard',
		'_pool0','_pool1','_pool2','_pool3','_pool4'
	];
	_playerPilot = missionNamespace getVariable ['QS_fighterPilot',objNull];
	if (isNull _playerPilot) exitWith {
		_exit = TRUE;
	};
	if (!isPlayer _playerPilot) exitWith {
		_exit = TRUE;
	};
	_pool0 = [
		'O_Plane_CAS_02_dynamicLoadout_F',0,
		'O_Plane_Fighter_02_F',0,
		'O_Plane_Fighter_02_Stealth_F',0,
		'B_Plane_Fighter_01_F',0,
		'B_Plane_Fighter_01_Stealth_F',0,
		'B_Plane_CAS_01_dynamicLoadout_F',0,
		'I_Plane_Fighter_03_dynamicLoadout_F',1,
		'I_Plane_Fighter_04_F',0,
		'i_c_plane_civil_01_f',0
	];
	_pool1 = [
		'O_Plane_CAS_02_dynamicLoadout_F',1,
		'O_Plane_Fighter_02_F',1,
		'O_Plane_Fighter_02_Stealth_F',1,
		'B_Plane_Fighter_01_F',1,
		'B_Plane_Fighter_01_Stealth_F',1,
		'B_Plane_CAS_01_dynamicLoadout_F',1,
		'I_Plane_Fighter_03_dynamicLoadout_F',5,
		'I_Plane_Fighter_04_F',5,
		'i_c_plane_civil_01_f',0
	];
	_pool2 = [
		'O_Plane_CAS_02_dynamicLoadout_F',1,
		'O_Plane_Fighter_02_F',1,
		'O_Plane_Fighter_02_Stealth_F',1,
		'B_Plane_Fighter_01_F',1,
		'B_Plane_Fighter_01_Stealth_F',1,
		'B_Plane_CAS_01_dynamicLoadout_F',1,
		'I_Plane_Fighter_03_dynamicLoadout_F',1,
		'I_Plane_Fighter_04_F',1,
		'i_c_plane_civil_01_f',0
	];
	_pool3 = [
		'O_Plane_CAS_02_dynamicLoadout_F',3,
		'O_Plane_Fighter_02_F',3,
		'O_Plane_Fighter_02_Stealth_F',1,
		'B_Plane_Fighter_01_F',3,
		'B_Plane_Fighter_01_Stealth_F',1,
		'B_Plane_CAS_01_dynamicLoadout_F',3,
		'I_Plane_Fighter_03_dynamicLoadout_F',0,
		'I_Plane_Fighter_04_F',2,
		'i_c_plane_civil_01_f',0
	];
	_pool4 = [
		'O_Plane_CAS_02_dynamicLoadout_F',5,
		'O_Plane_Fighter_02_F',5,
		'O_Plane_Fighter_02_Stealth_F',1,
		'B_Plane_Fighter_01_F',5,
		'B_Plane_Fighter_01_Stealth_F',1,
		'B_Plane_CAS_01_dynamicLoadout_F',5,
		'I_Plane_Fighter_03_dynamicLoadout_F',0,
		'I_Plane_Fighter_04_F',1,
		'i_c_plane_civil_01_f',0
	];
	_pilotLeaderboards = (missionNamespace getVariable ['QS_leaderboards',[[],[],[]]]) select 1;
	_pilotLeaderboards select {((_x select 0) >= 10)};
	_pilotLeaderboards sort FALSE;
	_countLeaderboard = count _pilotLeaderboards;
	_pilotLeaderboardIndex = (_pilotLeaderboards findIf {((_x select 1) isEqualTo _uid)});
	if (!(_pilotLeaderboardIndex isEqualTo -1)) then {
		_pilotTransportRank = _pilotLeaderboardIndex + 1;
		_pilotScore = (_pilotLeaderboards select _pilotLeaderboardIndex) select 0;
		_pilotRankCoef = 1 - (_pilotTransportRank / _countLeaderboard);
		if (_pilotScore >= 10) then {
			if (_pilotRankCoef > 0.5) then {
				if (_pilotRankCoef > 0.75) then {
					if (_pilotRankCoef > 0.9) then {
						_pool = _pool4;
					} else {
						_pool = _pool3;
					};
				} else {
					_pool = _pool2;
				};
			} else {
				_pool = _pool1;
			};
		} else {
			_pool = _pool0;
		};
	} else {
		_pool = _pool0;
	};
};
if (_exit) exitWith {};
_newCasType = selectRandomWeighted _pool;
if (!(_typeOverride isEqualTo '')) then {
	_newCasType = _typeOverride;
};
if ((missionNamespace getVariable ['QS_missionConfig_carrierEnabled',0]) isEqualTo 0) then {
	if ((missionNamespace getVariable ['QS_missionConfig_baseLayout',0]) isEqualTo 0) then {
		if (worldName isEqualTo 'Altis') then {
			_pos = [14453.5,16278.9,0.1];
			_dir = 210.788;
		};
		if (worldName isEqualTo 'Tanoa') then {
			_pos = [6848.31,7267.26,0.1];
			_dir = 37.3149;
		};
		if (worldName isEqualTo 'Malden') then {
			_pos = [8068.67,10002.2,0.395561];
			_dir = 358.366;
		};
	} else {
		_pos = markerPos 'QS_marker_casJet_spawn';
		_dir = markerDir 'QS_marker_casJet_spawn';
	};
	[_pos,15,20,50] call (missionNamespace getVariable 'QS_fnc_clearPosition');
} else {
	_newCasType = 'B_Plane_Fighter_01_F';
	_isCarrier = TRUE;
	_pos = ((missionNamespace getVariable 'QS_carrierObject') modelToWorldWorld [-30.228,82.3711,25.7758]);
	_dir = ((getDir (missionNamespace getVariable 'QS_carrierObject')) - -90.623);
};
[_pos,_dir,_newCasType,_isCarrier] spawn {
	params ['_pos','_dir','_newCasType','_isCarrier'];
	uiSleep 0.01;
	missionNamespace setVariable [
		'QS_casJet',
		(createVehicle [_newCasType,[-500,-500,100],[],0,'CAN_COLLIDE']),
		TRUE
	];
	missionNamespace setVariable [
		'QS_analytics_entities_created',
		((missionNamespace getVariable 'QS_analytics_entities_created') + 1),
		FALSE
	];
	private _casJet = missionNamespace getVariable 'QS_casJet';
	_casJet setDir _dir;
	if (_isCarrier) then {
		_casJet animateSource ['wing_fold_r',1,TRUE];
		_casJet animateSource ['wing_fold_l',1,TRUE];
		_casJet setPosWorld _pos;
		_casJet setVelocity [0,0,0];
	} else {
		_casJet setPos _pos;
	};
	_casJet setVariable ['QS_casJet_ownerUID',(getPlayerUID (missionNamespace getVariable 'QS_fighterPilot')),FALSE];
	_casJet disableTIEquipment TRUE;
	_casJet setVariable ['QS_ropeAttached',FALSE,TRUE];
	_casJet lock 0;
	_casJet setVehicleReportRemoteTargets FALSE;
	_casJet setVehicleReceiveRemoteTargets (!(missionNamespace getVariable ['QS_virtualSectors_sub_1_active',FALSE]));
	_casJet setVehicleReportOwnPosition (!(missionNamespace getVariable ['QS_virtualSectors_sub_1_active',FALSE]));
	[_casJet,1,[]] call (missionNamespace getVariable 'QS_fnc_vehicleLoadouts');
	_casJet addMPEventHandler [
		'MPKilled',
		{
			params ['_jet','_killer','_instigator','_useEffects'];
			private _text = '';
			if (((getPosATL _jet) select 2) > 20) then {
				_text = 'Our CAS has been shot down!';
			} else {
				_text = 'Our CAS has been destroyed!';
			};
			if (!isDedicated) then {
				[WEST,'AirBase'] sideChat _text;
			};
			if (isDedicated) then {
				if ((_jet distance2D (markerPos 'QS_marker_base_marker')) < 600) then {
					missionNamespace setVariable ['QS_casJet_destroyedAtBase',TRUE,FALSE];
					missionNamespace setVariable ['QS_casJet_destroyedAtBase_type',(typeOf _jet),FALSE];
				};
				(missionNamespace getVariable 'QS_garbageCollector') pushBack [_jet,'NOW_DISCREET',0];
			};
		}
	];
	_casJet addEventHandler [
		'Deleted',
		{
			params ['_entity'];
		}
	];
	/*/QS_v_Monitor pushBack [_casJet,30,FALSE,{},_newCasType,_pos,_dir,false,0,-1,50,500,0,6,FALSE,0];/*/
	_casJet allowDamage FALSE;
	_casJet enableRopeAttach FALSE;
	_casJet enableVehicleCargo FALSE;
	_casJet setVariable ['QS_ropeAttached',FALSE,TRUE];
	_casJet addEventHandler [
		'GetIn',
		{
			(_this select 0) removeEventHandler ['GetIn',_thisEventHandler];
			if (!simulationEnabled (_this select 0)) then {
				(_this select 0) enableSimulationGlobal TRUE;
			};
			(_this select 0) allowDamage TRUE;
		}
	];
	['setFeatureType',_casJet,2] remoteExec ['QS_fnc_remoteExecCmd',-2,_casJet];
	if ((toLower (typeOf _casJet)) in ['c_plane_civil_01_racing_f','c_plane_civil_01_f','i_c_plane_civil_01_f']) then {
		[_casJet] call (missionNamespace getVariable 'QS_fnc_Q51');
	};
	if (_casJet isKindOf 'I_Plane_Fighter_03_dynamicLoadout_F') then {
		_casJet removeWeapon 'missiles_SCALPEL';
	};
	if (_casJet isKindOf 'B_Plane_CAS_01_dynamicLoadout_F') then {
		_casJet removeWeapon 'Missile_AGM_02_Plane_CAS_01_F';
	};
	if (_casJet isKindOf 'O_Plane_CAS_02_dynamicLoadout_F') then {
		_casJet removeWeapon 'Missile_AGM_01_Plane_CAS_02_F';
	};
	if ((toLower _newCasType) in ['o_plane_fighter_02_f','o_plane_fighter_02_stealth_f']) then {
		{
			_casJet setObjectTextureGlobal _x;
		} forEach [
			[0,"a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Blue_co.paa"],
			[1,"a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_02_Blue_co.paa"],
			[2,"a3\air_f_jets\plane_fighter_02\data\Fighter_02_fuselage_01_Blue_co.paa"],
			[3,"a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_02_co.paa"],
			[4,"a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_00_co.paa"],
			[5,"a3\air_f_jets\plane_fighter_02\data\Numbers\Fighter_02_number_01_co.paa"]
		];
	};
	if ((toLower _newCasType) in ['i_plane_fighter_04_f']) then {
		{
			_casJet setObjectTextureGlobal _x;
		} forEach [
			[0,"a3\air_f_jets\plane_fighter_04\data\Fighter_04_fuselage_01_co.paa"],
			[1,"a3\air_f_jets\plane_fighter_04\data\Fighter_04_fuselage_02_co.paa"],
			[2,"a3\air_f_jets\plane_fighter_04\data\fighter_04_misc_01_co.paa"],
			[3,"a3\air_f_jets\plane_fighter_04\data\Numbers\Fighter_04_number_04_ca.paa"],
			[4,"a3\air_f_jets\plane_fighter_04\data\Numbers\Fighter_04_number_04_ca.paa"],
			[5,"a3\air_f_jets\plane_fighter_04\data\Numbers\Fighter_04_number_08_ca.paa"]
		];	
	};
};