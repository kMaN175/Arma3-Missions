/*/
File: fn_clientInteractSit.sqf
Author:

	Quiksilver
	
Last Modified:

	24/11/2017 A3 1.78 by Quiksilver
	
Description:

	Sit Down / Stand Up
_____________________________________________________________/*/

_type = _this select 3;
_chairTypes = [
	'Land_CampingChair_V1_F',
	'Land_CampingChair_V2_F',
	'Land_ChairPlastic_F',
	'Land_RattanChair_01_F',
	'Land_ChairWood_F',
	'Land_OfficeChair_01_F',
	'Land_ArmChair_01_F'
];
_chairModels = [
	'campingchair_v1_f.p3d',
	'campingchair_v2_f.p3d',
	'chairplastic_f.p3d',
	'rattanchair_01_f.p3d',
	'chairwood_f.p3d',
	'officechair_01_f.p3d',
	'armchair_01_f.p3d'
];
_sittingAnimations = [
	'HubSittingChairA_idle1','HubSittingChairA_idle2','HubSittingChairA_idle3',
	'HubSittingChairB_idle1','HubSittingChairB_idle2','HubSittingChairB_idle3',
	'HubSittingChairC_idle1','HubSittingChairC_idle2','HubSittingChairC_idle3',
	'HubSittingChairUA_idle1','HubSittingChairUA_idle2','HubSittingChairUA_idle3',
	'HubSittingChairUB_idle1','HubSittingChairUB_idle2','HubSittingChairUB_idle3',
	'HubSittingChairUC_idle1','HubSittingChairUC_idle2','HubSittingChairUC_idle3'
];
if (_type isEqualTo 0) then {
	if (!isNull (attachedTo player)) then {
		detach (attachedTo player);
	};
	_posInFront = player modelToWorldWorld [0,0.5,0];
	player setPosWorld _posInFront;
	if (!((stance player) isEqualTo 'STAND')) then {
		['switchMove',player,(player getVariable ['QS_seated_oldAnimState',''])] remoteExec ['QS_fnc_remoteExecCmd',0,FALSE];
	};
	if (!isNil {player getVariable 'QS_interact_actionStand'}) then {
		player removeAction (player getVariable 'QS_interact_actionStand');
		player setVariable ['QS_interact_actionStand',nil,FALSE];
	};
	player setVariable ['QS_seated_oldAnimState',nil,FALSE];
};
if (_type isEqualTo 1) then {
	_object = cursorObject;
	if ((player distance _object) > 2) exitWith {};
	if ((!((typeOf _object) in _chairTypes)) && {(!((toLower ((getModelInfo _object) select 0)) in _chairModels))}) exitWith {};
	if (!((attachedObjects _object) isEqualTo [])) exitWith {};
	if (!isNull (attachedTo _object)) exitWith {};
	if (!((stance player) isEqualTo 'STAND')) exitWith {};
	private _chairTaken = FALSE;
	_nearMen = (getPosATL _object) nearEntities ['Man',0.75];
	if (!(_nearMen isEqualTo [])) then {
		if ((count _nearMen) > 1) then {
			_chairTaken = TRUE;
		} else {
			if (!(player isEqualTo (_nearMen select 0))) then {
				_chairTaken = TRUE;
			};
		};
	};
	if (_chairTaken) exitWith {
		50 cutText ['Someone is too close to this chair!','PLAIN DOWN'];
	};
	if ((animationState player) in _sittingAnimations) exitWith {50 cutText ['Already seated!','PLAIN DOWN'];};
	
	if (local _object) then {
		_object setVectorUp [0,0,1];
	} else {
		[36.5,_object] remoteExecCall ['QS_fnc_remoteExec',_object,FALSE];
	};
	_sittingAnimation = selectRandom _sittingAnimations;
	if (simulationEnabled _object) then {
		[39,_object,FALSE,profileName,(getPlayerUID player)] remoteExecCall ['QS_fnc_remoteExec',2,FALSE];
	};
	player setVariable ['QS_seated_oldAnimState',(animationState player),FALSE];
	if (isMultiplayer) then {
		['switchMove',player,_sittingAnimation] remoteExec ['QS_fnc_remoteExecCmd',0,FALSE];
	} else {
		player switchMove _sittingAnimation;
	};
	private _attachY = -0.1;
	if (((typeOf _object) in ['Land_ArmChair_01_F']) || {((toLower ((getModelInfo _object) select 0)) in ['armchair_01_f.p3d'])}) then {
		_attachY = 0;
	};
	player attachTo [_object,[0,_attachY,0]];
	player setVariable [
		'QS_interact_actionStand',
		(player addAction ['Stand',(missionNamespace getVariable 'QS_fnc_clientInteractSit'),0,49,FALSE,TRUE,'','TRUE',-1,FALSE]),
		FALSE
	];
	player setUserActionText [(player getVariable 'QS_interact_actionStand'),((player actionParams (player getVariable 'QS_interact_actionStand')) select 0),(format ["<t size='3'>%1</t>",((player actionParams (player getVariable 'QS_interact_actionStand')) select 0)])];
	[_object] spawn {
		scriptName 'Seated thread';
		_object = _this select 0;
		detach player;
		player setDir ((getDir _object) - 180);
		uiSleep 0.05;
		if (((typeOf _object) in ['Land_RattanChair_01_F','Land_ArmChair_01_F']) || {((toLower ((getModelInfo _object) select 0)) in ['rattanchair_01_f.p3d','armchair_01_f.p3d'])}) then {
			private _playerPos = getPosWorld player;
			_playerPos set [2,((_playerPos select 2) - 1)];
			player setPosWorld _playerPos;
		};
		uiSleep 0.05;
		_animationState = animationState player;
		for '_x' from 0 to 1 step 0 do {
			if (!((animationState player) isEqualTo _animationState)) exitWith {player setVariable ['QS_seated_oldAnimState',nil,FALSE];};
			if ((player distance2D _object) > 1) exitWith {
				if ((animationState player) isEqualTo _animationState) then {
					[nil,nil,nil,0] call (missionNamespace getVariable 'QS_fnc_clientInteractSit');
				};
			};
			if (((vectorUp _object) select 2) < 0.5) exitWith {
				if ((animationState player) isEqualTo _animationState) then {
					[nil,nil,nil,0] call (missionNamespace getVariable 'QS_fnc_clientInteractSit');
				};
			};
			if (!alive _object) exitWith {
				if ((animationState player) isEqualTo _animationState) then {
					[nil,nil,nil,0] call (missionNamespace getVariable 'QS_fnc_clientInteractSit');
				};
			};
			if (!alive player) exitWith {player setVariable ['QS_seated_oldAnimState',nil,FALSE];};
			uiSleep 0.05;
		};
		if (!isNil {player getVariable 'QS_interact_actionStand'}) then {
			player removeAction (player getVariable 'QS_interact_actionStand');
			player setVariable ['QS_interact_actionStand',nil,FALSE];
		};
		if (!isNil {player getVariable 'QS_seated_oldAnimState'}) then {
			player setVariable ['QS_seated_oldAnimState',nil,FALSE];
		};
	};
};