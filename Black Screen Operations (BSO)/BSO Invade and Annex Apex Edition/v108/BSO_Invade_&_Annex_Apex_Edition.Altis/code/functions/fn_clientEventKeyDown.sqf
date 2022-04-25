/*/ 
File: fn_clientEventKeyDown.sqf 
Author:
	
	Quiksilver 	 
	
Last Modified:  	

	20/06/2017 A3 1.70 by Quiksilver  
	
Description:  	

	Client Event Key Down 
__________________________________________________________/*/  

_key = _this select 1; 
private _c = FALSE; 
player setVariable ['QS_client_afkTimeout',time,FALSE]; 
if (_key isEqualTo 5) then { 	
	if (commandingMenu isEqualTo '') then {
		if (isNull (objectParent player)) then {
			if (isNull (attachedTo player)) then {
				if (!captive player) then {
					if (((attachedObjects player) findIf {((!isNull _x) && (!(_x isKindOf 'Sign_Sphere10cm_F')))}) isEqualTo -1) then {
						call (missionNamespace getVariable 'QS_fnc_clientHolster');
					};
				};
			};
		};
		_c = TRUE;
	};
};
if (_key isEqualTo 199) then {
	if (isNull (findDisplay 2000)) then {
		[0] call (missionNamespace getVariable 'QS_fnc_clientMenu');
	} else {
		[-1] call (missionNamespace getVariable 'QS_fnc_clientMenu');
	};
};
if (_key in [197,207]) then {
	[] call (missionNamespace getVariable 'QS_fnc_clientEarplugs');
};
if (_key in (actionKeys 'GetOver')) then {
	if (isNull (objectParent player)) then {
		if (((attachedObjects player) findIf {((!isNull _x) && (!(_x isKindOf 'Sign_Sphere10cm_F')))}) isEqualTo -1) then {
			if (_this select 2) then {
				_c = TRUE;
				_this call (missionNamespace getVariable 'QS_fnc_clientJump');
			};
		} else {
			_c = TRUE;
		};
	};
};
if (_key in ((actionKeys 'Throw') + (actionKeys 'Put'))) then {
	if (isNull (objectParent player)) then {
		if (!(unitIsUav cameraOn)) then {
			if ((cameraOn distance (markerPos 'QS_marker_base_marker')) < 300) then {
				50 cutText ['Do not throw grenades near base, please!','PLAIN DOWN'];
				_c = TRUE;
			};
		};
	};
};
if (_key in (actionKeys 'PushToTalk')) then {
	if (!(currentChannel isEqualTo 5)) then {
		if ('ItemRadio' in (assignedItems player)) then {
			if (currentChannel in [0,1,6]) then {
				if (!((getPlayerUID player) in (['ALL'] call (missionNamespace getVariable 'QS_fnc_whitelist')))) then {
					if (!(player getUnitTrait 'QS_trait_HQ')) then {
						setCurrentChannel 5;
						50 cutText ['Use General channel for general voice communications. Press [Home] >> [Comm-Link] >> [Radio Management] to subscribe.','PLAIN DOWN'];
						_c = TRUE;
					};
				};
			} else {
				if (currentChannel isEqualTo 7) then {
					if (!(player getUnitTrait 'QS_trait_pilot')) then {
						if (!(player getUnitTrait 'uavhacker')) then {
							if (!(player getUnitTrait 'QS_trait_HQ')) then {
								if (!((getPlayerUID player) in (['ALL'] call (missionNamespace getVariable 'QS_fnc_whitelist')))) then {
									setCurrentChannel 5;
									50 cutText ['Only Pilots and UAV Operator can transmit voice on Aircraft channel','PLAIN DOWN'];
									_c = TRUE;
								};
							};
						};
					};
				};
			};
		} else {
			setCurrentChannel 5;
			50 cutText ['You need a Radio item to transmit over radio channels!','PLAIN DOWN'];
			_c = TRUE;
		};
	};
};
if (_key in (actionKeys 'PushToTalkSide')) then {
	if (!(player getUnitTrait 'QS_trait_HQ')) then {
		_c = TRUE;
	};
};
if (_key in ((actionKeys 'PersonView') + (actionKeys 'TacticalView') + (actionKeys 'ForceCommandingMode'))) then {
	if ((player getVariable 'QS_1PV') select 0) then {
		_c = TRUE;
	};
	if (!isNull cameraOn) then {
		if ((side cameraOn) in [EAST,RESISTANCE,sideEnemy]) then {
			if (cameraView isEqualTo 'INTERNAL') then {
				_c = TRUE;
			};
		};
	};
};
if (_key in (actionKeys 'AutoHover')) then {
	_v = vehicle player;
	if (_v isKindOf 'Helicopter') then {
		if (!(isAutoHoverOn _v)) then {
			if (((count (crew _v))) > 1) then {
				if (diag_tickTime > (player getVariable ['QS_client_lastAutoHoverMsg',-1])) then {
					player setVariable ['QS_client_lastAutoHoverMsg',(diag_tickTime + 5),FALSE];
					_arrayToSend = (crew _v) select {((!(_x isEqualTo player)) && (alive _x) && (isPlayer _x))};
					if (!(_arrayToSend isEqualTo [])) then {
						[63,[5,[(format ['Your pilot ( %1 ) has turned on autohover!',profileName]),'PLAIN DOWN',0.3]]] remoteExec ['QS_fnc_remoteExec',_arrayToSend,FALSE];
					};
				};
			};
		};
	};
};
if (_key isEqualTo 60) then {
	if (_this select 2) then {
		if (alive player) then {
			if (!((lifeState player) isEqualTo 'INCAPACITATED')) then {
				['KeyDown'] call (missionNamespace getVariable 'QS_fnc_clientMenuStaff');
				_c = TRUE;
			};
		};
	};
};
if (_key isEqualTo 61) then {
	if (_this select 2) then {
		if (alive player) then {
			if (!((lifeState player) isEqualTo 'INCAPACITATED')) then {
				['Curator'] call (missionNamespace getVariable 'QS_fnc_clientMenuStaff');
				_c = TRUE;
			};
		};
	};
};
if (_key in (actionKeys 'ReloadMagazine')) then {
	if (_this select 3) then {
		if ((isNull (objectParent player)) || {(!(player isEqualTo (driver (vehicle player))))}) then {
			if (((attachedObjects player) findIf {((!isNull _x) && (!(_x isKindOf 'Sign_Sphere10cm_F')))}) isEqualTo -1) then {
				if (cameraOn isEqualTo player) then {
					player spawn (missionNamespace getVariable 'QS_fnc_clientRepackMagazines');
				} else {
					if (alive cameraOn) then {
						if (cameraOn isKindOf 'CAManBase') then {
							if (local cameraOn) then {
								cameraOn spawn (missionNamespace getVariable 'QS_fnc_clientRepackMagazines');
							};
						};
					};
				};
				_c = TRUE;
			};
		};
	};
};
if (_key in (actionKeys 'VehLockTargets')) then {};
if (_key in (actionKeys 'Zeus')) then {}; 
if (_this select 3) then {
	if (_key in [0x4C,0x4B,0x47,0x48,0x49,0x4D,0x51]) then {
		if (isNull (objectParent player)) then {
			if ((stance player) in ['STAND','CROUCH']) then {
				if (!(captive player)) then {
					if ((lifeState player) in ['HEALTHY','INJURED']) then {
						if (time > (player getVariable ['QS_client_lastGesture',time])) then {
							player setVariable ['QS_client_lastGesture',(time + 3),FALSE];
							private _order = '';
							if (_key isEqualTo 0x4C) exitWith {
								player playActionNow (selectRandom ['gestureNo']);
								50 cutText ['"No"','PLAIN DOWN',0.1];
							};
							if (_key isEqualTo 0x4B) exitWith {
								player playActionNow (selectRandom ['gestureGo']);
								50 cutText ['"Go"','PLAIN DOWN',0.1];
								_order = '"Go!" - (Group order)';
							};
							if (_key isEqualTo 0x47) exitWith {
								player playActionNow (selectRandom ['gesturePoint','gestureAdvance']);
								50 cutText ['"Advance"','PLAIN DOWN',0.1];
								_order = '"Advance!" - (Group order)';
							};
							if (_key isEqualTo 0x48) exitWith {
								player playActionNow (selectRandom ['gestureNod']);
								50 cutText ['"Nod"','PLAIN DOWN',0.1];
							};
							if (_key isEqualTo 0x49) exitWith {
								player playActionNow (selectRandom ['gestureFreeze']);
								50 cutText ['"Freeze"','PLAIN DOWN',0.1];
								_order = '"Hold!" - (Group order)';
							};
							if (_key isEqualTo 0x4D) exitWith {
								player playActionNow (selectRandom ['gestureHi']);
								50 cutText ['"Hi"','PLAIN DOWN',0.1];
							};
							if (_key isEqualTo 0x51) exitWith {
								player playActionNow (selectRandom ['gestureCeaseFire']);
								50 cutText ['"Ceasefire"','PLAIN DOWN',0.1];
								_order = '"Ceasefire!" - (Group order)';
							};
							if (isNull (objectParent player)) then {
								if ((count (units (group player))) > 1) then {
									if (player isEqualTo (leader (group player))) then {
										if (!(_order isEqualTo '')) then {
											_arrayToSend = (units (group player)) select {(((_x distance player) < 45) && (alive _x) && ((lifeState _x) in ['HEALTHY','INJURED']) && (isPlayer _x))};
											if (!(_arrayToSend isEqualTo [])) then {
												[63,[5,[(format ['%1 (Group leader) - %2',profileName,_order]),'PLAIN DOWN',0.333]]] remoteExec ['QS_fnc_remoteExec',_arrayToSend,FALSE];
											};
										};
									};
								};
							};
						};
						_c = TRUE;
					};
				};
			};
		};
	};
};
if (_key in (actionKeys 'TacticalPing')) then {};
if (_key isEqualTo 15) then {
	if ((vehicle player) isKindOf 'Helicopter') then {
		if (player isEqualTo (effectiveCommander (vehicle player))) then {
			if (isNil {player getVariable 'QS_pilot_rappellSafety'}) then {
				player setVariable ['QS_pilot_rappellSafety',TRUE,FALSE];
				if (isNil {(vehicle player) getVariable 'QS_rappellSafety'}) then {
					(vehicle player) setVariable ['QS_rappellSafety',TRUE,TRUE];
					50 cutText ['Fastrope disabled','PLAIN DOWN',1];
				} else {
					(vehicle player) setVariable ['QS_rappellSafety',nil,TRUE];
					50 cutText ['Fastrope enabled','PLAIN DOWN',1];
				};
				0 spawn {
					uiSleep 4.5;
					player setVariable ['QS_pilot_rappellSafety',nil,FALSE];
				};
			};
		};
	};
};
if (_key isEqualTo 25) then {
	if (_this select 2) then {
		_DLCsOwned = getDLCs 1;
		if ((304400 in _DLCsOwned) || {((288520 in _DLCsOwned) && (304380 in _DLCsOwned) && (332350 in _DLCsOwned))}) then {
			if (scriptDone QS_script_closeDLCs) then {
				QS_script_closeDLCs = 0 spawn {
					_t = time + 1;
					waitUntil {
						(time > _t) ||
						(!isNull (findDisplay 174))
					};
					if (!isNull (findDisplay 174)) then {
						(findDisplay 174) closeDisplay 2;
					};
				};
			};
		};
	};
};
if (_key isEqualTo 0x39) then {
	if (diag_tickTime > (missionNamespace getVariable ['QS_interact_doorLastOpenTime',(diag_tickTime - 1)])) then {
		missionNamespace setVariable ['QS_interact_doorLastOpenTime',(diag_tickTime + 1),FALSE];
		private _val = 2;
		if (cameraView isEqualTo 'EXTERNAL') then {
			_val = 4.55;
		};
		_c = _val call (missionNamespace getVariable 'QS_fnc_clientInteractDoor');
	};
};
if (_key in (actionKeys 'NavigateMenu')) then {
	if (commandingMenu isEqualTo '') then {
		if (missionNamespace getVariable ['QS_missionStatus_shown',FALSE]) then {
			missionNamespace setVariable ['QS_missionStatus_shown',FALSE,FALSE];
		} else {
			missionNamespace setVariable ['QS_missionStatus_shown',TRUE,FALSE];
		};
		_c = TRUE;
	};
};
if (_key in (actionKeys 'TeamSwitch')) then {
	if (!(_this select 2)) then {
		if (!(_this select 3)) then {
			if (isNil {uiNamespace getVariable 'BIS_dynamicGroups_keyDownTime'}) then {
				uiNamespace setVariable ['BIS_dynamicGroups_keyDownTime',time];
				uiNamespace setVariable ['BIS_dynamicGroups_ignoreInterfaceOpening',nil];
			};
			['UpdateKeyDown'] call (missionNamespace getVariable 'BIS_fnc_dynamicGroups');
			_c = TRUE;
		};
	};
};
if (_key in (actionKeys 'help')) then {
	if ((!(_this select 2)) && (!(_this select 3)) && (!(_this select 4))) then {
		missionNamespace setVariable ['BIS_fnc_advHint_HPressed',TRUE,FALSE];
		missionNamespace setVariable ['BIS_fnc_advHint_RefreshCtrl',TRUE,FALSE];
		[TRUE] call (missionNamespace getVariable 'BIS_fnc_AdvHintCall');
		_c = TRUE;
	};
};
_c;