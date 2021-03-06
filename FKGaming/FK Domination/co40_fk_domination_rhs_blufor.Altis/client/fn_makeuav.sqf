// by Xeno
//#define __DEBUG__
#define THIS_FILE "fn_makeuav.sqf"
#include "..\x_setup.sqf"

if (!hasInterface || {!alive player || {player getVariable ["xr_pluncon", false] || {player getVariable ["ace_isunconscious", false]}}}) exitWith {};

private _exitj = false;
if (d_with_ranked || {d_database_found}) then {
	if (score player < (d_ranked_a # 19)) then {
		[playerSide, "HQ"] sideChat format [localize "STR_DOM_MISSIONSTRING_76b", score player,d_ranked_a # 19];
		_exitj = true;
	} else {
		[player, (d_ranked_a # 19) * -1] remoteExecCall ["addScore", 2];
	};
};
if (_exitj) exitWith {};

if !(d_UAV_Terminal in (assignedItems player)) then {
	player setVariable ["d_has_gps", "ItemGPS" in (assignedItems player)];
	player linkItem d_UAV_Terminal;
};

private _uav = [getPosATL player, 0, d_UAV_Small, d_player_side, false, false, true] call bis_fnc_spawnVehicle;
__TRACE_1("","_uav")
_uav params ["_vecu", "_crew", "_grp"];

_grp deleteGroupWhenEmpty true;

_vecu allowCrewInImmobile true;

_vecu setVehicleReceiveRemoteTargets true;
_vecu setVehicleReportRemoteTargets true;
_vecu setVehicleRadar 1;

{
	_x setSkill ["spotDistance", 1];
} forEach _crew;	

player connectTerminalToUav _vecu;

player action ["UAVTerminalOpen"];

["a2", d_player_uid, _vecu] remoteExecCall ["d_fnc_p_o_ar", 2];

//diag_log ["UAVControl", UAVControl _vecu];

_vecu spawn {
	scriptName "spawn_makuav";
	params ["_uav"];
	__TRACE_1("spawn","_uav")
	private _exit_it = false;
	while {true} do {
		while {!isNull (findDisplay 160) && {!isNull (getConnectedUav player) && {alive player && {!(player getVariable ["xr_pluncon", false]) && {alive _uav && {!(player getVariable ["ace_isunconscious", false])}}}}}} do {
			sleep 1.1;
		};
		if ((isNull (findDisplay 160) && {(UAVControl _uav) # 1 == ""}) || {!alive player || {player getVariable ["xr_pluncon", false] || {!alive _uav || {player getVariable ["ace_isunconscious", false]}}}}) exitWith {};
		while {(UAVControl _uav) # 1 != "" && {alive player && {!(player getVariable ["xr_pluncon", false]) && {alive _uav && {!(player getVariable ["ace_isunconscious", false])}}}}} do {
			sleep 1.1;
		};
		if ((isNull (findDisplay 160) && {(UAVControl _uav) # 1 == ""}) || {!alive player || {player getVariable ["xr_pluncon", false] || {!alive _uav || {player getVariable ["ace_isunconscious", false]}}}}) exitWith {};
	};
	if (alive player && {!(player getVariable ["xr_pluncon", false]) && {player getVariable ["d_has_gps", false] && {!(player getVariable ["ace_isunconscious", false])}}}) then {
		player linkItem "ItemGPS";
		player setVariable ["d_has_gps", false];
	};
	
	if (!isNull _uav) then {
		["a2r", d_player_uid, _uav] remoteExecCall ["d_fnc_p_o_ar", 2];
	};
	{_uav deleteVehicleCrew _x} forEach (crew _uav);
	deleteVehicle _uav;
	(findDisplay 160) closeDisplay 1;
};
