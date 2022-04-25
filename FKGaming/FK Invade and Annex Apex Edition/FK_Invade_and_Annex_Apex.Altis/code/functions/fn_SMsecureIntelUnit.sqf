/*/
File: secureIntelUnit.sqf
Author:

	Quiksilver
	
Last Modified:

	7/9/2018 A3 1.84 by Quiksilver
	
Description:

	Recover intel from a unit
___________________________________________________________________________/*/

scriptName 'Side Mission - Secure Intel Unit';

private [
	"_objVehTypes","_objVehType","_chaseTime","_chaseTimer","_emptySpawnPos","_altVehTypes","_altVehType",
	"_objUnitTypes","_objUnitType","_currentIntelPos","_notEscaping","_gettingAway","_heEscaped","_surrenderTrigger",
	"_aGroup","_bGroup","_cGroup","_decoy1","_decoy2","_obj1","_obj2","_obj3","_intelDriver","_decoyDriver1",
	"_decoyDriver2","_intelObj","_enemiesArray","_randomDir","_poi","_flatPos","_flatPos1","_flatPos2","_flatPos3",
	"_position","_accepted","_fuzzyPos","_briefing","_escapeWP","_meetingPos",'_crewUnitType'
];

if (worldName isEqualTo 'Tanoa') then {
	_objVehTypes = ["I_C_Van_01_transport_F","I_C_Offroad_02_unarmed_F","O_T_MRAP_02_ghex_F","O_T_LSV_02_unarmed_F","I_MRAP_03_F"];
	_altVehTypes = ["O_T_MRAP_02_ghex_F"];
	_objUnitTypes = ["O_T_Officer_F","I_officer_F"];
	_crewUnitType = 'O_T_crew_F';
} else {
	_objVehTypes = ["O_MRAP_02_F","I_MRAP_03_F","O_MRAP_02_F","C_Offroad_01_F","C_SUV_01_F","C_Van_01_transport_F"];
	_altVehTypes = ["O_MRAP_02_F"];
	_objUnitTypes = ["O_officer_F","I_officer_F"];
	_crewUnitType = 'O_crew_F';
};

_chaseTime = 0;
_chaseTimer = 1200;

/*/-------------------------------------------------------------------------- FIND POSITION FOR MISSION/*/

_flatPos = [0,0,0];
_accepted = false;
while {!_accepted} do {
	_flatPos = ['WORLD',-1,-1,'LAND',[10,0,0.2,10,0,FALSE,objNull],TRUE,[],[],TRUE] call (missionNamespace getVariable 'QS_fnc_findRandomPos');
	if (!((([(_flatPos select 0),(_flatPos select 1)] nearRoads 50) select {((_x isEqualType objNull) && (!((roadsConnectedTo _x) isEqualTo [])))}) isEqualTo [])) then {
		if ((_flatPos distance (markerPos 'QS_marker_base_marker')) > 1700) then {
			if ((_flatPos distance (missionNamespace getVariable 'QS_AOpos')) > 1500) then {
				if ((_flatPos distance (markerPos 'Almyra_blacklist_area')) > 2000) then {
					if (missionNamespace getVariable 'QS_module_fob_enabled') then {
						if ((_flatPos distance (markerPos 'QS_marker_module_fob')) < 4000) then {
							if ((_flatPos distance (markerPos 'QS_marker_module_fob')) > 1000) then {
								_accepted = TRUE;
							};
						};
					} else {
						_accepted = TRUE;
					};
				};
			};
		};
	};
	if (_accepted) exitWith {};
};
	
/*/-------------------------------------------------------------------------- NEARBY POSITIONS TO SPAWN STUFF (THEY SPAWN IN TRIANGLE SO NO ONE WILL KNOW WHICH IS THE OBJ. HEHEHEHE./*/ 

_flatPos1 = _flatPos getPos [2,(random 360)];
_flatPos2 = _flatPos getPos [10,(random 360)];
_flatPos3 = _flatPos getPos [15,(random 360)];

/*/-------------------------------------------------------------------------- CREATE GROUP, VEHICLE AND UNIT/*/
	
_aGroup = createGroup [EAST,TRUE];
_bGroup = createGroup [EAST,TRUE];
_cGroup = createGroup [EAST,TRUE];

/*/--------- INTEL OBJ/*/

_objVehType = selectRandom _objVehTypes;
_obj1 = createVehicle [_objVehType,_flatPos1,[],0,'NONE'];
missionNamespace setVariable [
	'QS_analytics_entities_created',
	((missionNamespace getVariable 'QS_analytics_entities_created') + 1),
	FALSE
];
_obj1 setDir (random 360);
_obj1 enableRopeAttach FALSE;
_obj1 enableVehicleCargo FALSE;
_obj1 setVectorUp (surfaceNormal (getPosWorld _obj1));
_obj1 setVariable ['QS_reportTarget_disable',TRUE,TRUE];
_objUnitType = selectRandom _objUnitTypes;
_intelObj = _aGroup createUnit [_objUnitType,_flatPos1,[],0,'NONE'];
_intelDriver = _aGroup createUnit [_crewUnitType,_flatPos1,[],0,'NONE'];
missionNamespace setVariable [
	'QS_analytics_entities_created',
	((missionNamespace getVariable 'QS_analytics_entities_created') + 2),
	FALSE
];
_intelDriver = _intelDriver call (missionNamespace getVariable 'QS_fnc_unitSetup');
_intelObj assignAsCargo _obj1;

_intelDriver assignAsDriver _obj1;
_intelDriver moveInDriver _obj1;
_intelObj addEventHandler [
	'Killed',
	{
		private ["_object","_killer","_name",'_objType','_killerType','_killerDisplayName','_objDisplayName'];
		_object = _this select 0;
		_killer = _this select 1;
		_objType = typeOf _object;
		if (QS_sideMissionUp) then {
			if (isPlayer _killer) then {
				_killerType = typeOf (vehicle _killer);
				_killerDisplayName = getText (configFile >> 'CfgVehicles' >> _killerType >> 'displayName');
				_objDisplayName = getText (configFile >> 'CfgVehicles' >> _objType >> 'displayName');
				_name = name _killer;
				['sideChat',[WEST,'BLU'],format ['%1 has killed the intel objective!',_name]] remoteExec ['QS_fnc_remoteExecCmd',-2,FALSE];
			};
		};
	}
];
_intelObj setAnimSpeedCoef 0.8;

/*/--------- OBJ 2 /*/

_objVehType = selectRandom _objVehTypes;
_obj2 = createVehicle [_objVehType,_flatPos2,[],0,'NONE'];
missionNamespace setVariable [
	'QS_analytics_entities_created',
	((missionNamespace getVariable 'QS_analytics_entities_created') + 1),
	FALSE
];
_obj2 setDir (random 360);
_obj2 enableRopeAttach FALSE;
_obj2 enableVehicleCargo FALSE;
_obj2 setVectorUp (surfaceNormal (getPosWorld _obj2));
_obj2 setVariable ['QS_reportTarget_disable',TRUE,TRUE];
_objUnitType = selectRandom _objUnitTypes;
_decoy1 = _bGroup createUnit [_objUnitType,_flatPos1,[],0,'NONE'];
_decoyDriver1 = _bGroup createUnit [_crewUnitType,_flatPos1,[],0,'NONE'];
missionNamespace setVariable [
	'QS_analytics_entities_created',
	((missionNamespace getVariable 'QS_analytics_entities_created') + 2),
	FALSE
];
_decoyDriver1 = _decoyDriver1 call (missionNamespace getVariable 'QS_fnc_unitSetup');
_decoy1 assignAsCargo _obj2;
_decoyDriver1 assignAsDriver _obj2;
_decoyDriver1 moveInDriver _obj2;

/*/-------- OBJ 3/*/

_altVehType = selectRandom _altVehTypes;
_obj3 = createVehicle [_altVehType,_flatPos3,[],0,'NONE'];
missionNamespace setVariable [
	'QS_analytics_entities_created',
	((missionNamespace getVariable 'QS_analytics_entities_created') + 1),
	FALSE
];
_obj3 setDir (random 360);
_obj3 enableRopeAttach FALSE;
_obj3 enableVehicleCargo FALSE;
_obj3 setVectorUp (surfaceNormal (getPosWorld _obj3));
_obj3 setVariable ['QS_reportTarget_disable',TRUE,TRUE];
_objUnitType = selectRandom _objUnitTypes;
_decoy2 = _cGroup createUnit [_objUnitType,_flatPos1,[],0,'NONE'];
_decoyDriver2 = _cGroup createUnit [_crewUnitType,_flatPos1,[],0,'NONE'];
missionNamespace setVariable [
	'QS_analytics_entities_created',
	((missionNamespace getVariable 'QS_analytics_entities_created') + 2),
	FALSE
];
_decoyDriver2 = _decoyDriver2 call (missionNamespace getVariable 'QS_fnc_unitSetup');
_decoy2 assignAsCargo _obj3;
_decoyDriver2 assignAsDriver _obj3;
_decoyDriver2 moveInDriver _obj3;

/*/---------- COMMON/*/

{_x lock 3;} forEach [_obj1,_obj2,_obj3];
{
	_x setVariable ['QS_dynSim_ignore',TRUE,TRUE];
	_x enableDynamicSimulation FALSE;
} forEach [_obj1,_obj2,_obj3,_aGroup,_bGroup,_cGroup,_decoy2,_decoy1,_intelObj,_decoyDriver1,_decoyDriver2,_intelDriver];
[(units _aGroup),2] call (missionNamespace getVariable 'QS_fnc_serverSetAISkill');
[(units _bGroup),2] call (missionNamespace getVariable 'QS_fnc_serverSetAISkill');
[(units _cGroup),2] call (missionNamespace getVariable 'QS_fnc_serverSetAISkill');
	
/*/--------------------------------------------------------------------------- ADD ACTION TO OBJECTIVE./*/

{
	_x limitSpeed 18;
	removeAllWeapons _x;
} forEach [
	_intelObj,
	_decoy1,
	_decoy2
];
_intelObj doWatch (selectRandom [_decoy1,_decoy2]);
_decoy1 doWatch (selectRandom [_intelObj,_decoy2]);
_decoy2 doWatch (selectRandom [_decoy1,_intelObj]);
{
	_x disableAI 'PATH';
} forEach [_intelObj,_decoy1,_decoy2,_intelDriver,_decoyDriver1,_decoyDriver2];

for '_x' from 0 to 2 step 1 do {
	_intelObj setVariable ['QS_surrenderable',TRUE,TRUE];
	_intelObj setVariable ['QS_missionSurrender',TRUE,TRUE];
};
_intelObj addEventHandler [
	'FiredNear',
	{
		params ['_unit','_firer','_distance','_weapon','_muzzle','_mode','_ammo'];
		_unit removeAllEventHandlers 'FiredNear';
		missionNamespace setVariable ['QS_sm_enemyDetected',TRUE,FALSE];
	}
];

/*/--------------------------------------------------------------------------- SPAWN GUARDS/*/

_enemiesArray = [_flatPos] call (missionNamespace getVariable 'QS_fnc_smEnemyEastIntel');
	
/*/--------------------------------------------------------------------------- BRIEFING/*/

_fuzzyPos = [((_flatPos select 0) - 300) + (random 600),((_flatPos select 1) - 300) + (random 600),0];
{
	_x setMarkerPos _fuzzyPos;
	_x setMarkerAlpha 1;
} count ['QS_marker_sideMarker','QS_marker_sideCircle'];	
'QS_marker_sideMarker' setMarkerText (format ['%1Secure Intel (Officer)',(toString [32,32,32])]);

[
	'QS_IA_TASK_SM_0',
	TRUE,
	[
		'Sensitive intel is changing hands between high-ranking enemy officers. Get over there and arrest the officer! Once arrested he will turn over the intel. After this you may execute him, but do it quietly. If they detect our presence, they may attempt to escape. This objective is not accurately marked.',
		'Secure Intel (Officer)',
		'Secure Intel (Officer)'
	],
	(markerPos 'QS_marker_sideMarker'),
	'CREATED',
	5,
	FALSE,
	TRUE,
	'download',
	TRUE
] call (missionNamespace getVariable 'BIS_fnc_setTask');
_briefing = parseText "<t align='center'><t size='2.2'>New Side Mission</t><br/><t size='1.5' color='#00B2EE'>Secure Intel</t><br/>____________________<br/>We have reports from locals that sensitive, strategic information is changing hands. This is a target of opportunity!<br/><br/>We've marked the position on your map; head over there and secure the intel. It should be stored on one of the vehicles or on their persons.</t>";
['hint',_briefing] remoteExec ['QS_fnc_remoteExecCmd',-2,FALSE];
['NewSideMission',['Secure Intel']] remoteExec ['QS_fnc_showNotification',-2,FALSE];

/*/============= SET VARS/*/

missionNamespace setVariable ['QS_sideMissionUp',TRUE,TRUE];
_notEscaping = TRUE;
_gettingAway = FALSE;
_heEscaped = FALSE;
missionNamespace setVariable ['HE_ESCAPED',FALSE,FALSE];
missionNamespace setVariable ['QS_smSuccess',FALSE,TRUE];
missionNamespace setVariable ['HE_SURRENDERS',FALSE,TRUE];
missionNamespace setVariable ['QS_sm_enemyDetected',FALSE,FALSE];
	
/*/-------------------------- CORE LOOP/*/
	
for '_x' from 0 to 1 step 0 do {
	/*/------------------------------------------ IF VEHICLE IS DESTROYED [FAIL]/*/
	
	if (!alive _intelObj) exitWith {

		/*/---------- DE-BRIEF/*/

		['sideChat',[WEST,'HQ'],'Objective killed, mission FAILED!'] remoteExec ['QS_fnc_remoteExecCmd',-2,FALSE];
		missionNamespace setVariable ['QS_sideMissionUp',FALSE,TRUE];
		[0,_flatPos] spawn (missionNamespace getVariable 'QS_fnc_smDebrief');
		{
			_x setMarkerPos [-5000,-5000,0];
			_x setMarkerAlpha 0;
		} count ['QS_marker_sideMarker','QS_marker_sideCircle'];

		/*/---------- DELETE/*/
		
		sleep 120;
		{
			missionNamespace setVariable [
				'QS_analytics_entities_deleted',
				((missionNamespace getVariable 'QS_analytics_entities_deleted') + 1),
				FALSE
			];
			deleteVehicle _x;
		} forEach [_intelObj,_decoy1,_decoy2,_intelDriver,_obj1,_obj2,_obj3,_decoyDriver1,_decoyDriver2];
		{
			if (_x isEqualType objNull) then {
				0 = QS_garbageCollector pushBack [_x,'NOW_DISCREET',0];
			};
		} count _enemiesArray;
	};
	
	/*/----------------------------------------- IS THE ENEMY TRYING TO ESCAPE? /*/
	
	if (_notEscaping) then {
	
		/*/---------- NO? then LOOP until YES or an exitWith {}./*/

		if (([_intelObj,500] call (missionNamespace getVariable 'QS_fnc_enemyDetected')) || {(missionNamespace getVariable 'QS_sm_enemyDetected')}) then {
			missionNamespace setVariable ['QS_sm_enemyDetected',FALSE,FALSE];
			{
				_x enableAI 'PATH';
			} forEach [_intelObj,_decoy1,_decoy2,_intelDriver,_decoyDriver1,_decoyDriver2];
			['sideChat',[WEST,'HQ'],'Target has spotted us and is trying to escape with the intel!'] remoteExec ['QS_fnc_remoteExecCmd',-2,FALSE];
		
			/*/---------- WHERE TO / HOW WILL THE OBJECTIVES ESCAPE?/*/
			
			{
				_escape1WP = _x addWaypoint [(missionNamespace getVariable 'QS_AOpos'),100];	
				_escape1WP setWaypointType 'MOVE';
				_escape1WP setWaypointBehaviour 'CARELESS';
				_escape1WP setWaypointSpeed 'FULL';
			} forEach [_aGroup,_bGroup,_cGroup];

			/*/---------- SET GETTING AWAY TO TRUE TO DETECT IF HE'S ESCAPED./*/
			
			_gettingAway = TRUE;
			_chaseTime = time + _chaseTimer;
			
			/*/---------- END THE NOT ESCAPING LOOP/*/
		
			_notEscaping = FALSE;
		};
	};
	
	/*/-------------------------------------------- THE ENEMY IS TRYING TO ESCAPE/*/
	
	if (_gettingAway) then {
	
		_currentIntelPos = getPosWorld (vehicle _intelObj);
		if ((_currentIntelPos distance (missionNamespace getVariable 'QS_AOpos')) < 300) then {
			_heEscaped = TRUE;
			_gettingAway = FALSE;
		};
		if (([_currentIntelPos,1000,[WEST],(allPlayers + allUnitsUav),0] call (missionNamespace getVariable 'QS_fnc_serverDetector')) isEqualTo []) then {
			_heEscaped = TRUE;
			_gettingAway = FALSE;
		};
		if ((time > _chaseTime) && (([_currentIntelPos,500,[WEST],(allPlayers + allUnitsUav),0] call (missionNamespace getVariable 'QS_fnc_serverDetector')) isEqualTo [])) then {
			_heEscaped = TRUE;
			_gettingAway = FALSE;
		};
		
		/*/---------- DETECT IF HE SURRENDERS/*/
	
		if (missionNamespace getVariable 'HE_SURRENDERS') then {
			removeAllWeapons _intelObj;
			_intelObj playActionNow 'Surrender';
			_intelObj disableAI 'MOVE';
			_intelObj disableAI 'FSM';
			[_intelObj] joinSilent (createGroup [WEST,TRUE]);
			for '_x' from 0 to 2 step 1 do {
				_intelObj setVariable ['QS_secureable',TRUE,TRUE];
			};
		};
		
	};
	
	if (!(_intelObj inArea 'QS_marker_sideCircle')) then {
		_fuzzyPos = [(((position _intelObj) select 0) - 300) + (random 600),(((position _intelObj) select 1) - 300) + (random 600),0];
		{
			_x setMarkerPos _fuzzyPos;
			_x setMarkerAlpha 1;
		} count ['QS_marker_sideMarker','QS_marker_sideCircle'];
		['QS_IA_TASK_SM_0',_fuzzyPos] call (missionNamespace getVariable 'BIS_fnc_taskSetDestination');
	};
	
	/*/------------------------------------------- THE ENEMY ESCAPED [FAIL]/*/
	
	if (_heEscaped) exitWith {
			
		/*/---------- DE-BRIEF/*/
		['sideChat',[WEST,'HQ'],'Objective escaped, mission FAILED!'] remoteExec ['QS_fnc_remoteExecCmd',-2,FALSE];
		missionNamespace setVariable ['QS_sideMissionUp',FALSE,TRUE];
		[0,_flatPos] spawn (missionNamespace getVariable 'QS_fnc_smDebrief');
		{
			_x setMarkerPos [-5000,-5000,0];
			_x setMarkerAlpha 0;
		} count ['QS_marker_sideMarker','QS_marker_sideCircle'];
		
		/*/---------- DELETE/*/
		
		sleep 120;
		{
			missionNamespace setVariable [
				'QS_analytics_entities_deleted',
				((missionNamespace getVariable 'QS_analytics_entities_deleted') + 1),
				FALSE
			];
			deleteVehicle _x;
		} forEach [_intelObj,_decoy1,_decoy2,_intelDriver,_obj1,_obj2,_obj3,_decoyDriver1,_decoyDriver2];
		{
			if (_x isEqualType objNull) then {
				0 = QS_garbageCollector pushBack [_x,'NOW_DISCREET',0];
			};
		} count _enemiesArray;
	};
	
	/*/------------------------------------------- THE INTEL WAS RECOVERED [SUCCESS]/*/
	
	if (missionNamespace getVariable 'QS_smSuccess') exitWith {
	
		sleep 0.3;
		
		/*/========== Replace unit with prisoner/*/
		
		if (alive _intelObj) then {
			[21,_intelObj,'',''] remoteExecCall ['QS_fnc_remoteExec',_intelObj,FALSE];
		};
		
		/*/---------- DE-BRIEF/*/
		
		['sideChat',[WEST,'HQ'],"Intel received. Mission accomplished! We're sending the data up to HQ for analysis."] remoteExec ['QS_fnc_remoteExecCmd',-2,FALSE];
		missionNamespace setVariable ['QS_sideMissionUp',FALSE,TRUE];
		[1,_flatPos] spawn (missionNamespace getVariable 'QS_fnc_smDebrief');
		{
			_x setMarkerPos [-5000,-5000,0];
			_x setMarkerAlpha 0;
		} count ['QS_marker_sideMarker','QS_marker_sideCircle'];	
		
		/*/---------- DELETE/*/

		sleep 120;
		{
			missionNamespace setVariable [
				'QS_analytics_entities_deleted',
				((missionNamespace getVariable 'QS_analytics_entities_deleted') + 1),
				FALSE
			];
			deleteVehicle _x;
		} forEach [_intelObj,_decoy1,_decoy2,_intelDriver,_obj1,_obj2,_obj3,_decoyDriver1,_decoyDriver2];
		{
			if (_x isEqualType objNull) then {
				0 = QS_garbageCollector pushBack [_x,'NOW_DISCREET',0];
			};
		} count _enemiesArray;
	};
	sleep 1;
};