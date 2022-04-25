/*
File: priorityARTY.sqf
Author:

	Quiksilver
	
Last modified:

	3/09/2017 A3 1.74 by Quiksilver
	
Description:

	-
__________________________________________________________________________*/

scriptName 'Side Mission - Artillery';
if ((count allPlayers) < 20) exitWith {};
if (worldName in ['Stratis']) exitWith {};
private ['_flatPos','_accepted','_unitsArray','_enemiesArray','_fuzzyPos','_briefing','_completeText','_baseMarker','_priorityTargets'];
missionNamespace setVariable ['QS_sideMission_enemyArray',[],FALSE];
_flatPos = [0,0,0];
_accepted = FALSE;
_baseMarker = markerPos 'QS_marker_base_marker';
for '_x' from 0 to 1 step 0 do {
	_flatPos = ['RADIUS',(missionNamespace getVariable 'QS_AOpos'),3500,'LAND',[5,0,0.2,5,0,FALSE,objNull],TRUE,[],[],TRUE] call (missionNamespace getVariable 'QS_fnc_findRandomPos');
	if ((_flatPos distance2D _baseMarker) > 2000) then {
		if ((_flatPos distance2D (missionNamespace getVariable 'QS_AOpos')) > 1200) then {
			_accepted = TRUE;
		};
	};
	if (_accepted) exitWith {};
};
_unitsArray = [_flatPos,(random 360),([] call (missionNamespace getVariable 'QS_data_artyPit'))] call (missionNamespace getVariable 'QS_fnc_serverObjectsMapper');
_priorityTargets = [];
{
	
	if (!isSimpleObject _x) then {
		if ((toLower (typeOf _x)) in [
			'o_mbt_02_arty_f','o_t_mbt_02_arty_ghex_f','i_truck_02_mrl_f'
		]) then {
			[0,_x,EAST,1] call (missionNamespace getVariable 'QS_fnc_vSetup2');
			_priorityTargets pushBack _x;
		};
	};
} forEach _unitsArray;
_enemiesArray = [_unitsArray select 0] call (missionNamespace getVariable 'QS_fnc_smEnemyEast');
_fuzzyPos = [((_flatPos select 0) - 300) + (random 600),((_flatPos select 1) - 300) + (random 600),0];
{
	_x setMarkerPos _fuzzyPos;
	_x setMarkerAlpha 1;
} count ['QS_marker_sideMarker','QS_marker_sideCircle'];
'QS_marker_sideMarker' setMarkerText (format ['%1Priority Target: Artillery',(toString [32,32,32])]);
[
	'QS_IA_TASK_SM_0',
	TRUE,
	[
		'The enemy has set up an Artillery Battery. Get over there and neutralize it before its too late! This objective is not accurately marked.',
		'Artillery Battery',
		'Artillery Battery'
	],
	(markerPos 'QS_marker_sideMarker'),
	'CREATED',
	5,
	FALSE,
	TRUE,
	'destroy',
	TRUE
] call (missionNamespace getVariable 'BIS_fnc_setTask');
_briefing = parseText "<t align='center' size='2.2'>Priority Target</t><br/><t size='1.5' color='#b60000'>Artillery</t><br/>____________________<br/>OPFOR forces are setting up an artillery battery to hit you guys damned hard! We've picked up their positions with thermal imaging scans and have marked it on your map.<br/><br/>This is a priority target, boys! They're just setting up now; they'll be firing in about five minutes!";
['hint',_briefing] remoteExec ['QS_fnc_remoteExecCmd',-2,FALSE];
['NewPriorityTarget',['Artillery']] remoteExec ['QS_fnc_showNotification',-2,FALSE];
missionNamespace setVariable ['QS_smSuccess',FALSE,TRUE];
waitUntil {
	sleep 5;
	(((_priorityTargets findIf {((canMove _x) && (alive _x))}) isEqualTo -1) || {(missionNamespace getVariable 'QS_smSuccess')})
};
_completeText = parseText "<t align='center' size='2.2'>Priority Target</t><br/><t size='1.5' color='#08b000'>NEUTRALISED</t><br/>____________________<br/>Incredible job, boys! Make sure you jump on those priority targets quickly; they can really cause havoc if they're left to their own devices.<br/><br/>Keep on with the main objective; we'll tell you if anything comes up.";
['hint',_completeText] remoteExec ['QS_fnc_remoteExecCmd',-2,FALSE];
['CompletedPriorityTarget',['Artillery Neutralized']] remoteExec ['QS_fnc_showNotification',-2,FALSE];
{
	_x setMarkerPos [-5000,-5000,0];
	_x setMarkerAlpha 0;
} count ['QS_marker_sideMarker','QS_marker_sideCircle'];
[1,_flatPos] spawn (missionNamespace getVariable 'QS_fnc_smDebrief');																
{
	if (alive _x) then {
		_x setDamage [1,TRUE];
	};
} forEach (missionNamespace getVariable ['QS_sideMission_enemyArray',[]]);
{
	0 = QS_garbageCollector pushBack [_x,'NOW_DISCREET',0];
} count _enemiesArray;
{
	0 = QS_garbageCollector pushBack [_x,'NOW_DISCREET',0];
} count _unitsArray;