/*
File: fn_clientInteractUtilityOffroad.sqf
Author:

	Credit: mindstorm, modified by Adanteh as original authors. This is a derivative function prepared by Quiksilver
	http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow
	
Last modified:
	
	7/10/2017 A3 1.76 by Quiksilver
	
Description:

	Police offroad
	
	if (isNil {_vehicle getVariable 'Utility_Offroad_Beacons'}) exitWith {
	_vehicle setVariable ['Utility_Offroad_Beacons',TRUE,TRUE];
	[23,_vehicle] remoteExec ['QS_fnc_remoteExec',-2,FALSE];
};
if (((_vehicle animationPhase 'hidePolice') isEqualTo 1) && ((_vehicle animationPhase 'hideServices') isEqualTo 1) && ((_vehicle animationSourcePhase 'beacon_front_hide') isEqualTo 1)) exitWith {};
_______________________________________________________*/

_vehicle = vehicle player;
if (!alive _vehicle) exitWith {};
if (_vehicle getVariable ['Utility_Offroad_Beacons',FALSE]) then {
	_vehicle setVariable['Utility_Offroad_Beacons',FALSE,TRUE];
} else {
	[23,_vehicle] remoteExec ['QS_fnc_remoteExec',-2,FALSE];
};