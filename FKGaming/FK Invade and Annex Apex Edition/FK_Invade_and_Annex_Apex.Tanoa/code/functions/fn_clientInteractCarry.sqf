/*
File: fn_clientInteractCarry.sqf
Author:

	Quiksilver
	
Last Modified:

	10/11/2017 A3 1.76 by Quiksilver
	
Description:

	-
_____________________________________________________________*/

private ['_t','_anim','_dir'];
_t = cursorTarget;
if (!isNull (objectParent _t)) exitWith {};
if ((!(_t isKindOf 'CAManBase')) && (!([0,_t,objNull] call (missionNamespace getVariable 'QS_fnc_getCustomCargoParams')))) exitWith {};
if (_t getVariable ['QS_interaction_disabled',FALSE]) exitWith {
	50 cutText ['Interaction disabled on this object','PLAIN',0.3];
};
if (_t getVariable ['QS_unit_needsStabilise',FALSE]) exitWith {
	50 cutText ['Unit needs to be stabilised','PLAIN',0.3];
};
if (_t isKindOf 'CAManBase') then {
	if (!((currentWeapon player) isEqualTo '')) then {
		_onProgress = {
			FALSE
		};
		_onCancelled = {
			params ['_unit','_position'];
			private _c = FALSE;
			if (!alive player) then {_c = TRUE;};
			if (!alive _unit) then {_c = TRUE;};
			if ((player distance2D _position) > 4) then {_c = TRUE;};
			if (!isNull (attachedTo _unit)) then {_c = TRUE};
			if (!((lifeState _unit) isEqualTo 'INCAPACITATED')) then {_c = TRUE;};
			if (!((lifeState player) in ['HEALTHY','INJURED'])) then {_c = TRUE;};
			if ((!(_unit isEqualTo cursorObject)) && (!(_unit isEqualTo cursorTarget))) then {_c = TRUE;};
			if (!isNull (objectParent player)) then {_c = TRUE;};
			if (!isNull (objectParent _unit)) then {_c = TRUE;};
			_c;
		};
		_onCompleted = {
			params ['_unit'];
			[7.2,_unit,'ainjpfalmstpsnonwnondf_carried_dead',player,'acinpercmstpsnonwnondnon'] remoteExec ['QS_fnc_remoteExec',0,FALSE];
			player forceWalk TRUE;
			_unit attachTo [player,[0.1,-0.1,-1.2],'leftshoulder'];
			50 cutText [(format ['Carrying %1',(name _unit)]),'PLAIN DOWN',0.3];
		};
		_onFailed = {
			FALSE
		};
		[
			'Picking up ...',
			3,
			0,
			[[_t],{FALSE}],
			[[_t,(position _t)],_onCancelled],
			[[_t],_onCompleted],
			[[],{FALSE}]
		] spawn (missionNamespace getVariable 'QS_fnc_clientProgressVisualization');
	} else {
		50 cutText ['Need a weapon in hand to start carrying a person.','PLAIN DOWN',0.4];
	};
} else {
	//comment 'Crate carrying';
	if ([0,_t,objNull] call (missionNamespace getVariable 'QS_fnc_getCustomCargoParams')) then {
		if ([4,_t,(vehicle player)] call (missionNamespace getVariable 'QS_fnc_getCustomCargoParams')) then {
			if ((stance player) isEqualTo 'STAND') then {
				if (!((currentWeapon player) isEqualTo '')) then {
					player setVariable ['QS_RD_holsteredWeapon',(currentWeapon player),FALSE];
					player action ['SwitchWeapon',player,player,100];
					uiSleep 0.1;
				};
				_onProgress = {
					FALSE
				};
				_onCancelled = {
					params ['_entity','_position'];
					private _c = FALSE;
					if (!alive player) then {_c = TRUE;};
					if (!alive _entity) then {_c = TRUE;};
					if ((player distance2D _position) > 4) then {_c = TRUE;};
					if (!isNull (attachedTo _entity)) then {_c = TRUE};
					if (!((lifeState player) in ['HEALTHY','INJURED'])) then {_c = TRUE;};
					if ((!(_entity isEqualTo cursorObject)) && (!(_entity isEqualTo cursorTarget))) then {_c = TRUE;};
					if (!isNull (objectParent player)) then {_c = TRUE;};
					if (!isNull (objectParent _entity)) then {_c = TRUE;};
					if (!((stance player) isEqualTo 'STAND')) then {_c = TRUE;};
					if (!((currentWeapon player) isEqualTo '')) then {_c = TRUE;};
					_c;
				};
				_onCompleted = {
					params ['_entity'];
					player forceWalk TRUE;
					_entity attachTo [player,[0,0.5,1.1]];
					if ((toLower (typeOf _entity)) in [
						"land_plasticcase_01_medium_gray_f",
						"land_plasticcase_01_medium_idap_f",
						"land_plasticcase_01_small_gray_f",
						"land_plasticcase_01_small_idap_f",
						"land_plasticcase_01_medium_f",
						"land_plasticcase_01_small_f",
						"land_metalcase_01_medium_f",
						"land_metalcase_01_small_f"
					]) then {
						if (local _entity) then {
							_entity setDir 90;
						} else {
							['setDir',_entity,90] remoteExec ['QS_fnc_remoteExecCmd',[_entity,player],FALSE];
						};
					};
					50 cutText [(format ['Carrying a(n) %1',(_entity getVariable ['QS_ST_customDN',(getText (configFile >> 'CfgVehicles' >> (typeOf _entity) >> 'displayName'))])]),'PLAIN DOWN',0.3];
					[_entity] spawn {
						scriptName 'QS Interact Carry Monitor';
						params ['_entity'];
						private _exit = FALSE;
						for '_x' from 0 to 1 step 0 do {
							if (!(_entity in (attachedObjects player))) exitWith {};
							if (!((stance player) isEqualTo 'STAND')) then {_exit = TRUE;};
							if (!((currentWeapon player) isEqualTo '')) then {_exit = TRUE;};
							if (!((lifeState player) in ['HEALTHY','INJURED'])) then {_exit = TRUE;};
							if (_exit) exitWith {
								50 cutText ['Released','PLAIN DOWN',0.3];
								detach _entity;
								player forceWalk FALSE;
								if (_entity call (missionNamespace getVariable 'QS_fnc_isBoundingBoxIntersected')) then {
									_position = (position player) findEmptyPosition [0,10,(typeOf _entity)];
									if (!(_position isEqualTo [])) then {
										_entity setVectorUp (surfaceNormal _position);
										_entity setPos _position; /*/maybe setvehicleposition?/*/
										_entity allowDamage (_entity getVariable ['QS_isDamageAllowed',TRUE]);
										50 cutText ['Released','PLAIN DOWN',0.3];
									};
								};
							};
							uiSleep 0.1;
						};
						player forceWalk FALSE;
						uiSleep 0.1;
						if (local _entity) then {
							_entity setVelocity [0,0,-1];
						} else {
							['setVelocity',_entity,[0,0,-1]] remoteExec ['QS_fnc_remoteExecCmd',_entity,FALSE];
						};
					};
				};
				_onFailed = {
					FALSE
				};
				[
					'Picking up',
					2,
					0,
					[[_t],{FALSE}],
					[[_t,(position _t)],_onCancelled],
					[[_t],_onCompleted],
					[[],{FALSE}]
				] spawn (missionNamespace getVariable 'QS_fnc_clientProgressVisualization');
			} else {
				50 cutText ['Must be standing','PLAIN',0.3];
			};
		} else {
			50 cutText ['Object not carryable','PLAIN',0.3];
		};
	} else {
		50 cutText ['Object not carryable','PLAIN',0.3];
	};
};